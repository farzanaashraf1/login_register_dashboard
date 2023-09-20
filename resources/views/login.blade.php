@extends('layout')


@section('content')
    <h1 style="margin-left:200px;">Login into  Your Account</h1>

    <div class="col-sm-8">
    <form action = "login" method="POST">
    @csrf

                 <div class="form-group">
                         <label for="email">Email</label>
                         <input type="email" class="form-control" placeholder="Enter Email" name="email" >
                        </div>
                        <div class="form-group">
                         <label for="password">Password</label>
                         <input type="password" class="form-control" placeholder="Enter password" name="password" >
                        </div>
                   <div class="form-group">
                        <button class="btn btn-block btn-primary" type="submit">Login</button>
                    </div>
                    <br>
                    <a href="register">New User !! Register Here</a>
    </form>
@endsection