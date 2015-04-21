<?php
class Article extends Page {

	private static $db = array(
		'Category' => 'Varchar(100)',
		'Teaser' => 'HTMLText',
		'Video' => 'Boolean',
		'Picture' => 'Boolean'

	);

	static $has_one = array(
		
	);

	private static $can_be_root = false;

	public function getCMSfields() {
		$fields = parent::getCMSfields();
		$fields->addFieldToTab('Root.Main', HtmlEditorField::create('Teaser','Teaser')->setRightTitle('Please limit your description to two or three sentences'), 'Content');
		$components = DropdownField::create('Category', 'Category', array(
			'Installation' => 'Installation',
			'Programming' => 'Programming',
			'Wiring'  => 'Wiring',
			'Preparing for your project'  => 'Preparing for your project',
			'Troubleshooting' => 'Troubleshooting',
			'Miscellaneous Questions' => 'Miscellaneous Questions'))->setEmptyString('(Select one)');
		$fields->addFieldToTab('Root.Main', $components,'Content');
		$fields->addFieldToTab("Root.Main", new CheckboxField ("Video","Video"), "Category");
		$fields->addFieldToTab("Root.Main", new CheckboxField ("Picture","Contains one or more pictures"), "Category");
		return $fields;
	}
	function getCMSValidator() {
		return new RequiredFields(array('Category','Teaser'));
	}
	public function getCategoryClass() {
		$map =  array(
			'Installation' => 'cat-inst',
			'Programmation' => 'cat-prog',
			'Wiring'  => 'cat-wir',
			'Preparing for your project'  => 'cat-prep',
			'Troubleshooting' => 'cat-troub',
			'Miscellaneous Questions' => 'cat-misc'
		);
		
		return $map[$this->Category];
	}
	public function isCurrent() {

	}
}
class Article_Controller extends Page_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();

		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
		Requirements::set_force_js_to_bottom(true);
		Requirements::javascript("themes/warmupedia/javascript/jq-sticky-anything.min.js");
		Requirements::javascript("themes/warmupedia/javascript/article.js");
	}

}
