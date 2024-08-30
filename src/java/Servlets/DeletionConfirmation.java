package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;
public class DeletionConfirmation extends HttpServlet {
         String uid;
         OracleConnection oconn;
         OraclePreparedStatement ost;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>InMate | Removed</title>");
            out.println("<link rel=\"stylesheet\" href=\"fonts/material-icon/css/material-design-iconic-font.min.css\">");
            out.println("<link rel=\"icon\" type=\"image/x-icon\" href=\"assets/check.png\" />");
            out.println("<link rel=\"stylesheet\" href=\"css/style.css\">");
            out.println("<script src=\"//cdn.jsdelivr.net/npm/sweetalert2@10\"></script>");
            out.println("<script>");
            out.println("window.history.forward();");
            out.println("document.addEventListener('contextmenu',event => event.preventDefault());");
            out.println("</script>");
            out.println("</head>");
            out.println("<body style=\"background: #d7d2ce\">");
            uid = request.getParameter("email");
                try {
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                oconn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@Asus-Vivobook-14:1521:orcl","inmate","project");
                String q = "delete from userdetails where email = '" +uid+ "'";
                ost = (OraclePreparedStatement) oconn.prepareStatement(q);
                ost.executeUpdate();
                ost.close();
                oconn.close();
            out.println("<script>");
            out.println("Swal.fire({");
            out.println("title: 'Success !',");
            out.println("text: \"Your target user has been deleted.\",");
            out.println("icon: 'success',");
            out.println("showCancelButton: false,");
            out.println("allowOutsideClick: false,");
            out.println("confirmButtonColor: '#8A2BE2',");
            out.println("confirmButtonText: 'Okay'");
            out.println("}).then((result) => {");
            out.println("if (result.isConfirmed) {");
            out.println("window.location = \"ManageUser.jsp\";");
            out.println("}");
            out.println("})");
            out.println("</script>");
            } catch (SQLException ex) {
                Logger.getLogger(RegistrationConfirmation.class.getName()).log(Level.SEVERE, null, ex);
            }
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
