package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.apache.catalina.connector.Response;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_catch_var;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_update_var_dataSource;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_catch_var = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_update_var_dataSource = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_catch_var.release();
    _jspx_tagPool_sql_update_var_dataSource.release();
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.release();
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("\t\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <title>HCST NOTES</title>\n");
      out.write("    <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("    <meta name=\"description\" content=\"\" />\n");
      out.write("    <meta name=\"keywords\" content=\"\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\" />\t\n");
      out.write("</head>\n");
      out.write("\t\n");
      out.write("<body class=\"landing\">\n");
      out.write("    \n");
      out.write("    <div id=\"header\">\n");
      out.write("        <div id=\"header-content\" style=\"float: left\">\n");
      out.write("            ");
      if (_jspx_meth_sql_setDataSource_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("            ");
      if (_jspx_meth_c_catch_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("            <a href='index.jsp' class='button_'>Home</a>\n");
      out.write("            <a href='about.jsp' class='button_'>About Us</a>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div id=\"header-content1\" style=\"float: right\">\n");
      out.write("            <form action=\"Login.jsp\" id=\"loginform\">\n");
      out.write("                <input id=\"username\" type=\"text\" required name=\"id\" placeholder=\"Student/Teacher ID\"/>\n");
      out.write("                <input id=\"password\" type=\"password\" required name=\"password\" placeholder=\"Password\"/>\n");
      out.write("                <input class=\"button_\" type=\"submit\" id=\"submit\" value=\"Log in\">\n");
      out.write("                <a href='#signupScreen' class=\"button_\" id=\"submit_\">New User? Sign Up</a>\n");
      out.write("            </form> \n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("            \n");
      out.write("    <!-- Banner -->\n");
      out.write("    <section id=\"banner\">\n");
      out.write("               <h2>HCST NOTES</h2>\n");
      out.write("               <p>Want Some Notes? you are at right place...</p>\n");
      out.write("    </section>\n");
      out.write("    \n");
      out.write("    <!-- Footer -->\n");
      out.write("    <footer id=\"footer\">\n");
      out.write("    <div class=\"copyright\">\n");
      out.write("        <li>&copy; HCST NOTES. All rights reserved.</li>\n");
      out.write("    </div>\n");
      out.write("    </footer>\n");
      out.write("    <div id=\"signupScreen\" class=\"form_\">  \n");
      out.write("        <div style=\"background-color:#76140f ;width:100%;height:auto;float:right\"> \n");
      out.write("            <center><b>Sign Up</b></center>\n");
      out.write("            <a href=\"#\" class=\"cancel\">&times;</a>\n");
      out.write("        </div>\n");
      out.write("        <div align=\"center\"><br><br><br>    \n");
      out.write("            <form action=\"Signup.jsp\">\n");
      out.write("                <input class=\"signup\" type=\"text\"  name=\"id\" placeholder=\"Enter Your ID\" required>\n");
      out.write("                <input class=\"signup\" type=\"text\"  name=\"f_name\" placeholder=\"First Name\" required >\n");
      out.write("                <input class=\"signup\" type=\"text\"  name=\"l_name\" placeholder=\"Last Name\" required >\n");
      out.write("                <input class=\"signup\" type=\"password\" name=\"password\" placeholder=\"Password\" required>\n");
      out.write("                <input class=\"signup\" type=\"password\" placeholder=\"ReEnter Password\" required>\n");
      out.write("                Branch:\n");
      out.write("                <select class=\"signup\" title=\"Branch\" name=\"branch\"  required > \n");
      out.write("                <option value=\"\">Select</option>    \n");
      out.write("                <option value=\"CS\">CS</option>\n");
      out.write("                <option value=\"IT\">IT</option>\n");
      out.write("                <option value=\"EC\">EC</option>\n");
      out.write("                <option value=\"EE\">EE</option>\n");
      out.write("                </select>\n");
      out.write("                Year: \n");
      out.write("                <select class=\"signup\" title=\"Year\" name=\"year\" required >\n");
      out.write("                <option value=\"\">Select</option>    \n");
      out.write("                <option value=\"1\">1st Year</option>\n");
      out.write("                <option value=\"2\">2nd Year</option>\n");
      out.write("                <option value=\"3\">3rd Year</option>\n");
      out.write("                <option value=\"4\">4th Year</option>\n");
      out.write("                </select>\n");
      out.write("                <br>\n");
      out.write("                <center><input class=\"button_\" type=\"submit\" id=\"signup\" value=\"Sign Up\"></center>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>");
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

  private boolean _jspx_meth_sql_setDataSource_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:setDataSource
    org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag _jspx_th_sql_setDataSource_0 = (org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag) _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.get(org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag.class);
    _jspx_th_sql_setDataSource_0.setPageContext(_jspx_page_context);
    _jspx_th_sql_setDataSource_0.setParent(null);
    _jspx_th_sql_setDataSource_0.setVar("usersql");
    _jspx_th_sql_setDataSource_0.setDriver("com.mysql.jdbc.Driver");
    _jspx_th_sql_setDataSource_0.setUrl("jdbc:mysql://localhost:3306/project");
    _jspx_th_sql_setDataSource_0.setUser("root");
    _jspx_th_sql_setDataSource_0.setPassword("3306");
    int _jspx_eval_sql_setDataSource_0 = _jspx_th_sql_setDataSource_0.doStartTag();
    if (_jspx_th_sql_setDataSource_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
      return true;
    }
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
    return false;
  }

  private boolean _jspx_meth_c_catch_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:catch
    org.apache.taglibs.standard.tag.common.core.CatchTag _jspx_th_c_catch_0 = (org.apache.taglibs.standard.tag.common.core.CatchTag) _jspx_tagPool_c_catch_var.get(org.apache.taglibs.standard.tag.common.core.CatchTag.class);
    _jspx_th_c_catch_0.setPageContext(_jspx_page_context);
    _jspx_th_c_catch_0.setParent(null);
    _jspx_th_c_catch_0.setVar("a");
    int[] _jspx_push_body_count_c_catch_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_catch_0 = _jspx_th_c_catch_0.doStartTag();
      if (_jspx_eval_c_catch_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("            ");
          if (_jspx_meth_sql_update_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_catch_0, _jspx_page_context, _jspx_push_body_count_c_catch_0))
            return true;
          out.write("\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_catch_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_catch_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_catch_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_catch_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_catch_0.doFinally();
      _jspx_tagPool_c_catch_var.reuse(_jspx_th_c_catch_0);
    }
    return false;
  }

  private boolean _jspx_meth_sql_update_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_catch_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_catch_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:update
    org.apache.taglibs.standard.tag.rt.sql.UpdateTag _jspx_th_sql_update_0 = (org.apache.taglibs.standard.tag.rt.sql.UpdateTag) _jspx_tagPool_sql_update_var_dataSource.get(org.apache.taglibs.standard.tag.rt.sql.UpdateTag.class);
    _jspx_th_sql_update_0.setPageContext(_jspx_page_context);
    _jspx_th_sql_update_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_catch_0);
    _jspx_th_sql_update_0.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${usersql}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_sql_update_0.setVar("rs");
    int[] _jspx_push_body_count_sql_update_0 = new int[] { 0 };
    try {
      int _jspx_eval_sql_update_0 = _jspx_th_sql_update_0.doStartTag();
      if (_jspx_eval_sql_update_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        if (_jspx_eval_sql_update_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
          out = _jspx_page_context.pushBody();
          _jspx_push_body_count_sql_update_0[0]++;
          _jspx_th_sql_update_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
          _jspx_th_sql_update_0.doInitBody();
        }
        do {
          out.write("\n");
          out.write("                Insert into list values (\"admin\",\"Nikhil\",\"Lalwani\",\"a\",\"admin\");\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_sql_update_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
        if (_jspx_eval_sql_update_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
          out = _jspx_page_context.popBody();
          _jspx_push_body_count_sql_update_0[0]--;
      }
      if (_jspx_th_sql_update_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_sql_update_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_sql_update_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_sql_update_0.doFinally();
      _jspx_tagPool_sql_update_var_dataSource.reuse(_jspx_th_sql_update_0);
    }
    return false;
  }
}
