<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Continue</title>
    </head>
    <body>
        <%
            String key = request.getParameter("otp_val");
            String p1 = request.getParameter("k1");
            String p2 = request.getParameter("k2");
            String p3 = request.getParameter("k3");
            String p4 = request.getParameter("k4");
            String p5 = request.getParameter("k5");
            String p6 = request.getParameter("k6");
            String fin = (p1+p2+p3+p4+p5+p6);
                if (key.equals(fin)){
                    response.sendRedirect("http://localhost:8080/InMate/PaymentSuccess");
                } else {
                    response.sendRedirect("http://localhost:8080/InMate/PaymentFailed");
                }
         %>
    </body>
</html>
