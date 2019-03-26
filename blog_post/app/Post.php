<?php

namespace App;
use App\Post;
use App\Tag;
use App\User;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $fillable =['title','body','user_id'];
    static function lastRecord(){
        // call to last record that was insert in table
        return Post::all()->last();
    } 
    //one to mony relationship between user and post 
    public function user(){
        return $this->belongsTo(User::class);
    }

    public function tags() {
        return $this->belongsToMany(Tag::class);
    }
}
