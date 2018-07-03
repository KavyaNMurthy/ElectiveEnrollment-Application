<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
<script> 
function validate()
{ 
var username = document.form.username.value; 
var password = document.form.password.value;
if (username==null || username=="")
{ 
alert("Username cannot be blank"); 
return false; 
}
else if(password==null || password=="")
{ 
alert("Password cannot be blank"); 
return false; 
} 
}
</script> 
<style>
form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 25%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 25%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 25%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 600px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 25%;
    }
}
.header {
    border-radius: 15px/50px;
    background-color: #f1f1f1;
    padding: 20px;
    text-align: center;
}
.topnav {
    overflow: hidden;
    background-color: #000080;
}
.topnav a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
    background-color: #ddd;
    color: black;
}
</style>
</head>
<body>
<div class="header">
<center><img alt="picture1" src="logo.png"></center>
</div>

<form name="form" action="LoginServlet" method="post" onsubmit="return validate()">
<!-- Do not use table to format fields. As a good practice use CSS -->
<div class="topnav">
<a href="http://newhorizonindia.edu/nhengineering/">Home</a>
<a href="http://localhost:8088/ElectiveCourseProject/Main.jsp">Main</a>
 <a href="http://localhost:8088/ElectiveCourseProject/Register.jsp">Register</a>
 <a href="http://localhost:8088/ElectiveCourseProject/Admin.jsp">Log-in</a>
</div>
<div class="imgcontainer">
    <img src="img.png" alt="Avatar" class="avatar">
  </div>
    <div class="container">
    <center><label><b>Username</b></label></center>
    <center><input type="text" placeholder="Enter Username" name="username" required></center>
    <center><label><b>Password </b></label></center>
     <center><input type="password" placeholder="Enter Password" name="password" required></center>
    <br>
        
    <center><button type="submit">Login</button></center></center>
    <br>
   <center> <input type="checkbox" checked="checked"> Remember me</center>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>

<!-- refer to the video to understand request.getAttribute() -->
<div><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? ""
: request.getAttribute("errMessage")%></span></div>

</form>

</body>
</html>