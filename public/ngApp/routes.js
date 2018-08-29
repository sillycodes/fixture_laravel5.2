/**
* Routes Module;
*
* Description
*/
angular.module('routes', ['ngRoute']) 
.config(function ($routeProvider) {
 
    $routeProvider.when('/', {
//        controller: 'baseController',
        templateUrl: 'ngApp/partials/home.html'
    }).when('/team', {
        controller: 'baseController',
        templateUrl: 'ngApp/partials/team-list.html'
    }).when('/fixture', {
        controller: 'fixtureController',
        templateUrl: 'ngApp/partials/fixture.html'
    });
    
});


