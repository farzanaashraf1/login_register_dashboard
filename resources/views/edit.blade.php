@extends('layout')


@section('content')
    <div>
    <h2 style="margin-left:400px;">Edit Resturants</h2>
    </div>
    <div class="col-sm-6">
    <form action = "/edit" method="POST">
    @csrf

    <div class="form-group">
                         <label for="name">Name</label>
                         <input type="hidden" name="id" value="{{$data->id}}">
                         <input type="text" class="form-control" placeholder="Enter Name" name="name" value="{{$data->name}}">
                        </div>
                     <div class="form-group">
                         <label for="email">Email</label>
                         <input type="email" class="form-control" placeholder="Enter Email" name="email" value="{{$data->email}}">
                        </div>
                     <div class="form-group">
                         <label for="address">Address</label>
                         <input type="text" class="form-control" placeholder="Enter Address" name="address" value="{{$data->address}}">
                       </div>
                     <div class="form-group">
                        <button class="btn btn-block btn-success" type="submit">Update</button>
                    </div>
                    <br>
    </form>
   </div>
   
@endsection