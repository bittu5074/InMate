package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Random;

public final class OTPVer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>OTP Verification</title>\n");
      out.write("  <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"css/OTP_card.css\" rel=\"stylesheet\">\n");
      out.write("  <link rel=\"icon\" type=\"image/x-icon\" href=\"assets/lock.png\" />\n");
      out.write("  <script type=\"text/javascript\" src=\"js/alert.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("            ");

            String raws = "0123456789";
            StringBuilder sb = new StringBuilder();
            Random random = new Random();
            int length = 6;
                for (int i=0;i<length;i++){
                    int index = random.nextInt(raws.length());
                    char randomChar = raws.charAt(index);
                    sb.append(randomChar);
                }
                    String CODE = sb.toString();
            
      out.write("\n");
      out.write("            <script>\n");
      out.write("                window.history.forward();\n");
      out.write("                        document.addEventListener('contextmenu',\n");
      out.write("                        event => event.preventDefault());\n");
      out.write("            </script>\n");
      out.write("            <p style=\"color: white;text-align: center;font-size: 20px;font-weight: bold;margin-top: 20px\"\n");
      out.write("               id=\"time_head\"></p>\n");
      out.write("    <section class=\"wrapper\" id=\"otp_holder\">\n");
      out.write("        <div class=\"container\" id=\"white_back\">\n");
      out.write("      <div class=\"col-sm-8 offset-sm-2 col-lg-6 offset-lg-3 col-xl-6 offset-xl-3 text-center\">\n");
      out.write("          <form action = \"CheckOTP.jsp\" method = \"POST\" class=\"rounded bg-white shadow p-5\"\n");
      out.write("                onsubmit=\"return checkValid()\">\n");
      out.write("          <h3 class=\"text-dark fw-bolder fs-4 mb-2\" id=\"cancel_head\">Two Step Verification</h3>\n");
      out.write("\n");
      out.write("          <div class=\"fw-normal text-muted mb-4\" id=\"cancel_subhead\">\n");
      out.write("            Enter the verification code which we've generated\n");
      out.write("          </div>  \n");
      out.write("          <div id=\"cancel_security\">Security Code:</div>\n");
      out.write("                    <div class=\"d-flex align-items-center justify-content-center fw-bold mb-4\" id=\"cancel_code\">\n");
      out.write("                        <input name=\"otp_val\" value=\"");
      out.print(CODE);
      out.write("\" style=\"background: white;\n");
      out.write("                               color: black;text-align: center;border: none;cursor: default;font-weight: bold\" \n");
      out.write("                               id=\"otp_val\"/>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("          <div class=\"otp_input text-start mb-2\" id=\"cancel_hold\">\n");
      out.write("                        <label for=\"digit\" id=\"cancel_label\">Enter your 6 digit OTP here</label>           \n");
      out.write("            <div class=\"d-flex align-items-center justify-content-between mt-2\" id=\"cancel_input\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" maxlength=\"1\" id=\"0\" onkeypress=\"return checkDigit(event)\"\n");
      out.write("                                   required=\"true\" name=\"k1\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" maxlength=\"1\" id=\"1\" onkeypress=\"return checkDigit(event)\"\n");
      out.write("                                   required=\"true\" name=\"k2\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" maxlength=\"1\" id=\"2\" onkeypress=\"return checkDigit(event)\"\n");
      out.write("                                   required=\"true\" name=\"k3\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" maxlength=\"1\" id=\"3\" onkeypress=\"return checkDigit(event)\"\n");
      out.write("                                   required=\"true\" name=\"k4\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" maxlength=\"1\" id=\"4\" onkeypress=\"return checkDigit(event)\"\n");
      out.write("                                   required=\"true\" name=\"k5\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" maxlength=\"1\" id=\"5\" onkeypress=\"return checkDigit(event)\"\n");
      out.write("                                   required=\"true\" name=\"k6\">\n");
      out.write("            </div> \n");
      out.write("          </div>\n");
      out.write("              <button type=\"submit\" class=\"btn btn-primary submit_btn my-4\" id=\"put_otp\"\n");
      out.write("                      style=\"background: #c3581c;border: 1px solid #c3581c\">Submit</button>\n");
      out.write("          <div class=\"fw-normal text-muted mb-2\" id=\"cancel_footer\">\n");
      out.write("            Want to change the code ? <a href=\"OTPVer.jsp\" style=\"color: #c3581c;text-decoration: none;font-weight: bold\">Re-Generate</a>\n");
      out.write("          </div>\n");
      out.write("            </form>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </section>                               \n");
      out.write("  <script type=\"text/javascript\">\n");
      out.write("    let elts = document.getElementsByClassName('form-control');\n");
      out.write("    Array.from(elts).forEach(function(elt){\n");
      out.write("    elt.addEventListener(\"keyup\", function() {\n");
      out.write("    if (elt.value.length === 1) {\n");
      out.write("      elt.nextElementSibling.focus();\n");
      out.write("    }\n");
      out.write("  });\n");
      out.write("})\n");
      out.write("    function checkDigit(event) {\n");
      out.write("    let code = (event.which) ? event.which : event.keyCode;\n");
      out.write("\n");
      out.write("    if ((code < 48 || code > 57) && (code > 31)) {\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    return true;\n");
      out.write("}\n");
      out.write("    function serviceOut(){\n");
      out.write("               document.getElementById('cancel_head').style.display = 'none';\n");
      out.write("               document.getElementById('cancel_subhead').style.display = 'none';\n");
      out.write("               document.getElementById('cancel_security').style.display = 'none';\n");
      out.write("               document.getElementById('cancel_code').style.display = 'none';\n");
      out.write("               document.getElementById('cancel_hold').style.display = 'none';\n");
      out.write("               document.getElementById('otp_val').style.display = 'none';\n");
      out.write("               document.getElementById('put_otp').style.display = 'none';\n");
      out.write("               document.getElementById('cancel_footer').style.display = 'none';\n");
      out.write("               document.getElementById('time_head').style.display = 'none';\n");
      out.write("               document.getElementById('white_back').style.display = 'none';\n");
      out.write("               \n");
      out.write("               Swal.fire({\n");
      out.write("                title: 'Request timed out !',\n");
      out.write("                text: \"Please retry your payment process\",\n");
      out.write("                icon: 'warning',\n");
      out.write("                showCancelButton: false,\n");
      out.write("                allowOutsideClick: false,\n");
      out.write("                confirmButtonColor: '#d33',\n");
      out.write("                confirmButtonText: 'Retry !'\n");
      out.write("            }).then((result) => {\n");
      out.write("                if (result.isConfirmed) {\n");
      out.write("                    window.location = \"PaymentCard.jsp\";\n");
      out.write("                }\n");
      out.write("        })\n");
      out.write("    }\n");
      out.write("    let timeLeft = 30;\n");
      out.write("    let elem = document.getElementById('time_head');\n");
      out.write("    function sessionTimer() {\n");
      out.write("      if (timeLeft === -1) {\n");
      out.write("        clearTimeout(timerId);         \n");
      out.write("      } else {\n");
      out.write("          window.oncontextmenu = function () {\n");
      out.write("             Swal.fire(\n");
      out.write("            'Security Alert',\n");
      out.write("            'Right-Click and Input-Facilities are disabled for security reason.',\n");
      out.write("            'warning'\n");
      out.write("            )\n");
      out.write("          }\n");
      out.write("        elem.innerHTML = 'Your OTP will expire in '+timeLeft+' Second/s';\n");
      out.write("        timeLeft--;\n");
      out.write("      }\n");
      out.write("    }\n");
      out.write("            document.getElementById(\"otp_val\").addEventListener(\"mousedown\", function(event){\n");
      out.write("                event.preventDefault();\n");
      out.write("    });\n");
      out.write("            document.getElementById('otp_holder').style.display = 'none';\n");
      out.write("            document.getElementById('time_head').style.display = 'none';\n");
      out.write("             let timerInterval;\n");
      out.write("            Swal.fire({\n");
      out.write("            title: 'Please wait for few seconds',\n");
      out.write("            html: 'Communicating with bank server....',\n");
      out.write("            timer: 4000,\n");
      out.write("            timerProgressBar: true,\n");
      out.write("            allowOutsideClick: false,\n");
      out.write("            didOpen: () => {\n");
      out.write("            Swal.showLoading()\n");
      out.write("            const b = Swal.getHtmlContainer().querySelector('b')\n");
      out.write("            timerInterval = setInterval(() => {\n");
      out.write("            b.textContent = Swal.getTimerLeft()\n");
      out.write("            }, 100)\n");
      out.write("          },\n");
      out.write("        willClose: () => {\n");
      out.write("             clearInterval(timerInterval)\n");
      out.write("          }\n");
      out.write("            }).then((result) => {\n");
      out.write("        if (result.dismiss === Swal.DismissReason.timer) { \n");
      out.write("               document.getElementById('time_head').style.display = 'block';\n");
      out.write("               document.getElementById('otp_holder').style.display = 'block';\n");
      out.write("               setInterval(sessionTimer, 1000);\n");
      out.write("               setTimeout(serviceOut, 31000);\n");
      out.write("            }\n");
      out.write("         })\n");
      out.write("  </script>\n");
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
