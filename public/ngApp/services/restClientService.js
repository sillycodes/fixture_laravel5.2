(function () {
    'use strict';
    angular.module('restClientService', ['ui.router'])
            .factory("restClientService", function ($q, $http, $httpParamSerializer) {
                var __c = "wNl56SCc6KfTNaLH360bjrnqgMNRW5KpB0xh1oQZDSWpzlbtsOnNyW6Z6IF57JhnmOTnIZsdpeZY81fix67Nb065QP287bAbjTcy";
                return {
                    getTeams: getTeams,
                    getTournament: getTournament,
                    getFixture: getFixture,
                };

                function getTeams() {
                    var defer = $q.defer();
                    $http({
                        method: 'GET',
                        headers: {'Authorization': 'Bearer ' + __c},
                        cache: true,
                        url: '/api/v1/teams'
                    }).then(function successCallback(response) {
                        defer.resolve(response.data);
                    }, function errorCallback(response) {
                        defer.reject(response);
                    });

                    return defer.promise;
                }

                function getTournament()
                {
                    var defer = $q.defer();
                    $http({
                        method: 'GET',
                        cache: true,
                        headers: {'Authorization': 'Bearer ' + __c},
                        url: '/api/v1/tournament'
                    }).then(function successCallback(response) {
                        defer.resolve(response.data);
                    }, function errorCallback(response) {
                        defer.reject(response);
                    });

                    return defer.promise;
                }

                function getFixture()
                {
                    var defer = $q.defer();
                    $http({
                        method: 'GET',
                        cache: true,
                        headers: {'Authorization': 'Bearer ' + __c},
                        url: 'api/v1/fixture/create'
                    }).then(function successCallback(response) {
                        defer.resolve(response.data);
                    }, function errorCallback(response) {
                        defer.reject(response);
                    });
                    return defer.promise;
                }


            });

})();
