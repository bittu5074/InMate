<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>InMate</title>
    </head>
    <body>
            <%
                HttpSession sess = request.getSession(true);
                    if (sess.getAttribute("fname") == null || sess.getAttribute("fpass") == null){
                        response.sendRedirect("http://localhost:8080/InMate/login.jsp");
                    } else {
                        response.sendRedirect("http://localhost:8080/InMate/homepage.jsp");
                    }
                %>
    </body>
</html>