<%@page import="com.entities.user"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    user u=(user)session.getAttribute("user-obj");
    if(u==null){
    	session.setAttribute("login-msg","Please Login First.....");
    	response.sendRedirect("login.jsp");
    	
    }
    
    
    %>
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css"></link>
<link rel="stylesheet"
 href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body style="background-image:linear-gradient(to right top,#b4cd5a,#c1c647,#cebd34,#dcb422,#eba912);background-repeat:no-repeat;background-attachment:fixed;background-size:cover">
<!-- navbar -->
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

<!-- navbar ends  -->

<!-- user info  -->
<div class="container">
<div class="row d-flex justify-content-center align-items-center mt-4">
<div class="col-md-6">
<div class="card">

<%
user u1=(user)session.getAttribute("user-obj");
%>
<% if(u1!=null) { %>
<div class="card-body">
<h2>Name :<%=u1.getName() %></h2>
<h2>Email:<%=u1.getEmail() %></h2>
<div class="container text-center">
<a class="btn btn-primary btn-lg" href="logoutServlet">
Logout
</a>
</div>


<%} %>

</div>
</div>
</div>
</div>


</body>
</html>