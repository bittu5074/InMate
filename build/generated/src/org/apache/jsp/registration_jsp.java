package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registration_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t<title>InMate | Signup</title>\r\n");
      out.write("\t<meta charset=\"UTF-8\">\r\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<!--===============================================================================================-->\t\r\n");
      out.write("\t<link rel=\"icon\" type=\"image/png\" href=\"assets/signup.png\"/>\r\n");
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
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/registration_user.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"fonts/material-icon/css/material-design-iconic-font.min.css\">\r\n");
      out.write("        <script src=\"js/alert.js\"></script>\r\n");
      out.write("<!--===============================================================================================-->\r\n");
      out.write("<style>\r\n");
      out.write("                   .buttdis{\r\n");
      out.write("                    font-family: Montserrat-Bold;\r\n");
      out.write("                    font-size: 15px;\r\n");
      out.write("                    line-height: 1.5;\r\n");
      out.write("                    color: #fff;\r\n");
      out.write("                    text-transform: uppercase;\r\n");
      out.write("                    width: 100%;\r\n");
      out.write("                    height: 50px;\r\n");
      out.write("                    border-radius: 25px;\r\n");
      out.write("                    background: grey;\r\n");
      out.write("                    display: -webkit-box;\r\n");
      out.write("                    display: -webkit-flex;\r\n");
      out.write("                    display: -moz-box;\r\n");
      out.write("                    display: -ms-flexbox;\r\n");
      out.write("                    display: flex;\r\n");
      out.write("                    justify-content: center;\r\n");
      out.write("                    align-items: center;\r\n");
      out.write("                    padding: 0 25px;\r\n");
      out.write("                    -webkit-transition: all 0.4s;\r\n");
      out.write("                    -o-transition: all 0.4s;\r\n");
      out.write("                    -moz-transition: all 0.4s;\r\n");
      out.write("                    transition: all 0.4s;\r\n");
      out.write("               }\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("   <script>\r\n");
      out.write("                        document.addEventListener('contextmenu',\r\n");
      out.write("                event => event.preventDefault());\r\n");
      out.write("                window.history.forward();\r\n");
      out.write(" </script>\r\n");
      out.write("\t<div class=\"limiter\">\r\n");
      out.write("\t\t<div class=\"container-login100\">\r\n");
      out.write("\t\t\t<div class=\"wrap-login100\">\r\n");
      out.write("\t\t\t\t<div class=\"login100-pic js-tilt\" data-tilt style=\"margin-top: -40px\">\r\n");
      out.write("\t\t\t\t\t<img src=\"assets/signup.png\" alt=\"IMG\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<form class=\"login100-form validate-form\" action=\"http://localhost:8080/InMate/RegistrationSess\" onsubmit=\"return checkValid()\" name=\"regform\">\r\n");
      out.write("\t\t\t\t\t<span class=\"login100-form-title\" style='margin-top: -134px'>\r\n");
      out.write("\t\t\t\t\t\tMember Registration\r\n");
      out.write("\t\t\t\t\t</span>\r\n");
      out.write("                                    \r\n");
      out.write("                                    \t<div class=\"wrap-input100 validate-input\" data-validate = \"Full name is required\">\r\n");
      out.write("                                            <input class=\"input100\" type=\"text\" name=\"name\" id=\"name\" placeholder=\"Your full name\" maxlength=\"40\"\r\n");
      out.write("                                                   >\r\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\"></span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-user\" aria-hidden=\"true\"></i>\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 validate-input\" data-validate = \"Valid email is required: ex@abc.xyz\">\r\n");
      out.write("                                            <input class=\"input100\" type=\"email\" name=\"email\" id=\"email\" placeholder=\"Your email address\" maxlength=\"40\" onkeyup=\"buttonStateListener()\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\"></span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-envelope\" aria-hidden=\"true\"></i>\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("                                    \r\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 validate-input\" data-validate = \"Contact number is required\">\r\n");
      out.write("                                            <input class=\"input100\" type=\"tel\" name=\"contact\" id=\"contact\" placeholder=\"Your contact no.\" maxlength=\"10\" onkeyup=\"buttonStateListener()\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\"></span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-phone\" aria-hidden=\"true\"></i>\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("                                    \r\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 validate-input\" data-validate = \"Password is required\">\r\n");
      out.write("\t\t\t\t\t\t<input class=\"input100\" type=\"password\" name=\"pass\" id=\"pass\" placeholder=\"Your password\" \r\n");
      out.write("                                                                             minlength=\"8\" maxlength=\"16\" pattern=\"^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,16}$\" \r\n");
      out.write("                                                                        title=\"Password must contain uppercase character, lowercase character, \r\n");
      out.write("                                                                        special character as well as having minimum 8 characters long\" \r\n");
      out.write("                                                                            >\r\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\"></span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-lock\" aria-hidden=\"true\"></i>\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    \t<div class=\"wrap-input100 validate-input\" data-validate = \"Confirm password is required\">\r\n");
      out.write("\t\t\t\t\t\t<input class=\"input100\" type=\"password\" name=\"re_pass\" id=\"re_pass\" placeholder=\"Confirm your password\" \r\n");
      out.write("                                                                            >\r\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\"></span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"symbol-input100\">\r\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-lock\" aria-hidden=\"true\"></i>\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    \t\r\n");
      out.write("                                    <div class=\"text-center p-t-12\">\r\n");
      out.write("                                        <input type=\"checkbox\" name=\"agree-term\" id=\"agree-term\"\r\n");
      out.write("                                                 checked=\"true\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"txt1\">\r\n");
      out.write("\t\t\t\t\t\t\tI have read and accept\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t\t<a class=\"txt2\" name=\"myBtn\" id=\"myBtn\" href=\"javascript:openTerms()\">\r\n");
      out.write("                                                    <u>terms & conditions</u></a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("                                    \r\n");
      out.write("\t\t\t\t\t<div class=\"container-login100-form-btn\">\r\n");
      out.write("                                            <input class=\"login100-form-btn\" id=\"subreg\" type=\"submit\" value=\"Register\" name=\"subreg\" style=\"cursor:pointer\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"text-center p-t-136\">\r\n");
      out.write("\t\t\t\t\t\t<a class=\"txt2\" href=\"http://localhost:8080/InMate/login.jsp\">\r\n");
      out.write("\t\t\t\t\t\t\tI'm already a member\r\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-long-arrow-right m-l-5\" aria-hidden=\"true\"></i>\r\n");
      out.write("\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</form>\r\n");
      out.write("\t\t\t</div>\r\n");
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
      out.write("\t\t});\r\n");
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
      out.write("            function checkValid(){\r\n");
      out.write("                        let x = document.getElementById(\"pass\").value;\r\n");
      out.write("        let y = document.getElementById(\"re_pass\").value;\r\n");
      out.write("            if (x !== y){\r\n");
      out.write("                 Swal.fire({\r\n");
      out.write("                    icon: 'error',\r\n");
      out.write("                    text: 'Confirmation password didn\\'t match !',\r\n");
      out.write("                    showConfirmButton: false\r\n");
      out.write("                });\r\n");
      out.write("                return false;\r\n");
      out.write("            }\r\n");
      out.write("            if (!document.getElementById('agree-term').checked){\r\n");
      out.write("                    Swal.fire({\r\n");
      out.write("                    icon: 'info',\r\n");
      out.write("                    text: 'Please accept our terms & conditions to create an account',\r\n");
      out.write("                    showConfirmButton: false\r\n");
      out.write("                    });\r\n");
      out.write("                return false;\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("                function openTerms(){\r\n");
      out.write("                    Swal.fire({\r\n");
      out.write("                    title: '<strong>Terms & Conditions</strong>',\r\n");
      out.write("                    html:\r\n");
      out.write("                      '<p><b>Introduction</b></p><p>Welcome to our website. The Website is owned and operated by InMate. By using the Website,you agree to comply with and be bound by these Terms and Conditions. If you do not agree to these Terms, you should not use the Website.</p><p><b> # Use of the Website</b></p><p><b>1) Eligibility:</b>&nbsp;&nbsp;You must be at least 18 years old to use the Website.</p><p><b>2) Account:</b>&nbsp;&nbsp;You may need to create an account to use some features of the Website. You are responsible for maintaining the confidentiality of your account information and for any activity that occurs under your account.</p><p><b> # InMate Services</b></p><p><b>1) Hosts:</b>&nbsp;&nbsp;Hosts are responsible for the accuracy and completeness of their listings, including pricing, availability, and other relevant details. Hosts must comply with all applicable laws, rules, and regulations, including those related to taxes, permits, and licenses.</p><p><b>2) Guests:</b>&nbsp;&nbsp;Guests are responsible for selecting a suitable accommodation based on their needs and preferences. Guests must comply with all applicable laws, rules, and regulations, and respect the rules and policies of the Host.</p>',\r\n");
      out.write("                    showCloseButton: true,\r\n");
      out.write("                    showCancelButton: false,\r\n");
      out.write("                    focusConfirm: false,\r\n");
      out.write("                    showConfirmButton: false,\r\n");
      out.write("                    focusClose: false\r\n");
      out.write("                  });\r\n");
      out.write("            }\r\n");
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
