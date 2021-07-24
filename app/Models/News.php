<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class News extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'content', 'description', 'author', 'tag', 'image', 'is_favorit'];

    public function favorits()
    {
        return $this->belongsToMany('Favorit');
    }

    public function isFavorit()
    {
        return $this->is_favorit === 1;
    }

    public function tags()
    {
        return $this->belongsToMany('Tags')->withTimestamps();
    }

    public function favorited()
    {
        return (bool) Favorit::where('user_id', Auth::id())
            ->where('news_id', $this->id)
            ->first();
    }
}
