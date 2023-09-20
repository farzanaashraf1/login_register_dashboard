<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RestoController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


// Group middleware
Route::group(['middleware'=>['protected']],function(){
 
    //Route::view('home','home');
Route::view('add','add');
Route::post('/add',[RestoController::class,'add']);
Route::get('/',[RestoController::class,'index']);
Route::get('/list',[RestoController::class,'list']);
//delete
Route::get('/delete/{id}',[RestoController::class,'delete']);
//edit
Route::get('/edit/{id}',[RestoController::class,'edit']);
//updata
Route::post('edit',[RestoController::class,'update']);


// login
Route::view('login','login');
Route::post('login',[RestoController::class,'login']);
          //logout
          Route::get('/logout', function () {
            if(session()->has('user')){
       
               session()->pull('user',null);
            }
           return redirect('login');
       });

});
//register
Route::view('register','register');
Route::post('register',[RestoController::class,'register']);