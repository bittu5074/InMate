package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.DriverManager;
import oracle.jdbc.OracleResultSet;
import oracle.jdbc.OracleStatement;
import oracle.jdbc.OracleConnection;

public final class Enquiry_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            OracleConnection oconn;
            OracleStatement ost;
            OracleResultSet ors;
            String q;
                
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
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\" />\n");
      out.write("        <meta name=\"description\" content />\n");
      out.write("        <meta name=\"author\" content />\n");
      out.write("        <title>InMate | Management</title>\n");
      out.write("               ");
      out.write("\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"assets/edit.png\" />\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\" />\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin />\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@100;200;300;400;500;600;700;800;900&amp;display=swap\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/user-updateo.css\" rel=\"stylesheet\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"fonts/material-icon/css/material-design-iconic-font.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <script src=\"js/alert.js\"></script>\n");
      out.write("         <script src=\"https://use.fontawesome.com/releases/v6.3.0/js/all.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script>\n");
      out.write("       window.history.forward();\n");
      out.write("        function noBack() {\n");
      out.write("            window.history.forward();\n");
      out.write("        }\n");
      out.write("</script>\n");
      out.write("        <script>\n");
      out.write("                document.addEventListener('contextmenu',\n");
      out.write("                event => event.preventDefault());\n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("            .button {\n");
      out.write("            background-color: #4CAF50;\n");
      out.write("            border: none;\n");
      out.write("            color: white;\n");
      out.write("            padding-left: 20px;\n");
      out.write("            padding-right: 20px;\n");
      out.write("            padding-bottom: 4px;\n");
      out.write("            padding-top: 4px;\n");
      out.write("            text-align: center;\n");
      out.write("            text-decoration: none;\n");
      out.write("            display: inline-block;\n");
      out.write("            font-size: 16px;\n");
      out.write("            margin: 4px 4px;\n");
      out.write("            transition-duration: 0.4s;\n");
      out.write("            cursor: pointer;\n");
      out.write("            border-radius: 10px;\n");
      out.write("}\n");
      out.write(".button1 {\n");
      out.write("  background-color: white; \n");
      out.write("  color: black;\n");
      out.write("  border: 2px solid #4CAF50;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button1:hover {\n");
      out.write("  background-color: #4CAF50;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write(".button3 {\n");
      out.write("  background-color: white; \n");
      out.write("  color: black;\n");
      out.write("  border: 2px solid #f44336;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button3:hover {\n");
      out.write("  background-color: #f44336;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write(".loadobject {\n");
      out.write("      transform: rotate(360deg);\n");
      out.write("      transition: transform 1s;\n");
      out.write("}\n");
      out.write(".loadobject:active {\n");
      out.write("  transform: rotate(0deg);\n");
      out.write("  transition:  0s;\n");
      out.write("}\n");
      out.write("  .fp-submit {\n");
      out.write("  display: inline-block;\n");
      out.write("  background: #4CAF50;\n");
      out.write("  color: #fff;\n");
      out.write("  font-size: 18px;\n");
      out.write("  border-bottom: none;\n");
      out.write("  border: 2px solid #4CAF50;\n");
      out.write("  width: auto;\n");
      out.write("  transition: all 0.5s;\n");
      out.write("  padding: 15px 39px;\n");
      out.write("  border-radius: 5px;\n");
      out.write("  -moz-border-radius: 5px;\n");
      out.write("  -webkit-border-radius: 5px;\n");
      out.write("  -o-border-radius: 5px;\n");
      out.write("  -ms-border-radius: 5px;\n");
      out.write("  margin-top: 25px;\n");
      out.write("  cursor: pointer; \n");
      out.write("  }\n");
      out.write("  .fp-submit:hover{\n");
      out.write("       background: white;\n");
      out.write("       color: black;\n");
      out.write("       border: 2px solid #4CAF50;\n");
      out.write("  }\n");
      out.write("  \n");
      out.write(" .input-container {\n");
      out.write("  display: -ms-flexbox; /* IE10 */\n");
      out.write("  display: flex;\n");
      out.write("  width: 100%;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 10px;\n");
      out.write("  margin-bottom: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".icon {\n");
      out.write("  padding: 10px;\n");
      out.write("  background: transparent;\n");
      out.write("  color: blueviolet;\n");
      out.write("  min-width: 50px;\n");
      out.write("  min-height: 20px;\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".input-field {\n");
      out.write("  width: 100%;\n");
      out.write("  outline: none;\n");
      out.write("  border: 0;\n");
      out.write("  background: linear-gradient(#A9A9A9, #A9A9A9) center bottom 5px /calc(100% - 10px) 1px no-repeat;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".input-field:focus {\n");
      out.write("  border: 2px solid dodgerblue;\n");
      out.write("  border-radius: 6px;\n");
      out.write("  background: none;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"d-flex flex-column\">\n");
      out.write("        <main class=\"flex-shrink-0\">\n");
      out.write("            <!-- Page content-->\n");
      out.write("            <section class=\"py-5\">\n");
      out.write("                <div class=\"container px-5\">\n");
      out.write("                    <!-- Contact form-->\n");
      out.write("                    <div class=\"bg-light rounded-4 py-5 px-4 px-md-5\">\n");
      out.write("                        <div style=\"text-align: end\">\n");
      out.write("                      <a href=\"javascript:closeWindow()\"><image style=\"align-items: flex-end\" src=\"assets/close.png\" height=\"6%\" width=\"6%\" id=\"about\"/></a>\n");
      out.write("                      &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                        <a href=\"javascript:aboutWindow()\"><image style=\"align-items: flex-start\" src=\"assets/help.png\" height=\"5.6%\" width=\"5.6%\" id=\"close\"/></a>\n");
      out.write("                        </div>\n");
      out.write("                       <div class=\"text-center mb-5\">\n");
      out.write("                            <div><img src=\"assets/update-user.png\" height=\"10%\" width=\"10%\"></img></div>\n");
      out.write("                            <br>\n");
      out.write("                            <h1 class=\"fw-bolder\">Enquiry Management</h1>\n");
      out.write("                            <p class=\"lead fw-normal text-muted mb-0\">Please be careful while you're deleting data !</p>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card mb-4\">\n");
      out.write("                            <div class=\"card-header\">\n");
      out.write("                                <i class=\"fas fa-table me-1\"></i>\n");
      out.write("                                Enquiry Database\n");
      out.write("                                <a href=\"javascript:reloadTable()\"> <img src=\"assets/reload.png\" height=\"3.2%\" width=\"3.2%\" style=\"align-items: flex-end;margin-left: 700px\"\n");
      out.write("                                     class=\"loadobject\"/></a>\n");
      out.write("                            </div>\n");
      out.write("      ");

          try {
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@Asus-Vivobook-14:1521:orcl","inmate","project");
            ost = (OracleStatement) oconn.createStatement();
            q = "select * from inquiry";
            ors = (OracleResultSet)ost.executeQuery(q);
          } catch (SQLException ex){out.println(ex.getMessage().toString());}
        
      out.write("\n");
      out.write("         <table align='center' border='1' width=\"100\" style=\"width:100%\" class=\"table table-striped table-dark\">\n");
      out.write("            <thead>\n");
      out.write("                <tr style=\"text-align: center\">\n");
      out.write("                    <th style=\"text-align: center\">Name</th>\n");
      out.write("                    <th style=\"text-align: center\">Email</th>\n");
      out.write("                    <th style=\"text-align: center\">Contact</th>\n");
      out.write("                    <th style=\"text-align: center\">Message</th>\n");
      out.write("                    <th style=\"text-align: center\" colspan=\"2\">Action</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("                ");

                    while(ors.next())
                    {
                    
      out.write("\n");
      out.write("                    <tr style=\"text-align: center\">\n");
      out.write("                    ");

                            for(int i = 1; i <= 4; i ++)
                            {
                        
      out.write("\n");
      out.write("                        <td id=\"wow\">");
      out.print(ors.getString(i));
      out.write("</td>\n");
      out.write("                        ");

                            }
                            
      out.write("\n");
      out.write("                        \n");
      out.write("            <form method=\"POST\" action=\"http://localhost:8080/InMate/DeleteEnquiry?email=");
      out.print(ors.getString("Email"));
      out.write("\" onsubmit=\"return checkRemove()\">\n");
      out.write("                        <td><button type=\"submit\" class=\"button button3\">Delete</button></td>\n");
      out.write("                        </form>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("            </tbody>\n");
      out.write("            <tfoot>\n");
      out.write("                <tr>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("            </tfoot>\n");
      out.write("        </table>\n");
      out.write("        ");

            oconn.close();
            ost.close();
            ors.close();            
        
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("            </section>\n");
      out.write("        </main>\n");
      out.write("        <!-- Footer-->\n");
      out.write("        <footer class=\"bg-white py-4 mt-auto\">\n");
      out.write("            <div class=\"container px-5\">\n");
      out.write("                <div class=\"row align-items-center justify-content-between flex-column flex-sm-row\">\n");
      out.write("                    <div class=\"col-auto\"><div class=\"small m-0\">Copyright &copy; InMate 2023</div></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <script src=\"js/scripts.js\"></script>\n");
      out.write("        <script src=\"https://cdn.startbootstrap.com/sb-forms-latest.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            function closeWindow(){\n");
      out.write("                Swal.fire({\n");
      out.write("                title: 'Do you want to exit ?',\n");
      out.write("                text: \"You'll be redirected to admin page !\",\n");
      out.write("                icon: 'warning',\n");
      out.write("                showCancelButton: true,\n");
      out.write("                confirmButtonColor: '#3085d6',\n");
      out.write("                cancelButtonColor: '#d33',\n");
      out.write("                confirmButtonText: 'Yes, Exit !'\n");
      out.write("              }).then((result) => {\n");
      out.write("            if (result.isConfirmed) {\n");
      out.write("            let timerInterval\n");
      out.write("            Swal.fire({\n");
      out.write("            title: 'Please wait for few seconds',\n");
      out.write("            html: 'Redirecting to admin portal....',\n");
      out.write("            timer: 2000,\n");
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
      out.write("        if (result.dismiss === Swal.DismissReason.timer) {\n");
      out.write("                window.open(\"AdminDisplay.jsp\",\"_self\");\n");
      out.write("            }\n");
      out.write("        })\n");
      out.write("          } else if (result.dismiss === Swal.DismissReason.cancel){\n");
      out.write("              Swal.fire(\n");
      out.write("                        'Cancelled',\n");
      out.write("                        'Operation Dismissed !',\n");
      out.write("                        'error'    \n");
      out.write("            )\n");
      out.write("          }\n");
      out.write("        })\n");
      out.write("            }\n");
      out.write("            function aboutWindow(){\n");
      out.write("                           Swal.fire(\n");
      out.write("                            'Important Message',\n");
      out.write("                            'Backbutton is disabled for this page, Because of some security reasons !',\n");
      out.write("                            'warning'\n");
      out.write("                    )\n");
      out.write("            }\n");
      out.write("             window.oncontextmenu = function () {\n");
      out.write("             Swal.fire(\n");
      out.write("            'Security Alert',\n");
      out.write("            'Right-Click and Input-Facilities are disabled for security reason.',\n");
      out.write("            'warning'\n");
      out.write("            )\n");
      out.write("          }\n");
      out.write("          function reloadTable(){\n");
      out.write("                  setTimeout(\"window.location.reload()\", 1000);\n");
      out.write("          }\n");
      out.write("                function checkRemove(){\n");
      out.write("                            if(confirm(\"Are you sure to remove this enquiry ?\") === true)\n");
      out.write("                    return true;\n");
      out.write("                else\n");
      out.write("                    return false;\n");
      out.write("                  }\n");
      out.write("        </script>\n");
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
