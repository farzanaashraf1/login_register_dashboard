@extends('layout')


@section('content')
    <div>
    <h2 style="margin-left:400px;">Add the Resturants</h2>
    </div>
    <div class="col-sm-6">
    <form action = "" method="POST">
    @csrf

    <div class="form-group">
                         <label for="name">Name</label>
                         <input type="text" class="form-control" placeholder="Enter Name" name="name" value="{{old('name')}}">
                        </div>
                     <div class="form-group">
                         <label for="email">Email</label>
                         <input type="email" class="form-control" placeholder="Enter Email" name="email" value="{{old('email')}}">
                        </div>
                     <div class="form-group">
                         <label for="address">Address</label>
                         <input type="text" class="form-control" placeholder="Enter Address" name="address" value="{{old('password')}}">
                       </div>
                     <div class="form-group">
                        <button class="btn btn-block btn-primary" type="submit">Add</button>
                    </div>
                    <br>
    </form>
   </div>
   
@endsection