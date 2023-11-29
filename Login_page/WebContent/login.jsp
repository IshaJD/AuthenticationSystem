<%@page import="com.db.dbconnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css"></link>
 <link rel="stylesheet" href="fontawesome-free-6.4.2-web">
 <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<link rel="stylesheet" href="/WebContent/fontawesome-free-6.4.2-web/css/fontawesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body style="background-image:linear-gradient(to right top,#b4cd5a,#c1c647,#cebd34,#dcb422,#eba912);background-repeat:no-repeat;background-attachment:fixed;background-size:cover">

  
    <nav class="navbar navbar-expand-lg navbar-dark bg-light bg-custom">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only"></span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="login.jsp">Login <span class="sr-only"></span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="register.jsp">Register <span class="sr-only"></span></a>
      </li>
     
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>





<div class="container">
<div class="row mt-3">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-header text-center bg-custom1 text-white">
<!-- <i class='far fa-id-badge' style='font-size:36px'></i>-->
<i class="fa-solid fa-user fa-3x"></i>

<h5>LOGIN PAGE</h5>
</div>

<%
String loginm=(String)session.getAttribute("login-msg");
if(loginm!=null){
%>
<div class="alert alert-success" role="alert">
<%= loginm %>
</div>
<%} %>


<% session.removeAttribute("login-msg"); %>
<%
String logoutmsg=(String)session.getAttribute("logout-msg");
if(logoutmsg!=null){
%>

<div class="alert alert-success" role="alert">
<%= logoutmsg %>
</div>

<% session.removeAttribute("logout-msg"); %>
<%} %>
<div class="card-body">
<form action="login_servlet" method="post">
 
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Email </label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" >
    <small id="emailHelp" class="form-text text-muted" ></small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="passsword">
  </div>
  
  <button type="submit" class="btn btn-primary btn-block badge-pill">Login</button>
</form>
</div>
</div>
</div>
</div>

</div>






   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
</body>
</html>