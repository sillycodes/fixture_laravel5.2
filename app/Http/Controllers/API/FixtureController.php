<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
#use App\Http\Controllers\Controller;
use App\Fixture;

class FixtureController extends BaseController {

    /**
     * Fixture..
     */
    public $total_matches = [];
    public $matchesCount = 0;
    private $teams1;
    private $teams2;

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {        //
        //$get_fixtures = Fixture::all();
        $get_fixtures = Fixture::with('torunamet')->get();
        $fixtures = $get_fixtures->toArray();
        if (empty($fixtures)) {
            return $this->sendError('No fixture available, Please create fixture..');
        }
        return $this->sendResponse($fixtures, 'Data retrieved successfully.');
    }
    
    
    
    /**
     * 
     * @param Request $request
     * @param int $tournament_id
     * @param type $start_date
     * @return type
     */

    public function createFixture(Request $request, $tournament_id = null, $start_date = null) {
        $teamObj = new \App\Http\Controllers\API\TeamController();
        date_default_timezone_set("Asia/Kolkata");
        $tournament_id = 1;  //will use for generating the fixture..      
        if (is_null($start_date)) {
            $dateObj = new \DateTime();
            $curr_date = $dateObj->format('Y:m:d h:i:s');
            $start_date = date('Y-m-d h:i:s', strtotime($curr_date . ' +1 day'));
        }

        $playing_teams = $teamObj::getTeam()->toArray();

        if (is_null($playing_teams)) {
            return $this->sendError('Unable to create fixture, no teams available, Please add team.');
        }

        $let_stadums = array_column($playing_teams, 'team_code');

//        print_r($let_stadums); exit;

        $this->total_matches = [];

        //Dividing into two groups..
        if (count($playing_teams) % 2) {
            $this->teams1 = array_slice($playing_teams, 0, ceil(count($playing_teams) / 2));
            $this->teams2 = array_slice($playing_teams, ceil(count($playing_teams) / 2));
        } else {

            $this->teams1 = array_slice($playing_teams, 0, count($playing_teams) / 2);
            $this->teams2 = array_slice($playing_teams, count($playing_teams) / 2);
        }

        if (!$this->matchesCount) {

            //Create matches b/w both groups..
            for ($i = 2; $i < (count($this->teams1) * 2); $i++) {
                $this->createMatchs();
                $this->shuffleTeam();
            }
            $this->createMatchs();
        } else {

            //Randomaize the teams..
            shuffle($this->teams1);
            shuffle($this->teams2);

            //Create matches.. In case no of matches selected ..
            if (count($playing_teams) >= $this->matchesCount) {

                for ($i = 1; $i < $this->matchesCount; $i++) {

                    $this->createMatchs();
                    $this->shuffleTeam();
                }
                $this->createMatchs();
            } else {

                for ($i = 2; $i < (count($this->teams1) * 2); $i++) {

                    $this->createMatchs();
                    $this->shuffleTeam();
                }
                $this->createMatchs();

                $diff = $this->matchesCount - count($playing_teams);

                for ($i = 0; $i < $diff; $i++) {
                    $this->total_matches[] = [];
                }
            }
        }
        
        $home_ground = [];
        $away_ground = [];

        if ($this->total_matches) {
            foreach ($this->total_matches as $key => $value) {
                foreach ($value as $k) {
                    $stadium = array_flip($let_stadums);
                    //Home Ground for Team 1
                    $home_ground[] = array(
                        'home_team' => $k[0],
                        'away_team' => $k[1],
                        'stadium' => $let_stadums[$stadium[$k[0]['team_code']]]
                    );
                    //Home Ground for Team 2
                    $away_ground[] = array(
                        'home_team' => $k[0],
                        'away_team' => $k[1],
                        'stadium' => $let_stadums[$stadium[$k[1]['team_code']]]
                    );
                }
            }
        }
        $matches = array_merge($home_ground, $away_ground);

        return $this->sendResponse($matches, 'Fixture created successfully.');
    }

    /**
     * return void.
     */
    private function createMatchs() {
        for ($i = 0; $i < count($this->teams1); $i++) {
            $matches_tmp[] = array($this->teams1[$i], $this->teams2[$i]);
        }
        $this->total_matches[] = $matches_tmp;
        return true;
    }

    private function shuffleTeam() {
        $anyTeam = $this->teams1[1];  //Taken fist team of group teams1
        for ($i = 1; $i < (count($this->teams1) - 1); $i++) {
            $this->teams1[$i] = $this->teams1[$i + 1];
        }
        $this->teams1[count($this->teams1) - 1] = end($this->teams2);
        for ($i = (count($this->teams2) - 1); $i > 0; $i--) {
            $this->teams2[$i] = $this->teams2[$i - 1];
        }
        $this->teams2[0] = $anyTeam;

        return true;
    }

}
