app.factory('Division', ['$resource', function ($resource) {
    return $resource('divisionx/:divisionId', {divisionId : '@divisionId'},
	{
		updateDivision: {method: 'PUT'}
	}
    );
}]);

app.controller('DivisionController', ['$scope', 'Division', function($scope, Division) {
    var ob = this;
    ob.divisions=[];
    ob.division = new Division(); 
    ob.fetchAllDivisions = function(){
        ob.divisions = Division.query();
    };
    ob.fetchAllDivisions();
    ob.addDivision = function(){
	console.log('Inside save');
	if($scope.divisionForm.$valid) {
	  ob.division.$save(function(division){
	     console.log(division); 
	     ob.flag= 'created';	
	     ob.reset();	
	     ob.fetchAllDivisions();
	  },
	  function(err){
	     console.log(err.status);
	     ob.flag='failed';
	  }
          );
        }
    }; 
    
    
    ob.editDivision = function(divisionId){
	    console.log('Inside edit');
        ob.division = Division.get({ divisionId: divisionId}, function() {
	       ob.flag = 'edit'; 
	    });
    }; 
    
    
    ob.updateDivisionDetail = function(){
	console.log('Inside update');
	if($scope.divisionForm.$valid) {
    	   ob.division.$updateDivision(function(division){
    		console.log(division); 
		ob.updatedDivisionId = division.divisionId;
				ob.reset();
		ob.flag = 'updated'; 
    		ob.fetchAllDivisions();
           });
	}
    };	
    
    
    ob.deleteDivision = function(divisionId){
	    console.log('Inside delete');
	    ob.division = Division.delete({ divisionId: divisionId}, function() {
		ob.reset();  
		ob.flag = 'deleted';
    		ob.fetchAllDivisions(); 
	    });
    };
    
    ob.reset = function(){
    	ob.division = new Division();
        $scope.divisionForm.$setPristine();
    };	
    
    
    ob.cancelUpdate = function(divisionId){
	    ob.division = new Division();
	    ob.flag= '';	
   	    ob.fetchAllDivisions();
    };    
}]);    
   


