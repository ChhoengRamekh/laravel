<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class profile extends Model
{ 
    //fillable for must assingment
    protected $fillable=['user_id','phone','address'];
    // one to one relationship between user 
    //profile belong to a user
    public function user(){
        return $this->belongsTo(\App\Profile::class);
    }
}
