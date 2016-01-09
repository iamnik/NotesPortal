<%-- 
    Document   : ChangePass
    Created on : 24 Jul, 2015, 10:06:23 AM
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
       </div>
        <div id="header-content1" style="float: right">
             <div id="loginform">
                <p>Welcome ${f_name}</p>
            </div>
        </div>
    </div>
            
        <sql:setDataSource var="usersql" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="3306"/>
        <sql:update dataSource="${usersql}" var="rs">
            UPDATE list SET password=? WHERE id=?;
                    <sql:param value="${param.password_}"/>
                    <sql:param value="${param.id_}"/>
        </sql:update>    
        
            
    <!-- Banner -->
    <section id="adminbanner" style="padding: 3em 0em 13.20em;">
        <h2>HCST NOTES</h2>
        
        <br>
        <sql:query dataSource="${usersql}" var="rs">
        Select u_type from list where id = ?;
        <sql:param value="${sessionScope['loginUser']}"/>
        </sql:query>
        <c:forEach var="r" items="${rs.rows}">
            <c:choose>
            <c:when test="${(r.u_type == 'a')}">
                <center><a href='Admin.jsp' class='button'>Back</a></center>
            </c:when>
            </c:choose>
            <c:choose>
            <c:when test="${(r.u_type == 's')}">
                <sql:update dataSource="${usersql}" var="rs">
                    UPDATE student SET password=? WHERE id=?;
                    <sql:param value="${param.password_}"/>
                    <sql:param value="${sessionScope['loginUser']}"/>
                </sql:update>
                <h3>PASSWORD SUCCESSFULLY CHANGED</h3>    
                <center><a href='Student.jsp' class='button'>Back</a></center>
            </c:when>
            <c:when test="${(r.u_type == 't')}">
                <sql:update dataSource="${usersql}" var="rs">
                    UPDATE teacher SET password=? WHERE id=?;
                    <sql:param value="${param.password_}"/>
                    <sql:param value="${sessionScope['loginUser']}"/>
                </sql:update>
                <h3>PASSWORD SUCCESSFULLY CHANGED</h3>    
                <center><a href='Teacher.jsp' class='button'>Back</a></center>
            </c:when>
            <c:otherwise>
                <br><h3>ACCOUNT NOT FOUND</h3>
                <h3>PASSWORD CANNOT BE CHANGED</h3>
            </c:otherwise>    
            </c:choose>
        </c:forEach>
        
    </section>
    
    <!-- Footer -->
    <footer id="footer">
    <div class="copyright">
        <li>&copy; HCST NOTES. All rights reserved.</li>
    </div>
    </footer>
</body>
</html>

