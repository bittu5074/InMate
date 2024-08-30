<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" type="image/png" href="assets/lock.png"/>
    <script src="js/alert.js"></script>
    <title>OTP Verification</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            padding: 0;
                background-image: url('adback.png');
                background-position: center;
                background-size: cover;
              background-position: center;
              background-size: cover;
        }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background: white;
            height: 60%;
            width: 50%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 40px;
            text-align: center;
            border: 2px solid white;
            border-radius: 30px;
        }
        h1 {
            margin-bottom: 20px;
            text-align: center;
        }
        input[type="text"] {
            width: 60%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 2px solid #ccc;
            border-radius: 4px;
            text-align: center;
            font-weight: bold;
            font-size: 20px;
        }
        input[type="submit"] {
            width: 50%;
            background-color: #c3581c;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: rgba(0,0,0,0.5);
        }
    </style>
</head>
<body>
    <script>
                document.addEventListener('contextmenu',
                event => event.preventDefault());
                window.history.forward();
    </script>
             <%!
            String vname, votp, vemail,opass;
            %>
            <%
                HttpSession sess = request.getSession(false);
                if(sess == null) response.sendRedirect("http://localhost:8080/InMate/SomethingWrong");
                        vname = sess.getAttribute("fname").toString();
                        votp = sess.getAttribute("otp").toString();
                        vemail = sess.getAttribute("email").toString();
            if(request.getParameter("bVerify")!=null)
            {
                if(request.getParameter("tbOTP").equals(votp))
                {
                %>
                <script>
                    location.href="http://localhost:8080/InMate/homepage.jsp";
                </script>
                <%
                }
                else
                {
                       %> 
                            <script>
                    location.href="http://localhost:8080/InMate/OTPfailed";
                            </script>               
                        <%
                }
            }
            else
            {
                   %>
    <div class="container">
        <h1>OTP Verification</h1>
        <form name="frmOTP" method="POST" action="http://localhost:8080/InMate/requestOTP.jsp">
          <label for="otp">Enter OTP:</label><br>
          <input type="text" id="otp" name="tbOTP" maxlength="4" onkeypress="return checkDigit(event)"
                 required="true"/><br><br>
          <input type="submit" value="Verify" name="bVerify">
          <p>Check your inbox for OTP. Designated Email: <b><%=vemail%></b></p>
              <%
                    }   
            %> 
        </form>
        <br>
    </div>
    <script>
           window.oncontextmenu = function () {
             Swal.fire(
            'Security Alert',
            'Right-Click and Input-Facilities are disabled for security reason.',
            'warning'
            )
          }
        function checkDigit(event) {
            let code = (event.which) ? event.which : event.keyCode;

            if ((code < 48 || code > 57) && (code > 31)) {
                return false;
            }

            return true;
        }
    </script>
</body>
</html>