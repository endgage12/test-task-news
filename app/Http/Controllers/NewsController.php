<?php

namespace App\Http\Controllers;

use App\Models\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function allNews()
    {
        $news = News::all();
        return view('news', compact('news'));
    }

    public function index()
    {
        $news = News::all()->where('is_favorit', '=', '1');
        return view('favorit', compact('news'));
    }

    public function show(News $new)
    {
        $news = $new->get();
        return view('news', compact('news'));
    }
}
