package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class PaymentUPI_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>InMate | Payments</title>\n");
      out.write("        <script src=\"js/alert.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\"> \n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js\"> \n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\">\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"assets/payment.png\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/upi.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <script>\n");
      out.write("                window.history.forward();\n");
      out.write("                document.addEventListener('contextmenu',\n");
      out.write("                event => event.preventDefault());\n");
      out.write("        </script>\n");
      out.write("        <div class=\"card mt-50 mb-50\">\n");
      out.write("            <div class=\"card-title mx-auto\">\n");
      out.write("                UPI Payment\n");
      out.write("            </div>\n");
      out.write("            <form action=\"CheckUPI.jsp\" method=\"POST\" onsubmit=\"return checkValid()\">\n");
      out.write("                <span id=\"card-header\">Enter your credentials</span>\n");
      out.write("                <div class=\"row-1\">\n");
      out.write("                    <div class=\"row row-2\">\n");
      out.write("                        <span id=\"card-inner\">VPA / UPI ID</span>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row row-2\">\n");
      out.write("                        <input type=\"text\" placeholder=\"someone@okaxis\" maxlength=\"40\" id=\"vpa\" required=\"true\"\n");
      out.write("                               pattern=\"[a-zA-Z0-9.\\-_]{2,256}@[a-zA-Z]{2,64}\"\n");
      out.write("                               title=\"Please enter correct VPA / UPI ID\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row three\">\n");
      out.write("                    <div class=\"col-7\">\n");
      out.write("                        <div class=\"row-1\">\n");
      out.write("                            <div class=\"row row-2\">\n");
      out.write("                                <span id=\"card-inner\">UPI PIN</span>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"row row-2\">\n");
      out.write("                                <input type=\"password\" maxlength=\"6\" placeholder=\"******\" id=\"upin\" required=\"true\"\n");
      out.write("                                       onkeypress=\"return checkDigit(event)\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <br>\n");
      out.write("                <button class=\"btn\"><b>Make Payment</b></button>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        <script>\n");
      out.write("         window.oncontextmenu = function () {\n");
      out.write("             Swal.fire(\n");
      out.write("            'Security Alert',\n");
      out.write("            'Right-Click and Input-Facilities are disabled for security reason.',\n");
      out.write("            'warning'\n");
      out.write("            )\n");
      out.write("       }\n");
      out.write("        function checkValid(){\n");
      out.write("            if (document.getElementById('upin').value.length < 6){\n");
      out.write("             Swal.fire(\n");
      out.write("            'Oops !',\n");
      out.write("            'Please enter correct UPI PIN',\n");
      out.write("            'error'\n");
      out.write("                )\n");
      out.write("        return false;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        function checkDigit(event) {\n");
      out.write("            let code = (event.which) ? event.which : event.keyCode;\n");
      out.write("\n");
      out.write("            if ((code < 48 || code > 57) && (code > 31)) {\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            return true;\n");
      out.write("        }\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
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
