package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OracleResultSet;
import oracle.jdbc.OracleStatement;
import oracle.jdbc.OracleConnection;

public final class AdminProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            OracleConnection oconn;
            OracleStatement ost;
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<title>InMate | Admin Profile</title>\n");
      out.write("\t<meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/admin-profile.css\">\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"assets/admin.png\" />\n");
      out.write("        <script src=\"js/alert.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            window.history.forward();\n");
      out.write("                document.addEventListener('contextmenu',\n");
      out.write("                event => event.preventDefault());\n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("            .prof {\n");
      out.write("                transition: height 1s, width 1s, transform 2s;\n");
      out.write("            }\n");
      out.write("            .prof:hover {\n");
      out.write("                  width: 300px;\n");
      out.write("                  height: 300px;\n");
      out.write("/*                  transform: rotate(360deg);*/\n");
      out.write("                    transform: scale(1);\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("</head>\n");
      out.write("<body style=\"background-image: url('adback.png');background-position: center;background-size: cover;\">\n");
      out.write("               ");
      out.write("                  \n");
      out.write("\t<section class=\"py-5 my-5\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("                    <div class=\"bg-white shadow rounded-lg d-block d-sm-flex\">\n");
      out.write("\t\t\t\t<div class=\"profile-tab-nav border-right\">\n");
      out.write("\t\t\t\t\t<div class=\"p-4\">\n");
      out.write("\t\t\t\t\t\t<div class=\"img-circle text-center mb-3\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"assets/admin_face.png\" alt=\"Image\" class=\"shadow prof\">\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("                   ");

            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@Asus-Vivobook-14:1521:orcl","inmate","project");
            ost = (OracleStatement) oconn.createStatement();
            String q = "select * from admin";
            ors = (OracleResultSet)ost.executeQuery(q);
                   
      out.write("\n");
      out.write("                                       ");

                                        while(ors.next())
                                            {
                                        
      out.write("\n");
      out.write("\t\t\t\t<h4 class=\"text-center\">");
      out.print(ors.getString("Name"));
      out.write("</h4>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"nav flex-column nav-pills\" id=\"v-pills-tab\" role=\"tablist\" aria-orientation=\"vertical\">\n");
      out.write("\t\t\t\t\t\t<a class=\"nav-link active\" id=\"account-tab\" data-toggle=\"pill\" href=\"#account\" role=\"tab\" aria-controls=\"account\" aria-selected=\"true\"\n");
      out.write("                                                   >\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-user text-center mr-1\"></i> \n");
      out.write("\t\t\t\t\t\t\tAccount\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t<a class=\"nav-link\" id=\"password-tab\" data-toggle=\"pill\" href=\"#password\" role=\"tab\" aria-controls=\"password\" aria-selected=\"false\"\n");
      out.write("                                                   >\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-key text-center mr-1\"></i> \n");
      out.write("\t\t\t\t\t\t\tPassword\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t<a class=\"nav-link\" id=\"security-tab\" data-toggle=\"pill\" href=\"#security\" role=\"tab\" aria-controls=\"security\" aria-selected=\"false\">\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-lock text-center mr-1\"></i>\n");
      out.write("\t\t\t\t\t\t\tSecurity\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"tab-content p-4 p-md-5\" id=\"v-pills-tabContent\">\n");
      out.write("\t\t\t\t\t<div class=\"tab-pane fade show active\" id=\"account\" role=\"tabpanel\" aria-labelledby=\"account-tab\">\n");
      out.write("                                            <form action=\"AdminDisplay.jsp\" method=\"POST\">\n");
      out.write("\t\t\t\t\t\t<h3 class=\"mb-4\">Account Information</h3>\n");
      out.write("\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-md-6\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t  \t<label>Name</label>\n");
      out.write("                                                                        <input type=\"text\" class=\"form-control\" value=\"");
      out.print(ors.getString("Name"));
      out.write("\" disabled=\"true\">\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-md-6\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t  \t<label>Email</label>\n");
      out.write("                                                                        <input type=\"text\" class=\"form-control\" value=\"");
      out.print(ors.getString("Username"));
      out.write("\" disabled=\"true\">\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("                                                        ");

                                                            }
                                                       
      out.write("\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-md-6\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t  \t<label>Company</label>\n");
      out.write("                                                                        <input type=\"text\" class=\"form-control\" value=\"InMate\" disabled=\"true\">\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("                                                <div>\n");
      out.write("                                                    <button class=\"btn btn-primary\" style=\"width: 20%;background: #c3581c;border: 1px solid #c3581c;\">Back</button>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("                                            </form>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"tab-pane fade\" id=\"password\" role=\"tabpanel\" aria-labelledby=\"password-tab\">\n");
      out.write("                                            <form action=\"ChangeAdminPass.jsp\" method=\"POST\" onsubmit=\"return checkValid()\">\n");
      out.write("\t\t\t\t\t\t<h3 class=\"mb-4\">Password Settings</h3>\n");
      out.write("                                                    <div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-md-6\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t  \t<label>Enter Secret Key</label>\n");
      out.write("                                                                        <input type=\"text\" class=\"form-control\" required=\"true\" maxlength=\"16\" name=\"adkey\">\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-md-6\">                                                           \n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t  \t<label>New Password</label>\n");
      out.write("                                                                        <input name=\"adpass\" id=\"adpass\" type=\"password\" class=\"form-control\" required=\"true\" maxlength=\"16\" pattern=\"^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,16}$\" title=\"Password must contain uppercase character, lowercase character, special character as well as having minimum 8 characters long\">\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-md-6\">                                                          \n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t  \t<label>Confirm New Password</label>\n");
      out.write("                                                                        <input id=\"adconf\" type=\"password\" class=\"form-control\" required=\"true\" maxlength=\"16\">\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("                                                   <div>\n");
      out.write("                                                    <button class=\"btn btn-primary\" style=\"width: 20%;background: #c3581c;border: 1px solid #c3581c;\">Update</button>\n");
      out.write("                                                   </div>\n");
      out.write("                                            </form>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"tab-pane fade\" id=\"security\" role=\"tabpanel\" aria-labelledby=\"security-tab\">\n");
      out.write("                                            <form action=\"admin.jsp\" method=\"POST\">\n");
      out.write("\t\t\t\t\t\t<h3 class=\"mb-4\">Security Settings</h3>\n");
      out.write("\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-md-6\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-check\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input class=\"form-check-input\" type=\"checkbox\" value=\"\" id=\"recovery\" required=\"true\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<label class=\"form-check-label\" for=\"recovery\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\tLogout from all devices\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div>\n");
      out.write("                                                    <button class=\"btn btn-primary\" style=\"width: 20%;background: #c3581c;border: 1px solid #c3581c;\">Take Action</button>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("                                            </form>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</section>\n");
      out.write("\t<script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\"></script>\n");
      out.write("\t<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\"></script>\n");
      out.write("\t<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <script>\n");
      out.write("         window.oncontextmenu = function () {\n");
      out.write("             Swal.fire(\n");
      out.write("            'Security Alert',\n");
      out.write("            'Right-Click and Input-Facilities are disabled for security reason.',\n");
      out.write("            'warning'\n");
      out.write("            )\n");
      out.write("          }\n");
      out.write("            function checkValid(){\n");
      out.write("                if (document.getElementById('adpass').value !== document.getElementById('adconf').value){\n");
      out.write("                    Swal.fire('Oops !','Confirmation password didn\\'t match','error');\n");
      out.write("                    return false;\n");
      out.write("                } else {\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
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
}
