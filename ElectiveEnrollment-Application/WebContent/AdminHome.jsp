<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="com.uvc.util.DBConnection" %>
  
    <
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminHome</title>
<style>
.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}
.header {
    background-color: #f1f1f1;
    padding: 20px;
    text-align: center;
}
.right
{
     position:absolute;
     right:0;
}
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
.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}
.container {
    border-radius: 5px;
    background-color: #f1f1f1;
    padding: 20px;
}
input[type=text], select, textarea{
    width: 50%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}
.column.middle {
    width: 100%;
    background-color:"f1f1f1";
}
.row:after {
    content: "";
    display: table;
    clear: both;
}
label {
    padding: 12px 12px 12px 12px;
    display: inline-block;
}
</style>
<style>
{
    box-sizing: border-box;
}
table {
    width:20%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    box-sizing: border-box;
}
th, td {
    padding: 12px;
    text-align: left;
    color:#000080;
    box-sizing: border-box;
    
}
table#t01 tr:nth-child(even) {
    background-color: #999999;
}
table#t01 tr:nth-child(odd) {
   background-color:#454545;
}
table#t01 th {
    background-color:#454545;
    color: white;
}
</style>
</head>

<body>

<div class="header">
<center><img alt="picture1" src="logo.png"></center></div>
<div class="topnav">
<a href="http://newhorizonindia.edu/nhengineering/">Home</a>
<a href="http://localhost:8088/ElectiveCourseProject/Main.jsp">Main</a>
 <a href="http://localhost:8088/ElectiveCourseProject/Register.jsp">Register</a>
 <div class="right" style="text-align:left"><a href="LogoutServlet">Logout</a></div>
</div>
<br>

<p align="right"><font color="Red" face="verdana">Welcome <%=request.getAttribute("userName") %></font></p> <!-- Refer to the video to understand how this works -->
<div class="container">
<p><font color="Black" face="verdana">Information Science Of Engineering</font></p>
<% Connection con = null;
con=DBConnection.createConnection(); 
Statement statement = con.createStatement() ;
ResultSet resultset=null; 
resultset = statement.executeQuery("select count(*) from electives where elective='Big Data' and department='ISE'") ;
%>
 <table border="1" id="t01" style ="float:left">
         <tr>
            <th>BIG-DATA</th></tr>
             <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></TD>
                
            </TR>
            <% } %>
        </table>
        <% resultset= statement.executeQuery("select count(*) from electives where elective='VM Ware' and department='ISE'") ; %>
        <table border="1" id="t01" style="float:left">
         <tr>
            <th> VM Ware</th></tr>
             <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></TD>
                
            </TR>
            <% } %>
        </table>
        <% resultset= statement.executeQuery("select count(*) from electives where elective='Adobe' and department='ISE'") ; %>
        <table border="1" id="t01" style="float:left">
         <tr>
            <th>Adobe</th></tr>
             <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></TD>
                
            </TR>
            <% } %>
        </table>
        <% resultset= statement.executeQuery("select count(*) from electives where elective='SAP' and department='ISE'") ; %>
        <table border="1" id="t01">
         <tr>
            <th>SAP</th></tr>
             <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></TD>
                
            </TR>
            <% } %>
        </table> 
<br>
<br>
<p><font color="Black" face="verdana">Computer Science Of Engineering</font></p>
<% resultset = statement.executeQuery("select count(*) from electives where elective='Big Data' and department='CSE'") ;
%>
<table border="1" id="t01" style ="float:left">
        <tr>
           <th>BIG-DATA</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='VM Ware' and department='CSE'") ; %>
       <table border="1" id="t01" style="float:left">
        <tr>
           <th> VM Ware</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='Adobe' and department='CSE'") ; %>
       <table border="1" id="t01" style="float:left">
        <tr>
           <th>Adobe</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='SAP' and department='CSE'") ; %>
       <table border="1" id="t01">
        <tr>
           <th>SAP</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table> 
