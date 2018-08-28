/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

app.factory('District', ['$resource', function ($resource) {
    return $resource('districtd/:districtId', {districtId : '@districtId'},
	{
		updateDistrict: {method: 'PUT'}
	}
    );
}]);

app.controller('DistrictController', ['$scope', 'District', function($scope, District) {
    var ob = this;
    ob.districts=[];
    ob.district = new District(); 
    ob.fetchAllDistricts = function(){
        ob.districts = District.query();
    };
    ob.fetchAllDistricts();
    ob.addDistrict = function(){
	console.log('Inside save');
	if($scope.districtForm.$valid) {
	  ob.district.$save(function(district){
	     console.log(district); 
	     ob.flag= 'created';	
	     ob.reset();	
	     ob.fetchAllDistricts();
	  },
	  function(err){
	     console.log(err.status);
	     ob.flag='failed';
	  }
          );
        }
    }; 
    
    
    ob.editDistrict = function(districtId){
	    console.log('Inside edit');
        ob.district = District.get({ districtId: districtId}, function() {
	       ob.flag = 'edit'; 
	    });
    }; 
    
    
    ob.updateDistrictDetail = function(){
	console.log('Inside update');
	if($scope.districtForm.$valid) {
    	   ob.district.$updateDistrict(function(district){
    		console.log(district); 
		ob.updatedDistrictId = district.districtId;
				ob.reset();
		ob.flag = 'updated'; 
    		ob.fetchAllDistricts();
           });
	}
    };	
    
    
    ob.deleteDistrict = function(districtId){
	    console.log('Inside delete');
	    ob.district = District.delete({ districtId: districtId}, function() {
		ob.reset();  
		ob.flag = 'deleted';
    		ob.fetchAllDistricts(); 
	    });
    };
    
    ob.reset = function(){
    	ob.district = new District();
        $scope.districtForm.$setPristine();
    };	
    
    
    ob.cancelUpdate = function(districtId){
	    ob.district = new District();
	    ob.flag= '';	
   	    ob.fetchAllDistricts();
    };    
}]);    
   