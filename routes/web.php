<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\UserController;

Route::get('/', function () {
    return view('welcome');
});

Route::prefix('admin')->group(function () {
    Route::get('/login',[UserController::class, 'getLogin']);
    Route::post('/login',[UserController::class, 'postLogin']);
    Route::get('/logout',[UserController::class, 'getLogOutAdmin']);
});

Route::get('login',[PagesController::class, 'getLogin']);
Route::post('login',[PagesController::class, 'postLogin']);
Route::get('signup',[PagesController::class, 'getSignup']);
Route::post('signup',[PagesController::class, 'postSignup']);
Route::get('logout',[PagesController::class, 'getLogout']);

Route::get('/', [PagesController::class, 'trangchu']);

Route::get('/user/{id}',[PagesController::class, 'userDetails']);
Route::get('/trangcanhan',[PagesController::class, 'userDetails']);
Route::middleware('auth')->group(function() {
    Route::prefix('trangcanhan')->group(function() {
        Route::get('/edit', [PagesController::class, 'getEditProfile']);
        Route::post('/edit', [PagesController::class, 'postEditProfile']);
        Route::get('/editimg', [PagesController::class, 'getEditImg']);
        Route::post('/editimg', [PagesController::class, 'postEditImg']);
        Route::get('/changepassword', [PagesController::class, 'getChangePassword']);
        Route::post('/changepassword', [PagesController::class, 'postChangePassword']);
    });
});