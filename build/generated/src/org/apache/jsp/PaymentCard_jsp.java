package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class PaymentCard_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/payment_card.css\">\n");
      out.write("    <link rel=\"icon\" type=\"image/x-icon\" href=\"assets/payment.png\" />\n");
      out.write("    <title>InMate | Payments</title>\n");
      out.write("    <script src=\"js/alert.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"container\">\n");
      out.write("    <div class=\"card-container\" style=\"margin-top: 50px\">\n");
      out.write("        <div class=\"front\">\n");
      out.write("            <div class=\"image\">\n");
      out.write("                <img src=\"assets/chip.png\" alt=\"\">\n");
      out.write("                <img src=\"assets/visa.png\" alt=\"\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card-number-box\" style=\"text-align: center\">XXXX-XXXX-XXXX-XXXX</div>\n");
      out.write("            <div class=\"flexbox\">\n");
      out.write("                <div class=\"box\">\n");
      out.write("                    <span>Card Holder</span>\n");
      out.write("                    <div class=\"card-holder-name\">Full Name</div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"box\">\n");
      out.write("                    <span>Expiry Date</span>\n");
      out.write("                    <div class=\"expiration\">\n");
      out.write("                        <span class=\"exp-month\" id=\"expmonth\">MM /</span>\n");
      out.write("                        <span class=\"exp-year\" id=\"expyear\">YYYY</span>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"back\">\n");
      out.write("            <div class=\"stripe\"></div>\n");
      out.write("            <div class=\"box\" style=\"color: white;font-weight: bold\">\n");
      out.write("                CVV\n");
      out.write("                <div class=\"cvv-box\"></div>\n");
      out.write("                <img src=\"assets/visa.png\" alt=\"\">\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <form action=\"OTPVer.jsp\" method=\"POST\" onsubmit=\"return connectServer()\">\n");
      out.write("        <div class=\"inputBox\">\n");
      out.write("            <span>Enter Card Number</span>\n");
      out.write("            <input type=\"text\" maxlength=\"19\" class=\"card-number-input\" onkeypress=\"return checkDigit(event)\" \n");
      out.write("                   onkeyup=\"formatCreditCard()\" name=\"card-number\" id=\"credit-card\" value=\"\" required=\"true\"/>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"inputBox\">\n");
      out.write("            <span>Name on the card</span>\n");
      out.write("            <input type=\"text\" class=\"card-holder-input\" onkeypress=\"return checkLetter(event)\" \n");
      out.write("                   maxlength=\"22\" required=\"true\"/>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"flexbox\">\n");
      out.write("            <div class=\"inputBox\">\n");
      out.write("                <span>Expiration Month</span>\n");
      out.write("                <select name=\"\" id=\"\" class=\"month-input\" required=\"true\">\n");
      out.write("                    <option value=\"month\" selected disabled>Month</option>\n");
      out.write("                    <option value=\"01\">01</option>\n");
      out.write("                    <option value=\"02\">02</option>\n");
      out.write("                    <option value=\"03\">03</option>\n");
      out.write("                    <option value=\"04\">04</option>\n");
      out.write("                    <option value=\"05\">05</option>\n");
      out.write("                    <option value=\"06\">06</option>\n");
      out.write("                    <option value=\"07\">07</option>\n");
      out.write("                    <option value=\"08\">08</option>\n");
      out.write("                    <option value=\"09\">09</option>\n");
      out.write("                    <option value=\"10\">10</option>\n");
      out.write("                    <option value=\"11\">11</option>\n");
      out.write("                    <option value=\"12\">12</option>\n");
      out.write("                </select>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"inputBox\">\n");
      out.write("                <span>Expiration Year</span>\n");
      out.write("                <select name=\"\" id=\"\" class=\"year-input\" required=\"true\">\n");
      out.write("                    <option value=\"year\" selected disabled>Year</option>\n");
      out.write("                    <option value=\"2021\">2021</option>\n");
      out.write("                    <option value=\"2022\">2022</option>\n");
      out.write("                    <option value=\"2023\">2023</option>\n");
      out.write("                    <option value=\"2024\">2024</option>\n");
      out.write("                    <option value=\"2025\">2025</option>\n");
      out.write("                    <option value=\"2026\">2026</option>\n");
      out.write("                    <option value=\"2027\">2027</option>\n");
      out.write("                    <option value=\"2028\">2028</option>\n");
      out.write("                    <option value=\"2029\">2029</option>\n");
      out.write("                    <option value=\"2030\">2030</option>\n");
      out.write("                </select>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"inputBox\">\n");
      out.write("                <span>CVV Code</span>\n");
      out.write("                <input type=\"password\" maxlength=\"3\" class=\"cvv-input\" required=\"true\" onkeypress=\"return checkDigit(event)\"/>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <input type=\"submit\" value=\"Make Payment\" class=\"submit-btn\" id=\"doPayment\">\n");
      out.write("    </form>\n");
      out.write("</div>\n");
      out.write("<script>\n");
      out.write("        function connectServer(){\n");
      out.write("            if (document.getElementById('expmonth').textContent === \"MM /\" ||\n");
      out.write("                    document.getElementById('expyear').textContent === \"YYYY\") {\n");
      out.write("                       Swal.fire({\n");
      out.write("                    text: 'Please select a proper expiry date of your credit/debit card !'\n");
      out.write("                    })\n");
      out.write("                return false;\n");
      out.write("            } else {\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("window.history.forward();\n");
      out.write("                document.addEventListener('contextmenu',\n");
      out.write("                event => event.preventDefault());\n");
      out.write("document.querySelector('.card-number-input').oninput = () =>{\n");
      out.write("    document.querySelector('.card-number-box').innerText = document.querySelector('.card-number-input').value;\n");
      out.write("        if (document.querySelector('.card-number-input').value === \"\"){\n");
      out.write("            document.querySelector('.card-number-box').innerText = \"XXXX-XXXX-XXXX-XXXX\";\n");
      out.write("        }\n");
      out.write("}\n");
      out.write("\n");
      out.write("document.querySelector('.card-holder-input').oninput = () =>{\n");
      out.write("    document.querySelector('.card-holder-name').style.textTransform = \"uppercase\";\n");
      out.write("    document.querySelector('.card-holder-name').innerText = document.querySelector('.card-holder-input').value;\n");
      out.write("        if (document.querySelector('.card-holder-input').value === \"\"){\n");
      out.write("            document.querySelector('.card-holder-name').innerText = \"Full Name\"\n");
      out.write("            document.querySelector('.card-holder-name').style.textTransform = \"capitalize\";\n");
      out.write("        }\n");
      out.write("}\n");
      out.write("\n");
      out.write("document.querySelector('.month-input').oninput = () =>{\n");
      out.write("    document.querySelector('.exp-month').innerText = document.querySelector('.month-input').value+\" / \";\n");
      out.write("}\n");
      out.write("\n");
      out.write("document.querySelector('.year-input').oninput = () =>{\n");
      out.write("    document.querySelector('.exp-year').innerText = document.querySelector('.year-input').value;\n");
      out.write("}\n");
      out.write("\n");
      out.write("document.querySelector('.cvv-input').onmouseenter = () =>{\n");
      out.write("    document.querySelector('.front').style.transform = 'perspective(1000px) rotateY(-180deg)';\n");
      out.write("    document.querySelector('.back').style.transform = 'perspective(1000px) rotateY(0deg)';\n");
      out.write("}\n");
      out.write("\n");
      out.write("document.querySelector('.cvv-input').onmouseleave = () =>{\n");
      out.write("    document.querySelector('.front').style.transform = 'perspective(1000px) rotateY(0deg)';\n");
      out.write("    document.querySelector('.back').style.transform = 'perspective(1000px) rotateY(180deg)';\n");
      out.write("}\n");
      out.write("\n");
      out.write("document.querySelector('.cvv-input').oninput = () =>{\n");
      out.write("    document.querySelector('.cvv-box').innerText = document.querySelector('.cvv-input').value;\n");
      out.write("}\n");
      out.write("function checkDigit(event) {\n");
      out.write("    let code = (event.which) ? event.which : event.keyCode;\n");
      out.write("\n");
      out.write("    if ((code < 48 || code > 57) && (code > 31)) {\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    return true;\n");
      out.write("}\n");
      out.write("function checkLetter(event){\n");
      out.write("    let code = (event.which) ? event.which : event.keyCode;\n");
      out.write("    \n");
      out.write("    if ((code > 64 && code < 91) || (code > 96 && code < 123) || code === 32){\n");
      out.write("        return true;\n");
      out.write("    }\n");
      out.write("    return false;\n");
      out.write("}\n");
      out.write("function formatCreditCard() {\n");
      out.write("    let x = document.getElementById(\"credit-card\");\n");
      out.write("    let index = x.value.lastIndexOf(' ');\n");
      out.write("    let test = x.value.substr(index + 1);\n");
      out.write("    if (test.length === 4 && x.value.length<16)\n");
      out.write("         x.value = x.value + ' ';\n");
      out.write("}\n");
      out.write("        window.oncontextmenu = function () {\n");
      out.write("             Swal.fire(\n");
      out.write("            'Security Alert',\n");
      out.write("            'Right-Click and Input-Facilities are disabled for security reason.',\n");
      out.write("            'warning'\n");
      out.write("            )\n");
      out.write("       }\n");
      out.write("</script>\n");
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
