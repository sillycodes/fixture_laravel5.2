<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Fixture extends Model
{
    //
    
    public function tournament(){
        
        return $this->belongsTo(
            'App\Tournament',           
            'id', 
            'tournament_id'            
        );
    }
}
