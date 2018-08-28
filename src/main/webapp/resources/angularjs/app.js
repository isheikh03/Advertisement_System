//var app = angular.module("myApp", ["ngRoute"]);
app.config(function($routeProvider) {
    $routeProvider
    .when("/main", {
        templateUrl : "main"
    })
    .when("/adminreg", {
        templateUrl : "adminreg"
    })
//    .when("/area", {
//        templateUrl : "adminarea"
//    })
    .when("/categories", {
        templateUrl : "categories"
    })
    .when("/house", {
        templateUrl : "house"
    })
    .when("/car", {
        templateUrl : "car"
    })
    .when("/office", {
        templateUrl : "office"
    })
    .when("/others", {
        templateUrl : "others"
    })
    .when("/userinfo", {
        templateUrl : "userinfo"
    })
    .when("/postinfo", {
        templateUrl : "postinfo"
    })
    .when("/division", {
        templateUrl : "division"
    })
    .when("/district", {
        templateUrl : "district"
    })
    .otherwise({redirectTo:'main'});
});