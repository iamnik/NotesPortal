<%-- 
    Document   : Download
    Created on : 11 Jul, 2015, 8:44:14 AM
    Author     : Nikhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    String filename,branch,subject,year,unit;
%>
<% 
    java.io.FileInputStream fileInputStream=null;
    int i;
   try{
    
    filename=(String)request.getParameter("file_name");
    branch=(String)request.getParameter("branch");
    year=(String)request.getParameter("year");
    unit=(String)request.getParameter("unit");
    subject=(String)request.getParameter("subject");
    
  //String filename = "test.txt";   
  String filePath="C:\\Notes\\"+branch+"\\"+year+"\\"+subject+"\\"+unit+"\\";   
  response.setContentType("APPLICATION/OCTET-STREAM");   
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");  
  fileInputStream=new java.io.FileInputStream(filePath + filename);  
  }
 catch(Exception e)
 {
    System.err.println(e.getMessage());
 }
  if(fileInputStream != null)
  {
    while ((i=fileInputStream.read()) != -1) {  
    out.write(i);   
  }   
  fileInputStream.close();
  }
  else
  { 
    RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
    rd.forward(request,response);  
  }
%>   
