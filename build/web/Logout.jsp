<%-- 
    Document   : Logout
    Created on : 23 Jul, 2015, 7:28:49 AM
    Author     : Nikhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <meta charset="UTF-8">
    <title>HCST NOTES</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <link rel="stylesheet" href="style.css" />		
</head>
	
<body class="landing">
    
    <div id="header">
        <div id="header-content">
            <a href='index.jsp' class='button_'>Home</a>
        </div>
    </div>
    
        
   
    <!-- Banner -->
    <section id="banner">
        <% 
            session.invalidate();
        %>
        <h3>* You Are Successfully Logged Out *</h3>			
    </section>
    
    <!-- Footer -->
    <footer id="footer">
    <div class="copyright">
        <li>&copy; HCST NOTES. All rights reserved.</li>
    </div>
    </footer>
 
</body>
</html>
