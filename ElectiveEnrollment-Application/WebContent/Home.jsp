<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
    <%@ page import="com.uvc.util.DBConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<script type="text/javascript">
        function refreshPage() 
        {
                document.forms.formId.submit();
        }
</script>
<style >
{
    box-sizing: border-box;
}

body {
  margin: 0;
}

/* Style the header */
.header {
   border-radius: 15px/50px;
    background-color: #f1f1f1;
    padding: 20px;
    text-align: center;
}
.container {
    border-radius: 15px/50px;
    background-color: #f1f1f1;
    padding: 20px;
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
.topnav {
    overflow: hidden;
    background-color: red;
}

.topnav1 {
    overflow: hidden;
    background-color: #000080;
}
.topnav1 a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

/* Change color on hover */
.topnav1 a:hover {
    background-color: #ddd;
    color: black;
}
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f1f1f1;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 50%;
}

button:hover {
    opacity: 0.8;
}


</style>
<style>
{
    box-sizing: border-box;
}
table {
    width:50%;
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
    background-color: #87ceeb;
}
table#t01 tr:nth-child(odd) {
   background-color:#add8e6;
}
table#t01 th {
    background-color:#0000cd;
    color: white;
}
</style>
</head>
<body>
<div class="header">
 <center><img alt="picture1" width="450px" height="150px" src="logo.png"></center>
</div>
<div class="topnav">
<div align="center" id="myDIV">
<h1 align="center">Centers of Excellence</h1>
</div></div>
<br>
<div class="topnav1">
<a href="http://newhorizonindia.edu/nhengineering/">Home</a>
<a href="http://localhost:8088/ElectiveCourseProject/Main.jsp">Main</a>
 <a href="http://localhost:8088/ElectiveCourseProject/Register.jsp">Register</a>
 <a href="http://localhost:8088/ElectiveCourseProject/Admin.jsp">Log-in</a>
</div>
<div class="container">
<br>
<b><font color="red" face="verdana">Your response has been recorded.
</font></b>
<br><br>
<b> <font size="5px"><a href="http://localhost:8088/ElectiveCourseProject/Register.jsp">Submit another response</a></font></b>
<br>
<br>
<% Connection con = null;
con=DBConnection.createConnection(); 
Statement statement = con.createStatement() ;
ResultSet resultset = statement.executeQuery("select elective,count(*) as students from electives,course where elecid = courseid group by elective") ;
%>

 <center><TABLE BORDER="1" id="t01">
            <TR>
                <TH>Elective</TH>
                <TH>No of Students</TH>
            </TR>
           
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></TD>
                <TD> <%= resultset.getString(2) %></TD>
                
            </TR>
            
            <% } %>
            
        </TABLE></center>
        
        <br>
        <% ResultSet rs = statement.executeQuery("select count(*) as total from electives"); %>
        <center> <table border="1" id="t01">
         <tr>
            <th> Total Registration </th></tr>
             <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getString(1) %></TD>
                
            </TR>
            <% } %>
        </table></center>
      
<br>
       
        <%
               response.setIntHeader("Refresh", 2000);
        %>
        <br>
        <form id="formId">
        <button type=button" class="cancelbtn" onclick="refreshPage()" value="Refresh Page">Refresh</button>
          
           <br>
           <br> <center><img src="displayChart" align="middle"/></center></form>
        </div>
</body>
</html>