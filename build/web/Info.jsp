<%-- 
    Document   : Info
    Created on : 14 Jul, 2015, 10:01:29 AM
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
            <a href='Student.jsp' class='button'>Back</a>
        </div>
        <div id="header-content1" style="float: right">
                <div id="loginform">
                <p>Welcome ${f_name} (Student) </p>
            </div>
        </div>
    </div>            
     <!-- Banner -->
    <section id="adminbanner">
           <div><h2>HCST NOTES</h2></div>
           <sql:setDataSource var="usersql" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="3306"/>
                <sql:query dataSource="${usersql}" var="rs">
                Select file_name from library where unit=? AND yea=? AND branch=? AND subject=? ;
                <sql:param value="${param.unit_}"/>
                <sql:param value="${param.year_}"/>
                <sql:param value="${param.branch_}"/>
                <sql:param value="${param.subject_}"/>
                </sql:query>
                <h3><c:out value="Available Notes in ${param.subject_} ${param.unit_}"></c:out></h3>
                <c:set var="no" value="0" scope="session"></c:set>
                <c:forEach var="r" items="${rs.rows}">
                    <p style="color: yellow;"><c:out value="${r.file_name}"></c:out></p>                      
                </c:forEach>
                <br><h3>Download</h3>
                <center><form action="Download.jsp" >
                <center hidden><input type="text" hidden placeholder="Do Not Write Here" name="branch" value="${param.branch_}"></center>
                <center hidden><input type="text" hidden placeholder="Do Not Write Here" name="year" value="${param.year_}"></center>
                <center hidden><input type="text" hidden placeholder="Do Not Write Here" name="subject" value="${param.subject_}"></center>
                <center hidden><input type="text" hidden placeholder="Do Not Write Here" name="unit" value="${param.unit_}"></center>
                <center><p>Copy & Paste here any file name from above list</p></center><br>
                <center><input type="text" placeholder="Paste File Name Here" style="background-color: brown; border-color: white;" name="file_name" required ></center><br>
                <center><input class="button" type="submit" value="Download"></center>
                </form></center>
    </section>
     
     <!-- Footer -->
    <footer id="footer">
    <div class="copyright">
        <li>&copy; HCST NOTES. All rights reserved.</li>
    </div>
    </footer>
    </body>
</html>
