<%-- 
    Document   : DeleteFile
    Created on : 25 Jul, 2015, 1:14:19 PM
    Author     : Nikhil
--%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page import="java.io.File"%>

<%!
    String filename,branch,subject,year,unit;
%>

<%  
    filename=(String)request.getParameter("file_name");
    branch=(String)request.getParameter("branch");
    year=(String)request.getParameter("year");
    unit=(String)request.getParameter("unit");
    subject=(String)request.getParameter("subject");
    
  String filePath="C:\\Notes\\"+branch+"\\"+year+"\\"+subject+"\\"+unit+"\\"+filename;   
     
  File f=new File(filePath);
  boolean flag=f.delete();
%>

<c:catch var="catchException">
<sql:setDataSource var="usersql" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/project" user="root" password="3306"/>
<sql:update dataSource="${usersql}" var="rs">
    DELETE FROM library WHERE file_name=?;
    <sql:param value="${param.file_name}"/>
</sql:update>
</c:catch>

<%  
  if(flag)
  {
    RequestDispatcher rd=request.getRequestDispatcher("Tdone.jsp");
    rd.forward(request,response);
  }
  else
  {
      RequestDispatcher rd=request.getRequestDispatcher("Teacher.jsp");
      rd.forward(request,response);
  }
%>   

