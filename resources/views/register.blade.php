@extends('layout')


@section('content')
    <h1 style="margin-left:300px;">User Register Page</h1>

    <div class="col-sm-8">
    <form action = "register" method="POST">
    @csrf

    <div class="form-group">
                         <label for="name">Name</label>
                         <input type="text" class="form-control" placeholder="Enter Name" name="name">
                        </div>
                     <div class="form-group">
                         <label for="email">Email</label>
                         <input type="email" class="form-control" placeholder="Enter Email" name="email" >
                        </div>
                        <div class="form-group">
                         <label for="password">Password</label>
                         <input type="password" class="form-control" placeholder="Enter password" name="password" >
                        </div>
                     <div class="form-group">
                         <label for="contact">Contact</label>
                         <input type="text" class="form-control" placeholder="Enter contact" name="contact">
                       </div>
                     <div class="form-group">
                        <button class="btn btn-block btn-success" type="submit">Register</button>
                    </div>
                    <br>
                    <a href="login">Already Register !! Login Here</a>
    </form>
@endsection