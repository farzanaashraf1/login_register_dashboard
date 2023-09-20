<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Restaurant;
use App\Models\User;
use Session;
use Crypt;
class RestoController extends Controller
{
    //
    public function index(){
      return view('home');
    }
    public function list(){
        $data =  Restaurant::all();
        return view('list',['data'=>$data]);
      }
     
      public function add(Request $req){

        $resto = new Restaurant;
         $resto->name=$req->input('name');
         $resto->email=$req->input('email');
         $resto->address=$req->input('address');
         $resto->save();
         $req->session()->flash('status','Restursnts submitted successfully');
      
            return redirect('list');     
        }

        public function delete($id){

           Restaurant::find($id)->delete();
           Session::flash('status','Restursnts deleted successfully');
              return redirect('list');    
        }

        public function edit($id){

         $data = Restaurant::find($id);
         return view('edit',['data'=>$data]);
       
       }

  //update
  public function update(Request $req){

    $resto = Restaurant::find($req->input('id'));
     $resto->name=$req->input('name');
     $resto->email=$req->input('email');
     $resto->address=$req->input('address');
     $resto->save();
     $req->session()->flash('status','Restursnts updated successfully');
  
        return redirect('list');     
    }
    //register
    public function register(Request $req){
       //echo Crypt::encrypt('123@abc');
       $resto = new User;
       $resto->name=$req->input('name');
       $resto->password=Crypt::encrypt($req->input('password'));
       $resto->email=$req->input('email');
       $resto->contact=$req->input('contact');
       $resto->save();
       
             return redirect('login');     
    }

      //login
      public function login(Request $req){

        $user =  User::where('email',$req->input('email'))->get();
        if(Crypt::decrypt($user[0]->password)==$req->input('password'))
        {
          $req->session()->put('user', $user[0]->name);
             return redirect('/');     
        }
      }
}
