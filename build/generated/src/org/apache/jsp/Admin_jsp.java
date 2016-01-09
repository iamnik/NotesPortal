package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Admin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("   <head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <title>HCST NOTES</title>\n");
      out.write("    <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("    <meta name=\"description\" content=\"\" />\n");
      out.write("    <meta name=\"keywords\" content=\"\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\" />\t\t\n");
      out.write("</head>\n");
      out.write("\t\n");
      out.write("<body class=\"landing\">\n");
      out.write("    \n");
      out.write("    <div id=\"header\">\n");
      out.write("        <div id=\"header-content\">\n");
      out.write("            <a href='index1.html' class='button'>Home</a>\n");
      out.write("            <a href='#' class='button'>About Us</a>\n");
      out.write("            <form action=\"Login.jsp\" id=\"loginform\">\n");
      out.write("                <input id=\"username\" type=\"text\" required name=\"username\" placeholder=\"Student/Teacher ID\"/>\n");
      out.write("                <input id=\"password\" type=\"password\" required name=\"password\" placeholder=\"Password\"/>\n");
      out.write("                <input class=\"button\" type=\"submit\" id=\"submit\" value=\"Log in\">\n");
      out.write("                <a href='#signupScreen' class=\"button_\" id=\"submit_\">New User? Sign Up</a>\n");
      out.write("            </form> \n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("        \n");
      out.write("   \n");
      out.write("    <!-- Banner -->\n");
      out.write("    <section id=\"banner\">\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <h2>HCST NOTES</h2>\n");
      out.write("        <p>Want some notes? you are at right place...</p>\t\t\t\n");
      out.write("    </section>\n");
      out.write("    \n");
      out.write("    <!-- Footer -->\n");
      out.write("    <footer id=\"footer\">\n");
      out.write("    <div class=\"copyright\">\n");
      out.write("        <li>&copy; HCST NOTES. All rights reserved.</li>\n");
      out.write("    </div>\n");
      out.write("    </footer>\n");
      out.write("    <div id=\"signupScreen\">  \n");
      out.write("        <div style=\"background-color:#76140f ;width:100%;height:auto;float:right\"> \n");
      out.write("            <center><b>Sign Up</b></center>\n");
      out.write("            <a href=\"#\" class=\"cancel\">&times;</a>\n");
      out.write("        </div>\n");
      out.write("        <div align=\"center\"><br><br><br>    \n");
      out.write("            <form action=\"Signup.jsp\">\n");
      out.write("                <input class=\"signup\" type=\"text\" id=\"f_name\" name=\"fName\" placeholder=\"First Name\" required >\n");
      out.write("                <input class=\"signup\" type=\"text\" id=\"l_name\" name=\"lName\" placeholder=\"Last Name\" required >\n");
      out.write("                <input class=\"signup\" type=\"text\" id=\"username_\" name=\"ID\" placeholder=\"Enter Your ID\" required>\n");
      out.write("                <input class=\"signup\" type=\"password\" id=\"password_\" name=\"Password\" placeholder=\"Password\" required>\n");
      out.write("                <input class=\"signup\" type=\"password\" id=\"password_\" name=\"Password_\" placeholder=\"ReEnter Password\" required>\n");
      out.write("                Branch:\n");
      out.write("                <select class=\"signup\" title=\"Branch\"  required >    \n");
      out.write("                <option value=\"cs\">CS</option>\n");
      out.write("                <option value=\"it\">IT</option>\n");
      out.write("                <option value=\"ec\">EC</option>\n");
      out.write("                <option value=\"ee\">EE</option>\n");
      out.write("                </select>\n");
      out.write("                Year: \n");
      out.write("                <select class=\"signup\" title=\"Year\" required >\n");
      out.write("                <option value=\"1\">1st Year</option>\n");
      out.write("                <option value=\"2\">2nd Year</option>\n");
      out.write("                <option value=\"3\">3rd Year</option>\n");
      out.write("                <option value=\"4\">4th Year</option>\n");
      out.write("                </select>\n");
      out.write("                <br>\n");
      out.write("                <center><input class=\"signup\" type=\"submit\" id=\"signup\" value=\"Sign Up\"></center>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
