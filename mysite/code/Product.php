<?php
class Product extends Page {

	private static $db = array(
	);

	private static $has_one = array(
		'Photo' => 'Image',
		'Manual_Installation' => 'File',
		'Manual_Programmation' => 'File',
		'Specification_Sheet' => 'File'
	);

	private static $allowed_children = array(
		'Article'
	);
	private static $can_be_root = false;
	public function getCMSfields() {
		$fields = parent::getCMSfields();

		$fields->addFieldToTab('Root.Main', UploadField::create('Photo'));
		$fields->addFieldToTab('Root.Main', UploadField::create('Manual_Installation', 'Manual Installation'));
		$fields->addFieldToTab('Root.Main',  UploadField::create('Manual_Programmation', 'Manual Programmation'));
		$fields->addFieldToTab('Root.Main',  UploadField::create('Specification_Sheet', 'Specification Sheet'));
		
		return $fields;
	}
	public function getCategories() {
		$articles = Article::get()->filter(array('ParentID' => $this->ID));
		$categories = array();
		foreach($articles as $article) {
			 $categorie = $article->Category;
			 $categorie_class = $this->getCategoryClass($categorie);
   			 $categories[$categorie] = "<a href=\"#filter-$categorie_class\" data-filter=\"$categorie_class\" class=\"btn btn-large btn-warmupedia $categorie_class \"> <i class=\"glyphicon glyphicon-filter\"></i>  " . $categorie . "</a>";
			 if($article->Video) {
			 	 $categories['video'] = "<a href=\"#filter-video\" data-filter=\"cat-video\" class=\"btn btn-large btn-warmupedia cat-video \"> <i class=\"glyphicon glyphicon-filter\"></i>  " . 'Video' . "</a>";
	
			 }
		}
		
		
		return  implode(' ', $categories) ;
	}
	function getCategoryClass($cat) {
		$map =  array(
			'Installation' => 'cat-inst',
			'Programmation' => 'cat-prog',
			'Wiring'  => 'cat-wir',
			'Preparing for your project'  => 'cat-prep',
			'Troubleshooting' => 'cat-troub',
			'Miscellaneous Questions' => 'cat-misc'
		);
		
		return $map[$cat];
	}
}
class Product_Controller extends Page_Controller {

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

		Requirements::javascript("themes/warmupedia/javascript/products-filter.js");
        
	}

}
