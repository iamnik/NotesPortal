<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.IOException,java.io.PrintWriter,javax.servlet.ServletException, javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.*,javax.servlet.RequestDispatcher" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <link rel="stylesheet" href="style.css" />		
    <title>Home</title>
    </head>
    <div id="header">
        <div id="header-content" style="float: left">
            <a href='index.jsp' class='button_'>Home</a>
        </div>
        <div id="header-content1" style="float: right">    
            <form action="Login.jsp" id="loginform">
                <input id="username" type="text" required name="id" placeholder="Student/Teacher ID"/>
                <input id="password" type="password" required name="password" placeholder="Password"/>
                <input class="button_" type="submit" id="submit" value="Log in">
                <a href='#signupScreen' class="button_" id="submit_">New User? Sign Up</a>
            </form> 
        </div>
    </div>
        
    <section id="banner">    
        
                               <h2>USER NOT FOUND</h2>
                               <p>WRONG ID OR PASSWORD</p>
    <sql:setDataSource var="usersql" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="3306"/>
    <sql:query dataSource="${usersql}" var="rs">
        Select u_type from list where id = ? and password = ?;
        <sql:param value="${param.id}"/>
        <sql:param value="${param.password}"/>
    </sql:query>
        <c:forEach var="r" items="${rs.rows}">
            <c:choose>
            <c:when test="${(r.u_type == 'a')}">
                <c:set scope="session" var="loginUser" value="${param.id}"/>
                <c:redirect url="Admin.jsp"/>
            </c:when>
            </c:choose>
            <c:choose>
            <c:when test="${(r.u_type == 's')}">
                <c:set scope="session" var="loginUser" value="${param.id}"/>
                <c:redirect url="Student.jsp"/>                
            </c:when>
            </c:choose>
            <c:choose>
            <c:when test="${(r.u_type == 't')}">
                <c:set scope="session" var="loginUser" value="${param.id}"/>
                <c:redirect url="Teacher.jsp"/>
            </c:when>
            </c:choose>
        </c:forEach>
        </section>
    <!-- Footer -->
    <footer id="footer">
    <div class="copyright">
        <li>&copy; HCST NOTES. All rights reserved.</li>
    </div>
    </footer>
    
    <div id="signupScreen" class="form_">  
        <div style="background-color:#76140f ;width:100%;height:auto;float:right"> 
            <center><b>Sign Up</b></center>
            <a href="#" class="cancel">&times;</a>
        </div>
        <div align="center"><br><br><br>    
            <form action="Signup.jsp">
                <input class="signup" type="text"  name="id" placeholder="Enter Your ID" required>
                <input class="signup" type="text"  name="f_name" placeholder="First Name" required >
                <input class="signup" type="text"  name="l_name" placeholder="Last Name" required >
                <input class="signup" type="password" name="password" placeholder="Password" required>
                <input class="signup" type="password" placeholder="ReEnter Password" required>
                Branch:
                <select class="signup" title="Branch" name="branch"  required > 
                <option value="">Select</option>    
                <option value="CS">CS</option>
                <option value="IT">IT</option>
                <option value="EC">EC</option>
                <option value="EE">EE</option>
                </select>
                Year: 
                <select class="signup" title="Year" name="year" required >
                <option value="">Select</option>    
                <option value="1">1st Year</option>
                <option value="2">2nd Year</option>
                <option value="3">3rd Year</option>
                <option value="4">4th Year</option>
                </select>
                <br>
                <center><input class="signup" type="submit" id="signup" value="Sign Up"></center>
            </form>
        </div>
    </div>
    
    </body>
</html>
