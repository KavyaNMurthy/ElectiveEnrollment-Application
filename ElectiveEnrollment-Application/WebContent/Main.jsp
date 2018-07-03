<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main</title>
<style>
.right
{
     position:absolute;
     right:0;
}
.overlay {
    height: 0%;
    width: 100%;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: rgb(255,255,255);
    background-color: rgba(255,255,255, 0.8);
    overflow-y: hidden;
    transition: 0.5s;
}

.overlay-content {
    position: relative;
    top: 25%;
    width: 100%;
    text-align: center;
    margin-top: 30px;
}

.overlay a {
    padding: 8px;
    text-decoration: none;
    font-size: 36px;
    color: #000000;
    display: block;
    transition: 0.3s;
}

.overlay a:hover, .overlay a:focus {
    color: #ff0000;
}

.overlay .closebtn {
    position: absolute;
    top: 20px;
    right: 45px;
    font-size: 60px;
}

@media screen and (max-height: 450px) {
  .overlay {overflow-y: auto;}
  .overlay a {font-size: 20px}
  .overlay .closebtn {
    font-size: 40px;
    top: 15px;
    right: 35px;
  }
}
.txt{
    text-align: justify;
    text-justify: inter-word;
}
* {
    box-sizing: border-box;
}

body {
  margin: 0;
}

/* Style the header */
.header {
    background-color: #f1f1f1;
    padding: 20px;
    text-align: center;
}

/* Style the top navigation bar */
.topnav {
    overflow: hidden;
    background-color: #000080;
}

/* Style the topnav links */
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

/* Create three unequal columns that floats next to each other */
.column {
    float: left;
    padding: 10px;
}

/* Left and right column */
.column.side {
    width: 25%;
}

/* Middle column */
.column.middle {
    width: 50%;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media (max-width: 600px) {
    .column.side, .column.middle {
        width: 100%;
    }
}
<style>
* {box-sizing:border-box}
body {font-family: Verdana,sans-serif;}
.mySlides {display:none}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

</style>
<style>
* {box-sizing:border-box}
body {font-family: Verdana,sans-serif;}
.mySlides {display:none}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
#myDIV {
    color: red;
    text-align:center;
    -webkit-animation: mymove 5s infinite; /* Chrome, Safari, Opera */
    animation: mymove 5s infinite;
}

/* Chrome, Safari, Opera */
@-webkit-keyframes mymove {
    50% {color: white;}
}

/* Standard syntax */
@keyframes mymove {
    50% {color: white;}
}
</style>
</head>
<body>
<div id="myNav" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <div class="overlay-content">
    <a href="#">About</a>
    <a href="#">Syllabus</a>
    <a href="#">Faculty Incharge</a>
  </div>
</div>

<div class="header">
 <center><img alt="picture1" width="450px" height="150px" src="logo.png"></center>
</div>
<div class="topnav">
<div align="center" id="myDIV">
<h1 align="center">Centers of Excellence</h1>
</div></div>
<marquee><font color="red" face="verdana" size="4">The autonomous status has helped us to establish Centers of Excellence by: Adobe, VMware, SAP and HP</font></marquee>
<div class="topnav">

<a href="http://newhorizonindia.edu/nhengineering/">Home</a>
<a href="http://localhost:8088/ElectiveCourseProject/Main.jsp">Main</a>
 <a href="http://localhost:8088/ElectiveCourseProject/Register.jsp">Register</a>
 <a href="http://localhost:8088/ElectiveCourseProject/Admin.jsp">Log-in</a>
 <div class="right" style="text-align:left"><a onclick="openNav()">&#9776;</a></div>
 <script>
function openNav() {
    document.getElementById("myNav").style.height = "100%";
}

function closeNav() {
    document.getElementById("myNav").style.height = "0%";
}
</script>
     
</div>

<br>
<div class="row">
  <div class="column side">
    <h2><font color="191970">Employement Centric Syllabus</font></h2>
    <p class="txt">The Centers of Excellence help us to incorporate state-of-the-art curriculum that is directly from the industry. We have already incorporated courses from Adobe, VMWare, SAP and HP into our 5th Semester B.E and 4th Semester MCA Syllabus to render our curriculum more industry-centric. Out of the 275 modules taught under the autonomous scheme, 195 modules have been identified as the ones which are relevant to the industry. Fifty One (51) experts from the industry have been empanelled to teach various subjects across all the departments.</p>
  </div>
  <div class="column middle">
  <br>
  <br>
    <div class="slideshow-container">
    
    <div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="lobby1.jpg" style="width:100%">
  <div class="text"></div>
</div>  

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="nhce.jpg" style="width:100%">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="colla1.jpg" style="width:100%">
  <div class="text"></div>
</div>
</div>
<br>
<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 5000); // Change image every 2 seconds
}
</script>

  </div>
  <div class="column side">
   <h2><font color="191970">Better Subject Choice and Electives</font></h2>
    <p class="txt">The earmarking feature of CBCS is that students in addition to studying the core subjects from their branch can also choose from a wide range of elective subjects from other branches as well. i.e students from non circuit branches (Mechanical, Automobile, Biotechnology and Civil) can opt for electives offered by the circuit branches (Computer Science, Information Science, Electronics & Communication and Electrical & Electronics) and vice versa. This way the CBCS seamlessly incorporates and encourages an interdisciplinary approach towards higher education which is adopted by top Universities across the world.</p>
  </div>
</div>
  
</body>
</html>