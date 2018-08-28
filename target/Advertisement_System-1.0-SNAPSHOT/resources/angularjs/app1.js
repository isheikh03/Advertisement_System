//var app = angular.module("myApp", ["ngRoute"]);
app.config(function ($routeProvider) {
    $routeProvider
            .when("/index", {
                templateUrl: "index"
            })
            .when("/about", {
                templateUrl: "about"
            })
            .when("/ads-details", {
                templateUrl: "ads-details"
            })
            .when("/u_car", {
                templateUrl: "u_car"
            })
            .when("/u_house", {
                templateUrl: "u_house"
            })
            .when("/contact", {
                templateUrl: "contact"
            })
            .when("/forgot-password", {
                templateUrl: "forgot-password"
            })
            .when("/u_others", {
                templateUrl: "u_others"
            })
            .when("/u_office", {
                templateUrl: "u_office"
            })
            .when("/post-ads", {
                templateUrl: "post-ads"
            })
            .when("/login", {
                templateUrl: "login"
            })
            .when("/signup", {
                templateUrl: "signup"
            })
            .otherwise({redirectTo: 'index'});
});