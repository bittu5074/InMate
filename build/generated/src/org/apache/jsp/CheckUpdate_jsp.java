package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.DriverManager;
import oracle.jdbc.OraclePreparedStatement;
import oracle.jdbc.OracleResultSet;
import oracle.jdbc.OracleStatement;
import oracle.jdbc.OracleConnection;

public final class CheckUpdate_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


        OracleConnection oconn;
        OracleStatement ost;
        OraclePreparedStatement ost1;
        OracleResultSet ors;
                
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Continue</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("               ");
      out.write("\n");
      out.write("                \n");
      out.write("               ");

            try {
                 String mail = request.getParameter("checkemail");
                 String password = request.getParameter("checkpassword");
                 String name = request.getParameter("checkname");
                 String contact = request.getParameter("checkcontact");
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@Asus-Vivobook-14:1521:orcl","inmate","project");
            ost = (OracleStatement) oconn.createStatement();
            String q = "select * from userdetails where email = '"+mail+"'";
            ors = (OracleResultSet)ost.executeQuery(q);
                int count = 0;
                while (ors.next()){
                    count++;
                }
                if (count > 0){
                    String p = "update userdetails set password = ? , name = ? , mobile = ? where email = ?";
                    ost1 =(OraclePreparedStatement) oconn.prepareStatement(p);
                    ost1.setString(1, password);
                    ost1.setString(2, name);
                    ost1.setString(3, contact);
                    ost1.setString(4, mail);
                    ost1.executeUpdate();
                    response.sendRedirect("http://localhost:8080/InMate/UserSuccess");

                } else {
                    response.sendRedirect("http://localhost:8080/InMate/UserFailed");
                }
                oconn.close();
            } catch (SQLException ex){out.println(ex.getMessage().toString());}
            
      out.write("\n");
      out.write("    </body>\n");
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
}
