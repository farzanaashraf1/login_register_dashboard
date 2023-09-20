@extends('layout')


@section('content')
   <div>
    <h2 style="margin-left:400px;">List of the Resturants</h2>
   </div>
   @if(Session::get('status'))
  
   <div class="alert alert-success alert-dismissible fade show">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    {{Session::get('status')}}
  </div>
  @endif
   <table class="table">
    <thead>
      <tr class="table-success">
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>Operation</th>
      </tr>
    </thead>
    <tbody>
        @foreach($data as $item)
      <tr>
        <td>{{$item->id}}</td>
        <td>{{$item->name}}</td>
        <td>{{$item->email}}</td>
        <td>{{$item->address}}</td>
        <td>
          <a href="delete/{{$item->id}}"><i class="fa fa-trash"></i></a>
          <a href="edit/{{$item->id}}"><i class="fa fa-edit"></i></a>
        </td>
      </tr>
      @endforeach
    </tbody>
  </table>
@endsection