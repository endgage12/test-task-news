<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    public function dashboard()
    {
        $user = auth()->user();
        $user_id = DB::table('favorits')->where('user_id', 'LIKE', $user->id);
        return view('dashboard');
    }
}
