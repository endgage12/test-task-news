<?php

namespace App\Http\Controllers;

use App\Models\News;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

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

    public function show(News $news, $id)
    {
        if($news = DB::table('news')->where('id', $id)->first()) {
            return view('new', compact('news'));
        } else return abort(404);

    }
}
