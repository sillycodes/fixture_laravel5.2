

angular.module('comman', [])
        .controller('baseController', function ($scope, $http, $rootScope, $location, restClientService) {
            restClientService.getTeams()
                    .then(function (res) {
                        $scope.teams = res.data;

                    }, function (err) {
                        console.log("Error:", err);
                    });
//
//            $scope.goto = function (path) {
//                $location.path(path);
//            };
        });
angular.module('bootstrap', [])
        .controller('bootstrapController', function ($scope, $http, $rootScope, $location) {
            $scope.goto = function (path) {
                $location.path(path);
            };
        });
angular.module('teamList', [])
        .directive('teamList', function () {
            return{
                templateUrl: "ngApp/partials/team-list.html"
//                template:"<h3>Bikash</h3>"
            };
        });