<br>
<br>
<p><font color="Black" face="verdana">Electrical & Electronics Engineering</font></p>
<% resultset = statement.executeQuery("select count(*) from electives where elective='Big Data' and department='EEE'") ;
%>
<table border="1" id="t01" style ="float:left">
        <tr>
           <th>BIG-DATA</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='VM Ware' and department='EEE'") ; %>
       <table border="1" id="t01" style="float:left">
        <tr>
           <th> VM Ware</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='Adobe' and department='EEE'") ; %>
       <table border="1" id="t01" style="float:left">
        <tr>
           <th>Adobe</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='SAP' and department='EEE'") ; %>
       <table border="1" id="t01">
        <tr>
           <th>SAP</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table> 
<br>
<br>
<p><font color="Black" face="verdana">Electronics & Communication Engineering</font></p>
<% resultset = statement.executeQuery("select count(*) from electives where elective='Big Data' and department='ECE'") ;
%>
<table border="1" id="t01" style ="float:left">
        <tr>
           <th>BIG-DATA</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='VM Ware' and department='ECE'") ; %>
       <table border="1" id="t01" style="float:left">
        <tr>
           <th> VM Ware</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='Adobe' and department='ECE'") ; %>
       <table border="1" id="t01" style="float:left">
        <tr>
           <th>Adobe</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='SAP' and department='ECE'") ; %>
       <table border="1" id="t01">
        <tr>
           <th>SAP</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table> 
<br>
<br>
<p><font color="Black" face="verdana">Master of Computer Applications</font></p>
<% resultset = statement.executeQuery("select count(*) from electives where elective='Big Data' and department='MCA'") ;
%>
<table border="1" id="t01" style ="float:left">
        <tr>
           <th>BIG-DATA</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='VM Ware' and department='MCA'") ; %>
       <table border="1" id="t01" style="float:left">
        <tr>
           <th> VM Ware</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='Adobe' and department='MCA'") ; %>
       <table border="1" id="t01" style="float:left">
        <tr>
           <th>Adobe</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='SAP' and department='MCA'") ; %>
       <table border="1" id="t01">
        <tr>
           <th>SAP</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table> 
<br>
<br>
<p><font color="Black" face="verdana">Mechanical Engineering</font></p>
<% resultset = statement.executeQuery("select count(*) from electives where elective='Big Data' and department='ME'") ;
%>
<table border="1" id="t01" style ="float:left">
        <tr>
           <th>BIG-DATA</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='VM Ware' and department='ME'") ; %>
       <table border="1" id="t01" style="float:left">
        <tr>
           <th> VM Ware</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='Adobe' and department='ME'") ; %>
       <table border="1" id="t01" style="float:left">
        <tr>
           <th>Adobe</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='SAP' and department='ME'") ; %>
       <table border="1" id="t01">
        <tr>
           <th>SAP</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table> 
<br>
<br>
<p><font color="Black" face="verdana">Automobile Engineering</font></p>
<% resultset = statement.executeQuery("select count(*) from electives where elective='Big Data' and department='AU'") ;
%>
<table border="1" id="t01" style ="float:left">
        <tr>
           <th>BIG-DATA</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='VM Ware' and department='AU'") ; %>
       <table border="1" id="t01" style="float:left">
        <tr>
           <th> VM Ware</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='Adobe' and department='AU'") ; %>
       <table border="1" id="t01" style="float:left">
        <tr>
           <th>Adobe</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='SAP' and department='AU'") ; %>
       <table border="1" id="t01">
        <tr>
           <th>SAP</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table> 
<br>
<br>
<p><font color="Black" face="verdana">Master of Business Administration</font></p>
<% resultset = statement.executeQuery("select count(*) from electives where elective='Big Data' and department='MBA'") ;
%>
<table border="1" id="t01" style ="float:left">
        <tr>
           <th>BIG-DATA</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='VM Ware' and department='MBA'") ; %>
       <table border="1" id="t01" style="float:left">
        <tr>
           <th> VM Ware</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='Adobe' and department='MBA'") ; %>
       <table border="1" id="t01" style="float:left">
        <tr>
           <th>Adobe</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table>
       <% resultset= statement.executeQuery("select count(*) from electives where elective='SAP' and department='MBA'") ; %>
       <table border="1" id="t01">
        <tr>
           <th>SAP</th></tr>
            <% while(resultset.next()){ %>
           <TR>
               <TD> <%= resultset.getString(1) %></TD>
               
           </TR>
           <% } %>
       </table> 
<br>
<br>
</div>
</body>
</html>