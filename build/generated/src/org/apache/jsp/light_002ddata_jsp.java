package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import oracle.jdbc.OracleResultSetMetaData;
import java.sql.DriverManager;
import oracle.jdbc.OracleResultSet;
import oracle.jdbc.OracleStatement;
import oracle.jdbc.OracleConnection;

public final class light_002ddata_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            OracleConnection oconn;
            OracleStatement ost;
            OracleResultSet ors;
            OracleResultSetMetaData orsmd;
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
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\" />\n");
      out.write("        <meta name=\"description\" content=\"\" />\n");
      out.write("        <meta name=\"author\" content=\"\" />\n");
      out.write("        <title>Dashboard | InMate Admin</title>\n");
      out.write("                        ");
      out.write("\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/admin-style.css\" rel=\"stylesheet\" />\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"assets/admin.png\" />\n");
      out.write("        <script src=\"https://use.fontawesome.com/releases/v6.3.0/js/all.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("         <script src=\"js/alert.js\"></script>\n");
      out.write("                 <script>\n");
      out.write("                    window.history.forward();\n");
      out.write("        function noBack() {\n");
      out.write("            window.history.forward();\n");
      out.write("        }\n");
      out.write("        </script>\n");
      out.write("                <style>\n");
      out.write("            .shadow {\n");
      out.write("                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1) !important;\n");
      out.write("            }\n");
      out.write("            .img-circle img{\n");
      out.write("                height: 40px;\n");
      out.write("                width: 40px;\n");
      out.write("                border-radius: 100%;\n");
      out.write("                border: 2px solid #fff;\n");
      out.write("                transition: transform .2s;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            .img-circle img:hover {\n");
      out.write("                transform: scale(1.3);\n");
      out.write("            }\n");
      out.write("            .modal {\n");
      out.write("              display: none;\n");
      out.write("              position: fixed;\n");
      out.write("              z-index: 1;\n");
      out.write("              padding-top: 80px;\n");
      out.write("              left: 0;\n");
      out.write("              top: 0;\n");
      out.write("              width: 100%;\n");
      out.write("              height: 100%;\n");
      out.write("              overflow: auto;\n");
      out.write("              background-color: rgb(0,0,0);\n");
      out.write("              background-color: rgba(0,0,0,0.9);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .modal-content {\n");
      out.write("              margin: auto;\n");
      out.write("              display: block;\n");
      out.write("              width: 90%;\n");
      out.write("              height: 90%;\n");
      out.write("              max-width: 450px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .modal-content, #caption {  \n");
      out.write("              -webkit-animation-name: zoom;\n");
      out.write("              -webkit-animation-duration: 0.6s;\n");
      out.write("              animation-name: zoom;\n");
      out.write("              animation-duration: 0.6s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @-webkit-keyframes zoom {\n");
      out.write("              from {-webkit-transform:scale(0)} \n");
      out.write("              to {-webkit-transform:scale(1)}\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @keyframes zoom {\n");
      out.write("              from {transform:scale(0)} \n");
      out.write("              to {transform:scale(1)}\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .close {\n");
      out.write("              top: 60px;\n");
      out.write("              position: absolute;\n");
      out.write("              right: 200px;\n");
      out.write("              color: white;\n");
      out.write("              font-size: 70px;\n");
      out.write("              font-weight: bold;\n");
      out.write("              transition: 0.3s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .close:hover,\n");
      out.write("            .close:focus {\n");
      out.write("              color: red;\n");
      out.write("              text-decoration: none;\n");
      out.write("              cursor: pointer;\n");
      out.write("            }\n");
      out.write("            @media only screen and (max-width: 450px){\n");
      out.write("              .modal-content {\n");
      out.write("                width: 100%;\n");
      out.write("              }\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"sb-nav-fixed\">\n");
      out.write("        <nav class=\"sb-topnav navbar navbar-expand navbar-dark bg-dark\">\n");
      out.write("            <div class=\"img-circle\" style=\"margin-left: 10px\">\n");
      out.write("                <img src=\"assets/admin_face.png\" alt=\"Image\" class=\"shadow\" id=\"myImg\">\n");
      out.write("            </div>\n");
      out.write("            <a class=\"navbar-brand ps-3\" href=\"#\">Malvika Sinha</a>\n");
      out.write("            <div class=\"d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0\">\n");
      out.write("            <input class=\"datatable-input\" placeholder=\"Search accounts\" \n");
      out.write("                   type=\"text\" id=\"doSearch\" onkeyup=\"searchFunction()\">\n");
      out.write("            </div>\n");
      out.write("            <ul class=\"navbar-nav ms-auto ms-md-0 me-3 me-lg-4\">\n");
      out.write("                <li class=\"nav-item dropdown\">\n");
      out.write("                    <a class=\"nav-link dropdown-toggle\" id=\"navbarDropdown\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("                        <i class=\"fas fa-user fa-fw\"></i></a>\n");
      out.write("                    <ul class=\"dropdown-menu dropdown-menu-end\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                        <li><a class=\"dropdown-item\" href=\"AdminProfile.jsp\" target=\"_self\">\n");
      out.write("                        <i class=\"fa fa-user\" aria-hidden=\"true\"></i>&nbsp;&nbsp;Admin Profile</a></li>\n");
      out.write("                        <li><a class=\"dropdown-item\" href=\"javascript:shSubs()\">\n");
      out.write("                                <i class=\"fa fa-paper-plane\" aria-hidden=\"true\"></i>&nbsp;&nbsp;Subscribers</a></li>\n");
      out.write("                        <li><a class=\"dropdown-item\" href=\"javascript:shEnq()\">\n");
      out.write("                                <i class=\"fa fa-question-circle\" aria-hidden=\"true\"></i>&nbsp;&nbsp;Enquiries</a></li>\n");
      out.write("                        <li><a class=\"dropdown-item\" href=\"javascript:logoutConf()\" target=\"_self\">\n");
      out.write("                                <i class=\"fa fa-power-off\" aria-hidden=\"true\"></i>&nbsp;&nbsp;Logout</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("        <div id=\"myModal\" class=\"modal\">\n");
      out.write("        <span class=\"close\">&times;</span>\n");
      out.write("        <img class=\"modal-content\" id=\"img01\">\n");
      out.write("        <div id=\"caption\"></div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"layoutSidenav\">\n");
      out.write("            <div id=\"layoutSidenav_nav\">\n");
      out.write("                <nav class=\"sb-sidenav accordion sb-sidenav-dark\" id=\"sidenavAccordion\">\n");
      out.write("                    <div class=\"sb-sidenav-menu\">\n");
      out.write("                        <div class=\"nav\">\n");
      out.write("                            <div class=\"sb-sidenav-menu-heading\">Core</div>\n");
      out.write("                            <a class=\"nav-link\" href=\"AdminDisplay.jsp\">\n");
      out.write("                                <div class=\"sb-nav-link-icon\"><i class=\"fas fa-tachometer-alt\"></i></div>\n");
      out.write("                                Dashboard\n");
      out.write("                            </a>\n");
      out.write("                            <a class=\"nav-link\" href=\"#\" id=\"reload\">\n");
      out.write("                                <div class=\"sb-nav-link-icon\"><i class=\"fas fa-hourglass\"></i></div>\n");
      out.write("                                Reload Database\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"sb-sidenav-menu-heading\">Table Style</div>\n");
      out.write("                            <a class=\"nav-link collapsed\" href=\"#\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapseLayouts\" aria-expanded=\"false\" aria-controls=\"collapseLayouts\">\n");
      out.write("                                <div class=\"sb-nav-link-icon\"><i class=\"fas fa-columns\"></i></div>\n");
      out.write("                                Layouts\n");
      out.write("                                <div class=\"sb-sidenav-collapse-arrow\"><i class=\"fas fa-angle-down\"></i>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                          <div class=\"collapse\" id=\"collapseLayouts\" aria-labelledby=\"headingOne\" data-bs-parent=\"#sidenavAccordion\">\n");
      out.write("                                <nav class=\"sb-sidenav-menu-nested nav\">\n");
      out.write("                                    <a class=\"nav-link\" href=\"light-data.jsp\">Light</a>\n");
      out.write("                                    <a class=\"nav-link\" href=\"tables.jsp\">Dark</a>\n");
      out.write("                                </nav>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"sb-sidenav-menu-heading\">Addons</div>\n");
      out.write("                            <a class=\"nav-link\" href=\"tables.jsp\">\n");
      out.write("                                <div class=\"sb-nav-link-icon\"><i class=\"fas fa-user\"></i></div>\n");
      out.write("                                Search Accounts\n");
      out.write("                            </a>\n");
      out.write("                            <a class=\"nav-link\" href=\"ManageUser.jsp\">\n");
      out.write("                                <div class=\"sb-nav-link-icon\"><i class=\"fas fa-wrench\"></i></div>\n");
      out.write("                                Manage Accounts\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"sb-sidenav-footer\">\n");
      out.write("                        <div class=\"small\"><b style=\"font-size: 16px\">Logged in as:</b><a href=\"javascript:about()\"><image style=\"margin-left: 64px\" src=\"assets/help.png\" height=\"12%\" width=\"12%\" id=\"about\"/></a></div>\n");
      out.write("                        <b>InMate Admin</b>\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"layoutSidenav_content\">\n");
      out.write("                <main>\n");
      out.write("                    <div class=\"container-fluid px-4\">\n");
      out.write("                        <h1 class=\"mt-4\">Data Tables</h1>\n");
      out.write("                        <ol class=\"breadcrumb mb-4\">\n");
      out.write("                            <li class=\"breadcrumb-item\">Dashboard</li>\n");
      out.write("                            <li class=\"breadcrumb-item active\">Data Tables</li>\n");
      out.write("                        </ol>\n");
      out.write("                        <div class=\"card mb-4\">\n");
      out.write("                            <div class=\"card-header\">\n");
      out.write("                                <i class=\"fas fa-table me-1\"></i>\n");
      out.write("                                User Database\n");
      out.write("                            </div>\n");
      out.write("                            ");

            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@Asus-Vivobook-14:1521:orcl","inmate","project");
            ost = (OracleStatement) oconn.createStatement();
            q = "select * from userdetails order by 1";
            ors = (OracleResultSet)ost.executeQuery(q);
            orsmd = (OracleResultSetMetaData)ors.getMetaData();
        
      out.write("\n");
      out.write("        <table align='center' border='1' width=\"100\" style=\"width:100%\" class=\"table table-striped\" id =\"datatable\">\n");
      out.write("            <thead>\n");
      out.write("                <tr style=\"text-align: center\">\n");
      out.write("                    <th style=\"text-align: center\">Name</th>\n");
      out.write("                    <th style=\"text-align: center\">Email</th>\n");
      out.write("                    <th style=\"text-align: center\">Password</th>\n");
      out.write("                    <th style=\"text-align: center\">Mobile (+91)</th>\n");
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
      out.write("                        <td>");
      out.print(ors.getString(i));
      out.write("</td>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
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
      out.write("                    </div>\n");
      out.write("                </main>\n");
      out.write("                <footer class=\"py-4 bg-light mt-auto\">\n");
      out.write("                    <div class=\"container-fluid px-4\">\n");
      out.write("                        <div class=\"d-flex align-items-center justify-content-between small\">\n");
      out.write("                            <div class=\"text-muted\">Copyright &copy; InMate 2023</div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </footer>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("                        <script>\n");
      out.write("                            function searchFunction() {\n");
      out.write("  let input, filter, table, tr, td, i, txtValue;\n");
      out.write("  input = document.getElementById(\"doSearch\");\n");
      out.write("  filter = input.value.toUpperCase();\n");
      out.write("  table = document.getElementById(\"datatable\");\n");
      out.write("  tr = table.getElementsByTagName(\"tr\");\n");
      out.write("  for (i = 0; i < tr.length; i++) {\n");
      out.write("    td = tr[i].getElementsByTagName(\"td\")[0];\n");
      out.write("    if (td) {\n");
      out.write("      txtValue = td.textContent || td.innerText;\n");
      out.write("      if (txtValue.toUpperCase().indexOf(filter) > -1) {\n");
      out.write("        tr[i].style.display = \"\";\n");
      out.write("      } else {\n");
      out.write("        tr[i].style.display = \"none\";\n");
      out.write("      }\n");
      out.write("    }\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("            document.getElementById('reload').addEventListener('click', function(){\n");
      out.write("                            Swal.fire({\n");
      out.write("            title: 'Please wait for few seconds',\n");
      out.write("            html: 'Reloading Database....',\n");
      out.write("            timer: 2000,\n");
      out.write("            timerProgressBar: true,\n");
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
      out.write("                window.location.reload();\n");
      out.write("            }\n");
      out.write("            })\n");
      out.write("        })\n");
      out.write("            window.oncontextmenu = function () {\n");
      out.write("             Swal.fire(\n");
      out.write("            'Security Alert',\n");
      out.write("            'Right-Click and Input-Facilities are disabled for security reason.',\n");
      out.write("            'warning'\n");
      out.write("            )\n");
      out.write("          }\n");
      out.write("            function about(){\n");
      out.write("            Swal.fire(\n");
      out.write("            'Important Message',\n");
      out.write("            'Backbutton is disabled for this page, Because of some security reasons. Simply logout to exit !',\n");
      out.write("            'warning'\n");
      out.write("            )\n");
      out.write("          }\n");
      out.write("           function logoutConf(){\n");
      out.write("              Swal.fire({\n");
      out.write("                title: 'Do you want to logout ?',\n");
      out.write("                showDenyButton: true,\n");
      out.write("                showCancelButton: true,\n");
      out.write("                confirmButtonText: 'Stay',\n");
      out.write("                denyButtonText: `Logout`,\n");
      out.write("              }).then((result) => {\n");
      out.write("        if (result.isConfirmed) {\n");
      out.write("                Swal.DismissReason;\n");
      out.write("            } else if (result.isDenied) {\n");
      out.write("                window.open(\"admin.jsp\",\"_self\");\n");
      out.write("            }\n");
      out.write("      })\n");
      out.write("      \n");
      out.write("    }\n");
      out.write("            let modal = document.getElementById(\"myModal\");\n");
      out.write("            let img = document.getElementById(\"myImg\");\n");
      out.write("            let modalImg = document.getElementById(\"img01\");\n");
      out.write("            let captionText = document.getElementById(\"caption\");\n");
      out.write("            img.onclick = function(){\n");
      out.write("              modal.style.display = \"block\";\n");
      out.write("              modalImg.src = this.src;\n");
      out.write("              captionText.innerHTML = this.alt;\n");
      out.write("            }\n");
      out.write("            let span = document.getElementsByClassName(\"close\")[0];\n");
      out.write("            span.onclick = function() { \n");
      out.write("              modal.style.display = \"none\";\n");
      out.write("            }\n");
      out.write("            function shSubs(){\n");
      out.write("                window.open(\"Subscribers.jsp\",\"_self\");\n");
      out.write("            }\n");
      out.write("            function shEnq(){\n");
      out.write("                window.open(\"Enquiry.jsp\",\"_self\");\n");
      out.write("            }\n");
      out.write("                        </script>\n");
      out.write("                                <script>\n");
      out.write("                document.addEventListener('contextmenu',\n");
      out.write("                event => event.preventDefault());\n");
      out.write("        </script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"js/scripts.js\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"js/datatables-simple-demo.js\"></script>\n");
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
