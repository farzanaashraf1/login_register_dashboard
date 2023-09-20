<!DOCTYPE html>
<html lang="en">
<head>
  <title>Resturant Application</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<header>
<nav class="navbar navbar-expand-sm bg-info navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="#">Restro</a>
    </li>
    <li class="nav-item ">
      <a class="nav-link" href="/">Home</a>
    </li>
    <li class="nav-item ">
      <a class="nav-link" href="/list">List</a>
    </li>
    <li class="nav-item ">
      <a class="nav-link " href="/add">Add</a>
    </li>
 
    @if(Session::get('user'))
    <li class="nav-item">
      <a class="nav-link " href="#">Welcome , {{Session::get('user')}}</a>
    </li>
    <li class="nav-item ">
    <a class="nav-link" href="/logout">Logout</a>
    </li>
    @else
    <li class="nav-item ">
      <a class="nav-link " href="login">Login</a>
    </li>
    <li class="nav-item">
      <a class="nav-link " href="register">Register</a>
    </li>
    @endif
  </ul>
</nav>

</hedaer>
  <div class="container">
    <br></br>
  @yield('content')
 </div>
<footer>
    <br></br>
    <br></br>
    <p style="margin-left:500px;">copyright@ reserved for application<p>
</footer>
</body>
</html>