<?php

namespace App\Http\Controllers;

use App\Models\News;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use function Symfony\Component\String\s;

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

    public function show($id)
    {
        if($news = DB::table('news')->find($id)) {
            return view('new', compact('news'));
        } else return abort(404);
    }

    public function searchNews(Request $request)
    {
        $posts = News::where('title', 'like' , '%' . $request->get('searchQuest') . '%')->get();
        return json_encode($posts);
    }

    public function searchIndex(Request $request)
    {
        $s = $request->query__;
        if($news = DB::table('news')->where('title', 'LIKE', "%{$s}%")->get())
        {
            return view('search', compact('news'));
        } else return abort(404);

    }
}
