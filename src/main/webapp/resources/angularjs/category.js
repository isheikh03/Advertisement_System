app.factory('Category', ['$resource', function ($resource) {
    return $resource('categoryc/:categoryId', {categoryId : '@categoryId'},
	{
		updateCategory: {method: 'PUT'}
	}
    );
}]);

app.controller('CategoryController', ['$scope', 'Category', function($scope, Category) {
    var ob = this;
    ob.categories=[];
    ob.category = new Category(); 
    ob.fetchAllCategories = function(){
        ob.categories = Category.query();
    };
    ob.fetchAllCategories();
    ob.addCategory = function(){
	console.log('Inside save');
	if($scope.categoryForm.$valid) {
	  ob.category.$save(function(category){
	     console.log(category); 
	     ob.flag= 'created';	
	     ob.reset();	
	     ob.fetchAllCategories();
	  },
	  function(err){
	     console.log(err.status);
	     ob.flag='failed';
	  }
          );
        }
    }; 
    
    
    ob.editCategory = function(categoryId){
	    console.log('Inside edit');
        ob.category = Category.get({ categoryId: categoryId}, function() {
	       ob.flag = 'edit'; 
	    });
    }; 
    
    
    ob.updateCategoryDetail = function(){
	console.log('Inside update');
	if($scope.categoryForm.$valid) {
    	   ob.category.$updateCategory(function(category){
    		console.log(category); 
		ob.updatedCategoryId = category.categoryId;
				ob.reset();
		ob.flag = 'updated'; 
    		ob.fetchAllCategories();
           });
	}
    };	
    
    
    ob.deleteCategory = function(categoryId){
	    console.log('Inside delete');
	    ob.category = Category.delete({ categoryId: categoryId}, function() {
		ob.reset();  
		ob.flag = 'deleted';
    		ob.fetchAllCategories(); 
	    });
    };
    
    ob.reset = function(){
    	ob.category = new Category();
        $scope.categoryForm.$setPristine();
    };	
    
    
    ob.cancelUpdate = function(categoryId){
	    ob.category = new Category();
	    ob.flag= '';	
   	    ob.fetchAllCategories();
    };    
}]);    
   


