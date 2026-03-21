<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    protected $table = 'images';

    // Una imagen tiene muchos comentarios
    public function comments(){
        return $this->hasMany(Comment::class);
    }

    //una imagen pertenece a un usuario
    public function user(){
        return $this->belongsTo(User::class);
    }

    //una imagen tiene muchos likes
    public function likes(){
        return $this->hasMany(Like::class);
    }
}
