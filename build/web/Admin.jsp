<%-- 
    Document   : Admin
    Created on : 2 Jul, 2015, 10:34:34 PM
    Author     : Nikhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.IOException,java.io.PrintWriter,javax.servlet.ServletException, javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.*,javax.servlet.RequestDispatcher" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
   <head>
    <meta charset="UTF-8">
    <title>HCST NOTES</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <link rel="stylesheet" href="style.css" />	
    <%
      response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
      response.addHeader("Pragma", "no-cache"); 
      response.addDateHeader ("Expires", 0);
    %>
   </head>


   <body class="landing">

    
    <div id="header">
        <div id="header-content" style="float: left">
            <c:if test="${empty sessionScope['loginUser']}">
                 <c:redirect url="index.jsp" />
            </c:if>
            <a href="Logout.jsp" class="button">Logout </a>
        </div>
        <div id="header-content1" style="float: right">
                <sql:setDataSource var="usersql" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="3306"/>
                <sql:query dataSource="${usersql}" var="rs">
                Select f_name from list where id = ?;
                <sql:param value="${sessionScope['loginUser']}"/>                
                </sql:query>
                <c:forEach var="r" items="${rs.rows}">
                    <c:set var="f_name" value="${r.f_name}" scope="application"></c:set>
                </c:forEach>
            <div id="loginform">
                <p>Welcome ${f_name} (Admin) </p>
            </div>
        </div>
    </div>
    

    <!-- Banner -->
    <section id="adminbanner">
        <h2>HCST NOTES</h2>
        <p>This is Admin Page From where Admin can Manage Everything.</p><br><br>
        <h3>Create Teacher's Account</h3><br>
        <center><a href="#signupScreen" class="button">Create Account</a></center><br>
        <h3>Delete Any Account</h3>
        <center><a href="#delAcc" class="button">Delete Account</a></center><br>
        <h3>Change Any Account's Password</h3><br>
        <center><a href="#changePass" class="button">Change Password</a></center>
    </section>

    
    <!-- Footer -->
    <footer id="footer">
    <div class="copyright">
        <li>&copy; HCST NOTES. All rights reserved.</li>
    </div>
    </footer>
    
    
    <div id="changePass" class="form_" style="height: auto;">  
        <div style="background-color:brown ;width:100%;height:auto;float:right"> 
            <center><b>Change Password</b></center>
            <a href="#" class="cancel">&times;</a>
        </div>
        <div align="center"><br><br><br>
            <form action="ChangePass.jsp">
                <center><input type="text" placeholder="Enter ID" name="id_"></center>
                <center><input type="password" placeholder="Enter New Password" name="password_"></center>
                <br>
                <center><input type="submit" class="button"></center>
            </form>
        </div>
    </div> 
    
    <div id="delAcc" class='form_' style="height: auto;">  
        <div style="background-color:brown ;width:100%;height:auto;float:right"> 
            <center><b>Delete Account</b></center>
            <a href="#" class="cancel">&times;</a>
        </div>
        <div align="center"><br><br><br>
            <form action="DelAcc.jsp">
                <center><input type="text" placeholder="Enter ID" name="id_"></center>
                <br>
                <center><input type="submit" class="button"></center>
            </form>
        </div>
    </div> 
    
    
    <div id="signupScreen" class="form_" style="height: auto;">
        <div style="background-color: brown ;width:100%;height:auto;float:right"> 
            <center><b>Sign Up</b></center>
            <a href="#" class="cancel">&times;</a>
        </div>
        <div align="center"><br><br><br>    
            <form action="TSignup.jsp">
                <input class="signup" type="text"  name="id" placeholder="Enter Your ID" required>
                <input class="signup" type="text"  name="f_name" placeholder="First Name" required >
                <input class="signup" type="text"  name="l_name" placeholder="Last Name" required >
                <input class="signup" type="password" name="password" placeholder="Password" required>
                <input class="signup" type="password" placeholder="ReEnter Password" required>
                Dept.:
                <select class="signup" title="Dept." name="dept" style="background-color: brown"  required >  
                <option value="">Select Dept.</option>
                <option value="CS">CS</option>
                <option value="IT">IT</option>
                <option value="EC">EC</option>
                <option value="EE">EE</option>
                </select>
                <br>
                <center><input class="button" type="submit" value="Sign Up"></center>
            </form>
        </div>
    </div>
    
    
   </body>
</html>
