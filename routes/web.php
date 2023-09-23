<?php

use App\Http\Controllers\Admin\AdminController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\IndexController;
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


Route::controller(IndexController::class)->group(function () {
    Route::get('/', 'index')/*->middleware('test')*/->name('index');
});


/*
Route::controller(AdminController::class)->group(function () {
    
});
*/
/*
Route::prefix('admin')->group(function () {
    Route::prefix('admin1')->group(function () {
        Route::controller(AdminController::class)->group(function () {
            Route::get('/vania', 'index');
        });
    });
    Route::prefix('admin2')->group(function () {

    });
});
*/
/*
Route::get('/vania/{id?}/{name?}', [AdminController::class, 'index']);
Route::post('/vaninin-obr', [AdminController::class, 'obr']);



Route::controller(IndexController::class)->group(function () {
    Route::get('/', 'index');
    Route::get('/about', 'about')->name("about");
});



Route::get('/posts/{flag?}', [IndexController::class, 'posts'])->name("posts");

Route::post('/obr', [IndexController::class, 'obr']);

Route::post('/posts_obr', [IndexController::class, 'postsobr']);

Route::get('/delete-post/{id}', [IndexController::class, 'deletepost']);


*/
//создать новый роут "about"
// который вызывает тоже IndexController
// и создать другой файл вида