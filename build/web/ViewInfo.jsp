<%-- 
    Document   : ViewInfo
    Created on : 24 Jul, 2015, 11:53:52 AM
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
            <a href='Teacher.jsp' class='button'>Back</a>
       </div>
        <div id="header-content1" style="float: right">
             <div id="loginform">
                <p>Welcome ${f_name} (Teacher)</p>
            </div>
        </div>
    </div>
            
            
    <!-- Banner -->
    <section id="adminbanner" style="padding: 3em 0em 15em;" >
        <h2>HCST NOTES</h2>
        <h3>Student Information</h3>
        <br>
        <sql:setDataSource var="usersql" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="3306"/>
        <sql:query dataSource="${usersql}" var="rs">
            SELECT * FROM student WHERE id=?;
                    <sql:param value="${param.id_}"/>
        </sql:query>
        <c:forEach var="r" items="${rs.rows}">
            <center><br><c:out value="Name: ${r.f_name} ${r.l_name}"></c:out></center>
            <center><br><c:out value="Branch: ${r.branch}"></c:out></center>
            <center><br><c:out value="Year: ${r.year}"></c:out></center>
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

