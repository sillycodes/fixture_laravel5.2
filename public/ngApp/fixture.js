angular.module('fixture', [])
    .controller('fixtureController', function($scope, $http, $rootScope,restClientService){
restClientService.getFixture()
    .then(function(res){
        $scope.fixtures = res.data; 
        //get the teams also on single call.        
        restClientService.getTeams()
                .then(function(teams){
                    
                    angular.forEach(teams.data , function(v,k){
                         var matchesPerTeam = "";
                          var text = {
                                team_id : v.team_code,
                                team_win : $scope.team_win,
                                team_lost :$scope.team_lost,
                                team_points :$scope.team_points
                        };
                        this.push(text);
                    },$scope.pointsTable);
//                    $scope.teams = teams;
                    console.log("teams",$scope.pointsTable);
                },function(error){console.log("Error:", error);});
    },function(err){
        console.log("Error:", err);
    });
    
    
    $scope.fixtures = [];
    $scope.pointsTable = [];
    $scope.team_win=0;
    $scope.team_lost=0;
    $scope.team_points=0;
    
    $scope.saveFixture = function(){
      console.log($scope.fixture); 
    };

//getTournament()
//    .then(function(res){
//        $scope.tournament = res.data; 
//        console.log(res);
//  
//    },function(err){
//        console.log("Error:", err);
//    });
//    $scope.viewPlayer = function(playerName){
//        console.log(playerName);
//    };
});






//angular.module('matchList',[])
//        .directive('matchList',function(){
//            return{
//                templateUrl:"ngApp/partials/fixture.html"
////                template:"<h3>Bikash</h3>"
//            };
//        });
//        
