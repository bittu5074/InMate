package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
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
public class RegistrationSess extends HttpServlet {
            String vemail, vpass, vname, vcontact;
        String vto, vcc, vbcc, vsubject, vbody;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegistrationSess</title>");            
            out.println("</head>");
            out.println("<body>");
            vemail = request.getParameter("email"); 
            vpass = request.getParameter("pass"); 
            vname = request.getParameter("name"); 
            vcontact = request.getParameter("contact");
                HttpSession sess = request.getSession(true); //creating a http session
                vto=vemail;
                sess.setAttribute("rname",vname);
                sess.setAttribute("rmail",vemail);
                sess.setAttribute("rpass",vpass);
                sess.setAttribute("rmobile",vcontact);
                vsubject="InMate Authentication";
                vbody="Enter the OTP for complete your registration";
                final String username = "developbyheart33@gmail.com"; // OTP will provide from this mail to user-mail
                final String password = "qebxlphjangpfvba"; // you can set this password from google account settings
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
                     vbody += "\nYour OTP for registration: " + x;
                     sess.setAttribute("rotp",x);
                     sess.setAttribute("remail",vemail);
                     
                    message.setText(vbody);
                    Transport.send(message);
                    response.sendRedirect("http://localhost:8080/InMate/RegOTP.jsp");
                    
            } catch (MessagingException e) {

                     out.println("<h2 style='color:red'>"+e.getMessage()+"</h2>");
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