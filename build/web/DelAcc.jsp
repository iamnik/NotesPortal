<%-- 
    Document   : DelAcc
    Created on : 25 Jul, 2015, 5:54:37 AM
    Author     : Nikhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <a href='Admin.jsp' class='button'>Back</a>
       </div>
        <div id="header-content1" style="float: right">
             <div id="loginform">
                <p>Welcome ${f_name}</p>
            </div>
        </div>
    </div>
            
        <sql:setDataSource var="usersql" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="3306"/>
        <c:set var="a" value="1"></c:set>           
    <!-- Banner -->
    <section id="adminbanner" style="padding: 3em 0em 19.5em;" >
        <h2>HCST NOTES</h2>
        <br>
        <sql:query dataSource="${usersql}" var="rs">
        Select u_type from list where id = ?;
        <sql:param value="${param.id_}"/>
        </sql:query>
        <c:forEach var="r" items="${rs.rows}">
            <c:choose>    
            <c:when test="${(r.u_type == 's')}">
                <sql:update dataSource="${usersql}" var="rs">
                    DELETE FROM student WHERE id=?;
                    <sql:param value="${param.id_}"/>
                </sql:update>
                <sql:update dataSource="${usersql}" var="rs">
                    DELETE FROM list WHERE id=?;
                    <sql:param value="${param.id_}"/>
                </sql:update> 
                <h3>ACCOUNT DELETED</h3>
                <c:set var="a" value="2"></c:set>
            </c:when>
            <c:when test="${(r.u_type == 't')}">
                <sql:update dataSource="${usersql}" var="rs">
                    DELETE FROM teacher WHERE id=?;
                    <sql:param value="${param.id_}"/>
                </sql:update>
                <sql:update dataSource="${usersql}" var="rs">
                    DELETE FROM list WHERE id=?;
                    <sql:param value="${param.id_}"/>
                </sql:update>
                <h3>ACCOUNT DELETED</h3>
                <c:set var="a" value="2"></c:set>
            </c:when>
            </c:choose> 
        </c:forEach>
    
    <c:if test="${param.id_ == sessionScope['loginUser']}">
        <c:set var="a" value="3"></c:set>
    </c:if> 
                
    <c:if test="${a==1}">
        <h3>ACCOUNT NOT FOUND</h3>
    </c:if>        
    
    <c:if test="${a==3}">
        <h3>YOU CAN NOT DELETE THIS ACCOUNT</h3>
    </c:if>    
    </section>
    
    <!-- Footer -->
    <footer id="footer">
    <div class="copyright">
        <li>&copy; HCST NOTES. All rights reserved.</li>
    </div>
    </footer>
</body>
</html>
