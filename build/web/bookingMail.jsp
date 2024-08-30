<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="java.util.Properties"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Continue</title>
    </head>
    <body>
        <%!
            String username, mail, vsubject, vbody, vto;
            HttpSession sess;
        %>
        <%
            sess = request.getSession(true);
            if (sess == null) {
                response.sendRedirect("login.jsp");
            }
            username = sess.getAttribute("user").toString();
            mail = sess.getAttribute("fname").toString();
            vto = mail;
            vsubject = "InMate Booking Confirmation";
            vbody = "Hello, " + username + " !" + " Thanks for using InMate PG booking system. This is an auto-generated booking confirmation mail. Please don\'t reply to it, Our PG manager will contact with you within 2-3 business days.";
            final String username = "developbyheart33@gmail.com";
            final String password = "qebxlphjangpfvba";
            Properties props = new Properties();
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.port", "587");
            Session session1 = Session.getInstance(props,
                    new javax.mail.Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(username, password);
                }
            });
            try {
                Message message = new MimeMessage(session1);
                message.setFrom(new InternetAddress(username));
                message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(vto));
                message.setSubject(vsubject);
                message.setText(vbody);
                Transport.send(message);
                response.sendRedirect("http://localhost:8080/InMate/homepage.jsp");
            }catch (MessagingException ex) {
                     out.println(ex.getMessage().toString());
            }
        %>
    </body>
</html>
