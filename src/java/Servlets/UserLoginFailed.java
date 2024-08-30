package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class UserLoginFailed extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<script>");
            out.println("window.history.forward();");
            out.println("document.addEventListener('contextmenu',event => event.preventDefault());");
            out.println("</script>");
            out.println("<title>InMate | Failed</title>");
            out.println("<link rel=\"stylesheet\" href=\"fonts/material-icon/css/material-design-iconic-font.min.css\">");
            out.println("<link rel=\"icon\" type=\"image/x-icon\" href=\"assets/close.png\" />");
            out.println("<link rel=\"stylesheet\" href=\"css/style.css\">");
            out.println("<script src=\"//cdn.jsdelivr.net/npm/sweetalert2@10\"></script>");
            out.println("</head>");
            out.println("<body style=\"background: #d7d2ce\">");
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("title: 'Oops !',");
            out.println("text: 'You have entered wrong username or password.',");
            out.println("icon: 'error',");
            out.println("showCancelButton: false,");
            out.println("allowOutsideClick: false,");
            out.println("confirmButtonColor: '#8A2BE2',");
            out.println("confirmButtonText: 'Dismiss'");
            out.println("}).then((result) => {");
            out.println("if (result.isConfirmed) {");
            out.println("window.location = \"login.jsp\";");
            out.println("}");
            out.println("})");
            out.println("</script>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
