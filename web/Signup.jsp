<%-- 
    Document   : Signup
    Created on : 12 Jul, 2015, 4:47:19 PM
    Author     : Nikhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <title>Sign Up</title>
    </head>
    <body class="landing">
    
    <div id="header">
        <div id="header-content" style="float: left">
            <a href='index.jsp' class='button'>Home</a>
        </div>
        <div id="header-content1" style="float: right">
            <form action="Login.jsp" id="loginform">
                <input id="username" type="text" required name="id" placeholder="Student/Teacher ID"/>
                <input id="password" type="password" required name="password" placeholder="Password"/>
                <input class="button" type="submit" id="submit" value="Log in">
                <a href='#signupScreen' class="button_" id="submit_">New User? Sign Up</a>
            </form>             
        </div>
    </div>
        
    <section id="banner">    
        <c:catch var="catchException">
        <sql:setDataSource var="usersql" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="3306"/>
        <sql:update dataSource="${usersql}" var="rs">
            INSERT INTO student VALUES( ?, ?, ?, ?, ?, ?);
                    <sql:param value="${param.id}"/>
                    <sql:param value="${param.f_name}"/>
                    <sql:param value="${param.l_name}"/>
                    <sql:param value="${param.password}"/>
                    <sql:param value="${param.branch}"/>
                    <sql:param value="${param.year}"/>
        </sql:update>           
        <sql:update dataSource="${usersql}" var="rs">
            INSERT INTO list VALUES( ?, ?, ?, ?, ? );
                    <sql:param value="${param.id}"/>
                    <sql:param value="${param.f_name}"/>
                    <sql:param value="${param.l_name}"/>
                    <sql:param value="s"/>
                    <sql:param value="${param.password}"/>
        </sql:update>
        </c:catch>
                    
                        <c:choose>
                            <c:when test="${catchException != null}">
                               <h2>USER ALREADY EXIST</h2> 
                               <p>ID ${param.id}</p>
                            </c:when>
                        <c:otherwise>
                           <h2>Account created</h2>
                           <p>ID: ${param.id}, Name: ${param.f_name} ${param.l_name} </p>
                        </c:otherwise>
                        </c:choose>
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
