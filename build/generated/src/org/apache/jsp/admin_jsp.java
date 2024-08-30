package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("\t<title>InMate | Admin Login</title>\r\n");
      out.write("\t<meta charset=\"UTF-8\">\r\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<!--===============================================================================================-->\t\r\n");
      out.write("\t<link rel=\"icon\" type=\"image/png\" href=\"assets/admin.png\"/>\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/bootstrap/css/bootstrap.min.css\">\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"fonts/font-awesome-4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/animate/animate.css\">\r\n");
      out.write("<!--===============================================================================================-->\t\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/css-hamburgers/hamburgers.min.css\">\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/select2/select2.min.css\">\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/util.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/adminst.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"fonts/material-icon/css/material-design-iconic-font.min.css\">\r\n");
      out.write("        <script src=\"js/alert.js\"></script>\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("   <script>\r\n");
      out.write("                document.addEventListener('contextmenu',\r\n");
      out.write("                event => event.preventDefault());\r\n");
      out.write("                window.history.forward();\r\n");
      out.write(" </script>\r\n");
      out.write("\t<div class=\"limiter\">\r\n");
      out.write("\t\t<div class=\"container-login100\">\r\n");
      out.write("\t\t\t<div class=\"wrap-login100\">\r\n");
      out.write("\t\t\t\t<div class=\"login100-pic js-tilt\" data-tilt style=\"margin-top: -100px\">\r\n");
      out.write("\t\t\t\t\t<img src=\"assets/admin.png\" alt=\"IMG\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<form class=\"login100-form validate-form\" action=\"adminLogConfirm.jsp\" onsubmit=\"return validate()\" style=\"margin-top: -100px\">\r\n");
      out.write("\t\t\t\t\t<span class=\"login100-form-title\">\r\n");
      out.write("\t\t\t\t\t\tAdmin Login\r\n");
      out.write("\t\t\t\t\t</span>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 validate-input\" data-validate = \"Valid email is required: ex@abc.xyz\">\r\n");
      out.write("                                            <input class=\"input100\" type=\"email\" name=\"admin_username\" id=\"username\" placeholder=\"Admin E-mail Address\" maxlength=\"40\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\"></span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-envelope\" aria-hidden=\"true\"></i>\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 validate-input\" data-validate = \"Password is required\">\r\n");
      out.write("\t\t\t\t\t\t<input class=\"input100\" type=\"password\" name=\"admin_password\" id=\"password\" \r\n");
      out.write("                                                       placeholder=\"Admin Password\" maxlength='16'>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\"></span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-lock\" aria-hidden=\"true\"></i>\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("                                        </div>\r\n");
      out.write("\t\t\t\t\t<div class=\"container-login100-form-btn\">\r\n");
      out.write("\t\t\t\t\t\t<button class=\"login100-form-btn\">\r\n");
      out.write("\t\t\t\t\t\t\tLogin\r\n");
      out.write("\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<div class=\"text-center p-t-12\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"txt1\">\r\n");
      out.write("\t\t\t\t\t\t\tI want to\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t\t<a class=\"txt2\" href=\"javascript:loadAccess()\">\r\n");
      out.write("\t\t\t\t\t\t\texit from admin portal\r\n");
      out.write("\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</form>\r\n");
      out.write("                        </div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("<!--===============================================================================================-->\t\r\n");
      out.write("\t<script src=\"vendor/jquery/jquery-3.2.1.min.js\"></script>\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("\t<script src=\"vendor/bootstrap/js/popper.js\"></script>\r\n");
      out.write("\t<script src=\"vendor/bootstrap/js/bootstrap.min.js\"></script>\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("\t<script src=\"vendor/select2/select2.min.js\"></script>\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("\t<script src=\"vendor/tilt/tilt.jquery.min.js\"></script>\r\n");
      out.write("\t<script >\r\n");
      out.write("\t\t$('.js-tilt').tilt({\r\n");
      out.write("\t\t\tscale: 1.1\r\n");
      out.write("\t\t})\r\n");
      out.write("\t</script>\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("\t<script src=\"js/main.js\"></script>\r\n");
      out.write("        <script>\r\n");
      out.write("             window.oncontextmenu = function () {\r\n");
      out.write("             Swal.fire(\r\n");
      out.write("            'Security Alert',\r\n");
      out.write("            'Right-Click and Input-Facilities are disabled for security reason.',\r\n");
      out.write("            'warning'\r\n");
      out.write("            );\r\n");
      out.write("          };\r\n");
      out.write("          function loadAccess(){\r\n");
      out.write("                            Swal.fire({\r\n");
      out.write("                title: 'Do you want to exit ?',\r\n");
      out.write("                showDenyButton: true,\r\n");
      out.write("                showCancelButton: true,\r\n");
      out.write("                confirmButtonText: 'Stay',\r\n");
      out.write("                denyButtonText: `Exit`,\r\n");
      out.write("              }).then((result) => {\r\n");
      out.write("        if (result.isConfirmed) {\r\n");
      out.write("                Swal.DismissReason;\r\n");
      out.write("            } else if (result.isDenied) {\r\n");
      out.write("                window.open(\"login.jsp\",\"_self\");\r\n");
      out.write("            }\r\n");
      out.write("      })\r\n");
      out.write("          }\r\n");
      out.write("                    function validate (){\r\n");
      out.write("                if (document.getElementById('username').value === \"\" || \r\n");
      out.write("                      document.getElementById('password').value === \"\"){\r\n");
      out.write("                  Swal.fire({\r\n");
      out.write("                    icon: 'error',\r\n");
      out.write("                    title: 'Oops...',\r\n");
      out.write("                    text: 'Username or Password can\\'t be empty !'\r\n");
      out.write("                    })\r\n");
      out.write("                    return false;\r\n");
      out.write("                } else {\r\n");
      out.write("                    return true;\r\n");
      out.write("                }\r\n");
      out.write("          }\r\n");
      out.write("        </script>\r\n");
      out.write("</body>\r\n");
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
