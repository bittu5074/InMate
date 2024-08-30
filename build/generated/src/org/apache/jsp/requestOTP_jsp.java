package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class requestOTP_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            String vname, votp, vemail,opass;
            
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <link rel=\"icon\" type=\"image/png\" href=\"assets/lock.png\"/>\n");
      out.write("    <script src=\"js/alert.js\"></script>\n");
      out.write("    <title>OTP Verification</title>\n");
      out.write("    <style>\n");
      out.write("        body {\n");
      out.write("            font-family: Arial, Helvetica, sans-serif;\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 0;\n");
      out.write("                background-image: url('adback.png');\n");
      out.write("                background-position: center;\n");
      out.write("                background-size: cover;\n");
      out.write("              background-position: center;\n");
      out.write("              background-size: cover;\n");
      out.write("        }\n");
      out.write("        .container {\n");
      out.write("            display: flex;\n");
      out.write("            flex-direction: column;\n");
      out.write("            align-items: center;\n");
      out.write("            justify-content: center;\n");
      out.write("            height: 100vh;\n");
      out.write("            background: white;\n");
      out.write("            height: 60%;\n");
      out.write("            width: 50%;\n");
      out.write("            margin-left: auto;\n");
      out.write("            margin-right: auto;\n");
      out.write("            margin-top: 40px;\n");
      out.write("            text-align: center;\n");
      out.write("            border: 2px solid white;\n");
      out.write("            border-radius: 30px;\n");
      out.write("        }\n");
      out.write("        h1 {\n");
      out.write("            margin-bottom: 20px;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("        input[type=\"text\"] {\n");
      out.write("            width: 60%;\n");
      out.write("            padding: 12px 20px;\n");
      out.write("            margin: 8px 0;\n");
      out.write("            box-sizing: border-box;\n");
      out.write("            border: 2px solid #ccc;\n");
      out.write("            border-radius: 4px;\n");
      out.write("            text-align: center;\n");
      out.write("            font-weight: bold;\n");
      out.write("            font-size: 20px;\n");
      out.write("        }\n");
      out.write("        input[type=\"submit\"] {\n");
      out.write("            width: 50%;\n");
      out.write("            background-color: #c3581c;\n");
      out.write("            color: white;\n");
      out.write("            padding: 14px 20px;\n");
      out.write("            margin: 8px 0;\n");
      out.write("            border: none;\n");
      out.write("            border-radius: 10px;\n");
      out.write("            cursor: pointer;\n");
      out.write("            font-size: 16px;\n");
      out.write("        }\n");
      out.write("        input[type=\"submit\"]:hover {\n");
      out.write("            background-color: rgba(0,0,0,0.5);\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <script>\n");
      out.write("                document.addEventListener('contextmenu',\n");
      out.write("                event => event.preventDefault());\n");
      out.write("                window.history.forward();\n");
      out.write("    </script>\n");
      out.write("             ");
      out.write("\n");
      out.write("            ");

                HttpSession sess = request.getSession(false);
                if(sess == null) response.sendRedirect("http://localhost:8080/InMate/SomethingWrong");
                        vname = sess.getAttribute("fname").toString();
                        votp = sess.getAttribute("otp").toString();
                        vemail = sess.getAttribute("email").toString();
            if(request.getParameter("bVerify")!=null)
            {
                if(request.getParameter("tbOTP").equals(votp))
                {
                
      out.write("\n");
      out.write("                <script>\n");
      out.write("                    location.href=\"http://localhost:8080/InMate/homepage.jsp\";\n");
      out.write("                </script>\n");
      out.write("                ");

                }
                else
                {
                       
      out.write(" \n");
      out.write("                            <script>\n");
      out.write("                    location.href=\"http://localhost:8080/InMate/OTPfailed\";\n");
      out.write("                            </script>               \n");
      out.write("                        ");

                }
            }
            else
            {
                   
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <h1>OTP Verification</h1>\n");
      out.write("        <form name=\"frmOTP\" method=\"POST\" action=\"http://localhost:8080/InMate/requestOTP.jsp\">\n");
      out.write("          <label for=\"otp\">Enter OTP:</label><br>\n");
      out.write("          <input type=\"text\" id=\"otp\" name=\"tbOTP\" maxlength=\"4\" onkeypress=\"return checkDigit(event)\"\n");
      out.write("                 required=\"true\"/><br><br>\n");
      out.write("          <input type=\"submit\" value=\"Verify\" name=\"bVerify\">\n");
      out.write("          <p>Check your inbox for OTP. Designated Email: <b>");
      out.print(vemail);
      out.write("</b></p>\n");
      out.write("              ");

                    }   
            
      out.write(" \n");
      out.write("        </form>\n");
      out.write("        <br>\n");
      out.write("    </div>\n");
      out.write("    <script>\n");
      out.write("           window.oncontextmenu = function () {\n");
      out.write("             Swal.fire(\n");
      out.write("            'Security Alert',\n");
      out.write("            'Right-Click and Input-Facilities are disabled for security reason.',\n");
      out.write("            'warning'\n");
      out.write("            )\n");
      out.write("          }\n");
      out.write("        function checkDigit(event) {\n");
      out.write("            let code = (event.which) ? event.which : event.keyCode;\n");
      out.write("\n");
      out.write("            if ((code < 48 || code > 57) && (code > 31)) {\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            return true;\n");
      out.write("        }\n");
      out.write("    </script>\n");
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
