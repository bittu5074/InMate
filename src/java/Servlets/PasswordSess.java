package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;
import oracle.jdbc.OracleResultSet;
public class PasswordSess extends HttpServlet {
        OracleConnection oconn;
        OraclePreparedStatement ost;
        OracleResultSet ors = null;
        String vemail, vpass, vname, uname, upass;
        String vto, vcc, vbcc, vsubject, vbody;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>InMate | Authentication</title>");            
            out.println("</head>");
            out.println("<body>");
            vemail = request.getParameter("veremail");
            vpass = request.getParameter("verpassword");
            try {
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
            } catch (SQLException ex) {
                Logger.getLogger(Requestsess.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                oconn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@Asus-Vivobook-14:1521:orcl","inmate","project");
            ost =(OraclePreparedStatement) oconn.prepareStatement("select * from userdetails where email=?");
            ost.setString(1, vemail);
            ors = (OracleResultSet) ost.executeQuery();
                   if(ors.next()){
                vname = ors.getString("Email");
                HttpSession sess = request.getSession(true);
                vto=vname;
                sess.setAttribute("fnameo",vname);
                sess.setAttribute("fpasso",vpass);
                vsubject="InMate Authentication";
                vbody="Enter the OTP to reset your password";
                final String username = "developbyheart33@gmail.com";
                final String password = "qebxlphjangpfvba";
                Properties props = new Properties();
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");

            Session session = Session.getInstance(props,
              new javax.mail.Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication(username, password);
                    }
              });
            try {
                    Message message = new MimeMessage(session);
                    try {
                        message.setFrom(new InternetAddress(username));
                    } catch (AddressException ex) {
                        Logger.getLogger(Requestsess.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(vto));
                    message.setSubject(vsubject);
                    Random random = new Random();
                     int x = 0;
                     while(x < 1000){
                         x = random.nextInt(9999);
                     }
                     vbody += "\nYour password reset code: " + x;
                     sess.setAttribute("otp",x);
                     sess.setAttribute("email",vemail);
                     
                    message.setText(vbody);
                    Transport.send(message);
                    response.sendRedirect("http://localhost:8080/InMate/requestCode.jsp");
                    
            } catch (MessagingException e) {

                     out.println("<h2 style='color:red'>"+e.getMessage()+"</h2>");
            }
                
        }
            else {
                response.sendRedirect("http://localhost:8080/InMate/PasswordFailed");
            }
            ost.close();
            oconn.close();
            out.println("</body>");
            out.println("</html>");
            } catch (SQLException ex) {
                Logger.getLogger(Requestsess.class.getName()).log(Level.SEVERE, null, ex);
            }
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