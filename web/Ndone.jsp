<%-- 
    Document   : Ndone
    Created on : 26 Jul, 2015, 8:38:01 AM
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
    <section id="adminbanner">
        <h2>HCST NOTES</h2>
        <h3>File Not Uploaded</h3>
        <br><p>File Already Present in Server Or Something Wrong Happened</p>
        <br><h2>Click here to Upload File</h2>
        <br><center><button class="button"><a href="#signupScreen">Upload File</a></button></center>       			
    </section>
    
    <!-- Footer -->
    <footer id="footer">
    <div class="copyright">
        <li>&copy; HCST NOTES. All rights reserved.</li>
    </div>
    </footer>
    
    <div id="signupScreen" class="form_">  
        <div style="background-color:brown ;width:100%;height:auto;float:right"> 
            <center><b>Upload</b></center>
            <a href="#" class="cancel">&times;</a>
        </div>
        <div align="center"><br><br><br>    
            <form action="UploadServlet" method="post" enctype="multipart/form-data">
                <input type="file" name="file" style="background-color: brown; border-color: white;" required/>               
                Select Branch:
                <select class="signup" title="Branch" name="branch" style="background-color: brown; border-color: white;"  required >    
                <option value="">BRANCH</option>
                <option value="CS">CS</option>
                <option value="IT">IT</option>
                <option value="EC">EC</option>
                <option value="EE">EE</option>
                </select>
                Select Year: 
                <select class="signup" style="background-color: brown; border-color: white;" title="Year" name="year" required >
                <option value="">YEAR</option>
                <option value="1">1st Year</option>
                <option value="2">2nd Year</option>
                <option value="3">3rd Year</option>
                <option value="4">4th Year</option>
                </select>
                Select Subject:
                <select class="signup" title="Subject" style="background-color: brown; border-color: white;" name="subject" required >
                <option value="">SUBJECT</option>
                <option value="SWE">SWE</option>
                <option value="CD">CD</option>
                <option value="ISCL">ISCL</option>
                <option value="CN">CN</option>
                <option value="WT">WT</option>
                <option value="OOT">OOT</option>
                <option value="CO">CO</option>
                <option value="DAA">DAA</option>
                <option value="DBMS">DBMS</option>
                </select>
                Select Unit: 
                <select class="signup" title="Unit" style="background-color: brown; border-color: white;" name="unit" required >
                <option value="">UNIT</option>
                <option value="U1">Unit 1</option>
                <option value="U2">Unit 2</option>
                <option value="U3">Unit 3</option>
                <option value="U4">Unit 4</option>
                <option value="U5">Unit 5</option>
                </select>
                <br>
                <center><input class="button" type="submit" value="Upload"></center>
            </form>
        </div>  
    </div>
</body>
</html>

