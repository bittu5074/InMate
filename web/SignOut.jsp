<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Continue</title>
    </head>
    <body>
        <%
            HttpSession sess = request.getSession(true);
                sess.invalidate();
                    Cookie[] cookies = request.getCookies();
    if (cookies != null){
        for (Cookie cookie : cookies) {
            cookie.setValue("");
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
    }
                  response.sendRedirect("http://localhost:8080/InMate/login.jsp");
            %>
    </body>
</html>