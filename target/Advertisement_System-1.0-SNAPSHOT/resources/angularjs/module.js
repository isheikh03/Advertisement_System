var app = angular.module('myApp', [ 'ngRoute', 'ngResource' ]);

app.run([ '$rootScope', '$log', function($rootScope, $log) {
	$rootScope._ = window._;
} ]);
