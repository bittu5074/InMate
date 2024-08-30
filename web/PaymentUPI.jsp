<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>InMate | Payments</title>
        <script src="js/alert.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> 
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
        <link rel="icon" type="image/x-icon" href="assets/payment.png" />
        <link rel="stylesheet" href="css/upi.css">
    </head>
    <body>
        <script>
                window.history.forward();
                document.addEventListener('contextmenu',
                event => event.preventDefault());
        </script>
        <div class="card mt-50 mb-50">
            <div class="card-title mx-auto">
                UPI Payment
            </div>
            <form action="CheckUPI.jsp" method="POST" onsubmit="return checkValid()">
                <span id="card-header">Enter your credentials</span>
                <div class="row-1">
                    <div class="row row-2">
                        <span id="card-inner">VPA / UPI ID</span>
                    </div>
                    <div class="row row-2">
                        <input type="text" placeholder="someone@okaxis" maxlength="40" id="vpa" required="true"
                               pattern="[a-zA-Z0-9.\-_]{2,256}@[a-zA-Z]{2,64}"
                               title="Please enter correct VPA / UPI ID">
                    </div>
                </div>
                <div class="row three">
                    <div class="col-7">
                        <div class="row-1">
                            <div class="row row-2">
                                <span id="card-inner">UPI PIN</span>
                            </div>
                            <div class="row row-2">
                                <input type="password" maxlength="6" placeholder="******" id="upin" required="true"
                                       onkeypress="return checkDigit(event)">
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <button class="btn"><b>Make Payment</b></button>
            </form>
        </div>
        <script>
         window.oncontextmenu = function () {
             Swal.fire(
            'Security Alert',
            'Right-Click and Input-Facilities are disabled for security reason.',
            'warning'
            )
       }
        function checkValid(){
            if (document.getElementById('upin').value.length < 6){
             Swal.fire(
            'Oops !',
            'Please enter correct UPI PIN',
            'error'
                )
        return false;
            }
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
