package com.hpes.project;

import com.mysql.jdbc.Connection;
import java.io.*;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
public class UploadServlet extends HttpServlet {
   private boolean isMultipart;
   private String filePath;
   private final int maxFileSize = 50*1024*1024;
   private final int maxMemSize = 50*1024;
   private File file ;
   String branch,unit,year,subject;
   String fieldName,fileName,contentType;
   @Override
   public void init( ) {
      // Get the file location where it would be stored.
   }
   @Override
   public void doPost(HttpServletRequest request, 
               HttpServletResponse response)
              throws ServletException, java.io.IOException {
      // Check that we have a file upload request
     //PrintWriter ut = response.getWriter( );
      isMultipart = ServletFileUpload.isMultipartContent(request);
      response.setContentType("text/html");
      java.io.PrintWriter out = response.getWriter( );
      if( !isMultipart ){
         out.println("<html>");
         out.println("<head>");
         out.println("<title>Servlet upload</title>");  
         out.println("</head>");
         out.println("<body>");
         out.println("<p>No file uploaded</p>"); 
         out.println("</body>");
         out.println("</html>");
         return;
      }
      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File("C:\\tmp"));
      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );
      try{ 
      // Parse the request to get file items.
      List fileItems = upload.parseRequest(request);
      // Process the uploaded file items
      Iterator i = fileItems.iterator();
      FileItem fi = null;
      while ( i.hasNext () ) 
      { 
         fi = (FileItem)i.next();
         String inputName = (String)fi.getFieldName();
         if ( fi.isFormField () )
          {   
              if(inputName.equalsIgnoreCase("year"))
            { 
                year = (String)fi.getString();                
            }
                if(inputName.equalsIgnoreCase("unit"))
            { 
                unit = (String)fi.getString();                
            }
               if(inputName.equalsIgnoreCase("subject"))
            { 
                subject = (String)fi.getString();               
            }
              if(inputName.equalsIgnoreCase("branch"))
            { 
                branch = (String)fi.getString();      
            }
         }
         if ( !fi.isFormField () )	
         {
            // Get the uploaded file parameters
             fieldName = fi.getFieldName();
             fileName = fi.getName();
             contentType = fi.getContentType();
            boolean isInMemory = fi.isInMemory();
            long sizeInBytes = fi.getSize();  
         }
      }
      filePath="C:\\Notes\\"+branch+"\\"+year+"\\"+subject+"\\"+unit+"\\";
          if( fileName.lastIndexOf("\\") >= 0 ){
               file = new File( filePath + fileName.substring( fileName.lastIndexOf("\\"))) ;
            }else{
               file = new File( filePath + fileName.substring(fileName.lastIndexOf("\\")+1)) ;      
            }
          Connection con=null;
          try
        {       
            Class.forName("com.mysql.jdbc.Driver");
            con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","3306");
            System.out.println(".....connection successful");
        }
	catch(SQLException e)
	{
	    System.err.println(e.getMessage());
	    RequestDispatcher rd=request.getRequestDispatcher("Ndone.jsp");
            rd.forward(request,response);
        }
        catch(ClassNotFoundException e)
        {
            System.err.println(e.getMessage());
            RequestDispatcher rd=request.getRequestDispatcher("Ndone.jsp");
            rd.forward(request,response);
        }
     try
	{            
       Statement st;
       st = con.createStatement();
       if(branch!=null && year!=null && subject!=null && unit!=null && fileName!=null)
         {
             
             int rs=st.executeUpdate("INSERT INTO library VALUES('"+branch+"','"+year+"','"+subject+"','"+unit+"','"+fileName+"')");
             fi.write( file ) ;  
             RequestDispatcher rd=request.getRequestDispatcher("done.jsp");
             rd.forward(request,response);
         }
        }
          catch(SQLException p)
          {
              System.err.println("SQL EXCEPTION :"+p);
              RequestDispatcher rd=request.getRequestDispatcher("Ndone.jsp");
              rd.forward(request,response);
          }    
        }catch(Exception ex) {
                
                System.out.println(ex);
                RequestDispatcher rd=request.getRequestDispatcher("Ndone.jsp");
                rd.forward(request,response);
   }
   }
   @Override
   public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException 
   { 
        throw new ServletException("GET method used with " +
                getClass( ).getName( )+": POST method required."); 
   } 
}