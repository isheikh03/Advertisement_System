
//'use strict';
//var app = angular.module('myApp', ['ngResource']);

app.factory('PostInfo', ['$resource', function ($resource) {
    return $resource('postInfoa/:postId', {adminId : '@postId'},
	{
		updatePostInfo: {method: 'PUT'}
	}
    );
}]);

app.controller('PostInfoController', ['$scope', 'PostInfo', function($scope, PostInfo) {
    var ob = this;
    ob.postInfos=[];
    ob.postInfo = new PostInfo(); 
    ob.fetchAllPostInfos = function(){
        ob.postInfos = PostInfo.query();
    };
    ob.fetchAllPostInfos();
    ob.addPostInfo = function(){
	console.log('Inside save');
	if($scope.postInfoForm.$valid) {
	  ob.postInfo.$save(function(postInfo){
	     console.log(postInfo); 
	     ob.flag= 'created';	
	     ob.reset();	
	     ob.fetchAllPostInfos();
	  },
	  function(err){
	     console.log(err.status);
	     ob.flag='failed';
	  }
          );
        }
    }; 
    
    
    ob.editPostInfo = function(postId){
	    console.log('Inside edit');
        ob.postInfo = PostInfo.get({ postId: postId}, function() {
	       ob.flag = 'edit'; 
	    });
    }; 
    
    
    ob.updatePostInfoDetail = function(){
	console.log('Inside update');
	if($scope.postInfoForm.$valid) {
    	   ob.postInfo.$updatePostInfo(function(postInfo){
    		console.log(postInfo); 
		ob.updatedPostInfoId = postInfo.postId;//may be need to change
				ob.reset();
		ob.flag = 'updated'; 
    		ob.fetchAllPostInfos();
           });
	}
    };	
    
    
    ob.deletePostInfo = function(postId){
	    console.log('Inside delete');
	    ob.postInfo = PostInfo.delete({ postId: postId}, function() {
		ob.reset();  
		ob.flag = 'deleted';
    		ob.fetchAllPostInfos(); 
	    });
    };
    
    ob.reset = function(){
    	ob.postInfo = new PostInfo();
        $scope.postInfoForm.$setPristine();
    };	
    
    
    ob.cancelUpdate = function(postId){
	    ob.postInfo = new PostInfo();
	    ob.flag= '';	
   	    ob.fetchAllPostInfos();
    };    
}]);    
   