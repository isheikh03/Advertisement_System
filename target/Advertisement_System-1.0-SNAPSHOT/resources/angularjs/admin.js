
//'use strict';
//var app = angular.module('myApp', ['ngResource']);

app.factory('Admin', ['$resource', function ($resource) {
    return $resource('admina/:adminId', {adminId : '@adminId'},
	{
		updateAdmin: {method: 'PUT'}
	}
    );
}]);

app.controller('AdminController', ['$scope', 'Admin', function($scope, Admin) {
    var ob = this;
    ob.admins=[];
    ob.admin = new Admin(); 
    ob.fetchAllAdmins = function(){
        ob.admins = Admin.query();
    };
    ob.fetchAllAdmins();
    ob.addAdmin = function(){
	console.log('Inside save');
	if($scope.adminForm.$valid) {
	  ob.admin.$save(function(admin){
	     console.log(admin); 
	     ob.flag= 'created';	
	     ob.reset();	
	     ob.fetchAllAdmins();
	  },
	  function(err){
	     console.log(err.status);
	     ob.flag='failed';
	  }
          );
        }
    }; 
    
    
    ob.editAdmin = function(adminId){
	    console.log('Inside edit');
        ob.admin = Admin.get({ adminId: adminId}, function() {
	       ob.flag = 'edit'; 
	    });
    }; 
    
    
    ob.updateAdminDetail = function(){
	console.log('Inside update');
	if($scope.adminForm.$valid) {
    	   ob.admin.$updateAdmin(function(admin){
    		console.log(admin); 
		ob.updatedAdminId = admin.adminId;
				ob.reset();
		ob.flag = 'updated'; 
    		ob.fetchAllAdmins();
           });
	}
    };	
    
    
    ob.deleteAdmin = function(adminId){
	    console.log('Inside delete');
	    ob.admin = Admin.delete({ adminId: adminId}, function() {
		ob.reset();  
		ob.flag = 'deleted';
    		ob.fetchAllAdmins(); 
	    });
    };
    
    ob.reset = function(){
    	ob.admin = new Admin();
        $scope.adminForm.$setPristine();
    };	
    
    
    ob.cancelUpdate = function(adminId){
	    ob.admin = new Admin();
	    ob.flag= '';	
   	    ob.fetchAllAdmins();
    };    
}]);    
   