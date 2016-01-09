<%-- 
    Document   : Student
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
            <a href='Logout.jsp' class='button'>Logout</a>
        </div>
        <div id="header-content1" style="float: right">
            <sql:setDataSource var="usersql" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="3306"/>
                <sql:query dataSource="${usersql}" var="rs">
                Select * from student where id = ?;
                <sql:param value="${sessionScope['loginUser']}"/>                
                </sql:query>
                <c:forEach var="r" items="${rs.rows}">
                        <c:set var="f_name" value="${r.f_name}" scope="session"></c:set>
                        <c:set var="l_name" value="${r.l_name}" scope="session"></c:set>
                        <c:set var="branch" value="${r.branch}" scope="session"></c:set>
                        <c:set var="year" value="${r.year}" scope="session"></c:set>
                </c:forEach>
            <div id="loginform">
                <p>Welcome ${f_name} (Student) </p>
            </div>
            
        </div>
            
    </div>
    
           
    <!-- Banner -->
    <section id="adminbanner" style="padding: 3em 0em 10em;">
           <div><h2>HCST NOTES</h2></div>
           <p>This is Student Page where Student can Search Notes & Download them.</p><br><br> 
           <center><a class="button" href="#signupScreen">Search Notes</a></center><br> 
           <center><a class="button" href="#changePass">Change Password</a></center>
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
                <center hidden><input type="text" value="${sessionScope['loginUser']}" name="id_"></center>
                <center><input type="password" style="background-color: brown; border-color: white;" placeholder="Enter New Password" name="password_"></center>
                <br>
                <center><input type="submit" class="button"></center>
            </form>
        </div>
    </div>    
                <div id="signupScreen" class="form_" style="height: auto;">  
        <div style="background-color:brown ;width:100%;height:auto;float:right"> 
            <center><b>Search Notes</b></center>
            <a href="#" class="cancel">&times;</a>
        </div>
        <div align="center"><br><br><br>             
               <form action="Info.jsp">
                   <center>Branch:<input type="text" style="background-color: brown; border-color: white;" value="${branch}" name="branch_" ></center>
                <center>Year:<input type="text" value="${year}" style="background-color: brown; border-color: white;" name="year_" ></center>
                <center>Select Subject:</center>
                <center><select class="signup" title="Subject" name="subject_" required style=" background-color: brown; border-color: white; " >
                <option value="">----------</option>
                <option value="SWE">SWE</option>
                <option value="CD">CD</option>
                <option value="ISCL">ISCL</option>
                <option value="CN">CN</option>
                <option value="WT">WT</option>
                <option value="OOT">OOT</option>
                <option value="CO">CO</option>
                <option value="DAA">DAA</option>
                <option value="DBMS">DBMS</option>
                </select></center>
                <center>Select Unit:</center> 
                <center><select class="signup" title="Unit" name="unit_" required style="background-color: brown; border-color: white; " >
                <option value="">----------</option>
                <option value="U1">Unit 1</option>
                <option value="U2">Unit 2</option>
                <option value="U3">Unit 3</option>
                <option value="U4">Unit 4</option>
                <option value="U5">Unit 5</option>
                </select></center>
                <br>
                <center><input class="button" type="submit" value="Search"></center>
               </form>     
           </div>
        </div>
</body>
</html>
