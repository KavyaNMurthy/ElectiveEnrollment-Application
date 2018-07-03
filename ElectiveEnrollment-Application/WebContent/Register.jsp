<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="com.uvc.util.DBConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<script>
function validate()
{ 
var fullname = document.form.fullname.value;
var usn = document.form.usn.value;
var department = document.form.department.value;
var semester = document.form.semester.value;
var section = document.form.section.value;
var email = document.form.email.value;
var elective = document.form.elective.value;
if (fullname==null || fullname=="")
{ 
alert("Full Name can't be blank"); 
return false; 
}
else if (email==null || email=="")
{ 
alert("Email can't be blank"); 
return false; 
}
else if (usn==null || usn=="")
{ 
alert("USN can't be blank"); 
return false; 
}
else if (department==null || department=="")
{ 
alert("Department can't be blank"); 
return false; 
}
else if (semester==null || semester=="")
{ 
alert("Semester can't be blank"); 
return false; 
}
else if (elective==null || elective=="")
{ 
alert("Elective can't be blank"); 
return false; 
}
} 
function setElecid()
{
	 // find the dropdown
    var ddl = document.getElementById("Elecid");
    // find the selected option
    var selectedOption = ddl.options[ddl.selectedIndex];
    // find the attribute value
    var Value = selectedOption.getAttribute("data-value");
    // find the textbox
    var textBox = document.getElementById("Elecid1");

    // set the textbox value
    
    if(Value=="0"){
        textBox.value = null;
    }
    else if(Value=="1")
    	{
    	textBox.value = "NHE62";
    	}
    else if(Value=="2"){
        textBox.value = "NHE61";
    }   
    else if(Value=="3"){
    	textBox.value="NHE63";
    }
    else if(Value=="4")
   	{
    	textBox.value="NHE64";
    }
}
</script>

<style>
* {
    box-sizing: border-box;
}
.header {
    border-radius: 15px/50px;
    background-color: #f1f1f1;
    padding: 20px;
    text-align: center;
}
input[type=text], select, textarea{
    width: 70%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}
input[type=reset] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}
input[type=reset]:hover {
    background-color: #45a049;
}
.container {
    border-radius: 5px;
    background-color: #f1f1f1;
    padding: 20px;
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 50%;
        margin-top: 0;
    }
}
.topnav {
    overflow: hidden;
    background-color: #000080;
}
.topnav1 {
    overflow: hidden;
    background-color: red;
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
  <h1></h1>
  <center><img alt="picture1" width="450px" height="150px" src="logo.png"></center>
<br>
</div>
<form name="form" action="RegisterServlet" method="post" onsubmit="return validate()">
<div class="topnav1">
<marquee><font color="white" face="verdana" size="4">The autonomous status has helped us to establish Centers of Excellence by: Adobe, VMware, SAP and HP</font></marquee>
</div>
<br>
<div class="topnav">
<a href="http://newhorizonindia.edu/nhengineering/">Home</a>
<a href="http://localhost:8088/ElectiveCourseProject/Main.jsp">Main</a>
 <a href="http://localhost:8088/ElectiveCourseProject/Admin.jsp">Login</a>
</div>
<table align="center">
<div class="container">
<div class="row">
      <div class="col-25">
<font color="191970" size="4"><label>Name</label></font>
</div>
<div class="col-75">
<input type="text" name="fullname" required>
</div>
</div>
<div class="row">
      <div class="col-25">
<font color="191970" size="4"><label>USN</label></font>
</div>
<div class="col-75">
<input type="text" name="usn" required>
</div>
</div>
<div class="row">
      <div class="col-25">
<font color="191970" size="4"><label>Department</label></font>
</div>
<div class="col-75">
<select name ="Department" id="dropdown" required>
  <option>Select...</option>
  <option value="AU">Automobile Engineering</option>
  <option value="ISE">Information Science Engineering</option>
  <option value="CSE">Computer Science Engineering</option>
  <option value="EEE">Electrical & Electronics Engineering</option>
  <option value="ECE">Electronics & Communication Engineering</option>
  <option value="ME">Mechanical Engineering</option>
  <option value="MCA">Master of Computer Applications</option>
  <option value="MBA">Master of Business Administration</option>
</select>
</div>
</div>
<br>
<div class="row">
      <div class="col-25">
<font color="191970" size="4"><label>Semester</label></font>
</div>
<div class="col-75">
<input type="radio" name="semester" value="V" required>V 
<input type="radio" name="semester" value="VII" required>VII
</div>
</div>
<div class="row">
      <div class="col-25">
<font color="191970" size="4"><label>Section</label></font>
</div>
<div class="col-75">
<input type="text" name="section" required>
</div>
</div>
<div class="row">
      <div class="col-25">
<font color="191970" size="4"><label>Elective</label></font>
</div>
<div class="col-75">
<select name ="Elective" id="Elecid" onChange="return setElecid()" required>
  <option data-value="0"> Select...</option>
  <option data-value="1" value="Big Data">BIG DATA-HPE</option>
  <option data-value="2" value="VM Ware">VM WARE</option>
  <option data-value="3" value="Adobe">ADOBE</option>
  <option data-value="4" value="SAP">SAP NEXT-GEN</option>
</select>
</div>
</div>
       <div class="row">
      <div class="col-25"> 
    <font color="191970" size="4"><label>ElectiveID</label></font>
    </div>
<div class="col-75">
    <input type="text" name="courseid" id="Elecid1" required>
</div>
</div>
<div class="row">
      <div class="col-25"> 
<font color="191970" size="4"><label>Email</label></font>
</div>
<div class="col-75">
<input type="text" name="email" required>
</div>
</div>
<div><span style="color:red"> <%=(request.getAttribute("errMessage") == null) ? "": request.getAttribute("errMessage")%></span></div>

<div class="row"><input type="submit" value="Register" size="5"></input></div>
<br>
<div class="row"><input type="reset" value="Reset" size="5"></input></div>
</div>
</table>
</form>
</body>
</html>