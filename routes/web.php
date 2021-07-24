<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/', [\App\Http\Controllers\NewsController::class, 'index'])->name('index');
Route::get('/news', [\App\Http\Controllers\NewsController::class, 'allNews'])->name('news');
Route::get('/news/{id}', [\App\Http\Controllers\NewsController::class, 'show']);
Route::get('/search', [\App\Http\Controllers\NewsController::class, 'searchIndex'])->name('search');

Route::post('favorit/{news}', [\App\Http\Controllers\NewsController::class, 'favoritNews']);
Route::post('unfavorite/{news}', [\App\Http\Controllers\NewsController::class, 'deleteFavoritNews']);

Route::get('my_favorits', [\App\Http\Controllers\NewsController::class, 'showFavorit'])->middleware('auth');
Route::post('addInFavorit/{id}', [\App\Http\Controllers\NewsController::class, 'addInFavorit'])->middleware('auth');

Route::get('/dashboard', [\App\Http\Controllers\UserController::class, 'dashboard'])->middleware(['auth'])->name('dashboard');

Route::get('/logout', [\App\Http\Controllers\Auth\AuthenticatedSessionController::class, 'destroy'])->name('get-logout');

require __DIR__.'/auth.php';
