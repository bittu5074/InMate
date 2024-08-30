<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OTP Verification</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="css/OTP_card.css" rel="stylesheet">
  <link rel="icon" type="image/x-icon" href="assets/lock.png" />
  <script type="text/javascript" src="js/alert.js"></script>
</head>
<body>
            <%
            String raws = "0123456789";
            StringBuilder sb = new StringBuilder();
            Random random = new Random();
            int length = 6;
                for (int i=0;i<length;i++){
                    int index = random.nextInt(raws.length());
                    char randomChar = raws.charAt(index);
                    sb.append(randomChar);
                }
                    String CODE = sb.toString();
            %>
            <script>
                window.history.forward();
                        document.addEventListener('contextmenu',
                        event => event.preventDefault());
            </script>
            <p style="color: white;text-align: center;font-size: 20px;font-weight: bold;margin-top: 20px"
               id="time_head"></p>
    <section class="wrapper" id="otp_holder">
        <div class="container" id="white_back">
      <div class="col-sm-8 offset-sm-2 col-lg-6 offset-lg-3 col-xl-6 offset-xl-3 text-center">
          <form action = "CheckOTP.jsp" method = "POST" class="rounded bg-white shadow p-5"
                onsubmit="return checkValid()">
          <h3 class="text-dark fw-bolder fs-4 mb-2" id="cancel_head">Two Step Verification</h3>

          <div class="fw-normal text-muted mb-4" id="cancel_subhead">
            Enter the verification code which we've generated
          </div>  
          <div id="cancel_security">Security Code:</div>
                    <div class="d-flex align-items-center justify-content-center fw-bold mb-4" id="cancel_code">
                        <input name="otp_val" value="<%=CODE%>" style="background: white;
                               color: black;text-align: center;border: none;cursor: default;font-weight: bold" 
                               id="otp_val"/>
                    </div>

          <div class="otp_input text-start mb-2" id="cancel_hold">
                        <label for="digit" id="cancel_label">Enter your 6 digit OTP here</label>           
            <div class="d-flex align-items-center justify-content-between mt-2" id="cancel_input">
                            <input type="text" class="form-control" maxlength="1" id="0" onkeypress="return checkDigit(event)"
                                   required="true" name="k1">
                            <input type="text" class="form-control" maxlength="1" id="1" onkeypress="return checkDigit(event)"
                                   required="true" name="k2">
                            <input type="text" class="form-control" maxlength="1" id="2" onkeypress="return checkDigit(event)"
                                   required="true" name="k3">
                            <input type="text" class="form-control" maxlength="1" id="3" onkeypress="return checkDigit(event)"
                                   required="true" name="k4">
                            <input type="text" class="form-control" maxlength="1" id="4" onkeypress="return checkDigit(event)"
                                   required="true" name="k5">
                            <input type="text" class="form-control" maxlength="1" id="5" onkeypress="return checkDigit(event)"
                                   required="true" name="k6">
            </div> 
          </div>
              <button type="submit" class="btn btn-primary submit_btn my-4" id="put_otp"
                      style="background: #c3581c;border: 1px solid #c3581c">Submit</button>
          <div class="fw-normal text-muted mb-2" id="cancel_footer">
            Want to change the code ? <a href="OTPVer.jsp" style="color: #c3581c;text-decoration: none;font-weight: bold">Re-Generate</a>
          </div>
            </form>
      </div>
    </div>
  </section>                               
  <script type="text/javascript">
    let elts = document.getElementsByClassName('form-control');
    Array.from(elts).forEach(function(elt){
    elt.addEventListener("keyup", function() {
    if (elt.value.length === 1) {
      elt.nextElementSibling.focus();
    }
  });
})
    function checkDigit(event) {
    let code = (event.which) ? event.which : event.keyCode;

    if ((code < 48 || code > 57) && (code > 31)) {
        return false;
    }

    return true;
}
    function serviceOut(){
               document.getElementById('cancel_head').style.display = 'none';
               document.getElementById('cancel_subhead').style.display = 'none';
               document.getElementById('cancel_security').style.display = 'none';
               document.getElementById('cancel_code').style.display = 'none';
               document.getElementById('cancel_hold').style.display = 'none';
               document.getElementById('otp_val').style.display = 'none';
               document.getElementById('put_otp').style.display = 'none';
               document.getElementById('cancel_footer').style.display = 'none';
               document.getElementById('time_head').style.display = 'none';
               document.getElementById('white_back').style.display = 'none';
               
               Swal.fire({
                title: 'Request timed out !',
                text: "Please retry your payment process",
                icon: 'warning',
                showCancelButton: false,
                allowOutsideClick: false,
                confirmButtonColor: '#d33',
                confirmButtonText: 'Retry !'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location = "PaymentCard.jsp";
                }
        })
    }
    let timeLeft = 30;
    let elem = document.getElementById('time_head');
    function sessionTimer() {
      if (timeLeft === -1) {
        clearTimeout(timerId);         
      } else {
          window.oncontextmenu = function () {
             Swal.fire(
            'Security Alert',
            'Right-Click and Input-Facilities are disabled for security reason.',
            'warning'
            )
          }
        elem.innerHTML = 'Your OTP will expire in '+timeLeft+' Second/s';
        timeLeft--;
      }
    }
            document.getElementById("otp_val").addEventListener("mousedown", function(event){
                event.preventDefault();
    });
            document.getElementById('otp_holder').style.display = 'none';
            document.getElementById('time_head').style.display = 'none';
             let timerInterval;
            Swal.fire({
            title: 'Please wait for few seconds',
            html: 'Communicating with bank server....',
            timer: 4000,
            timerProgressBar: true,
            allowOutsideClick: false,
            didOpen: () => {
            Swal.showLoading()
            const b = Swal.getHtmlContainer().querySelector('b')
            timerInterval = setInterval(() => {
            b.textContent = Swal.getTimerLeft()
            }, 100)
          },
        willClose: () => {
             clearInterval(timerInterval)
          }
            }).then((result) => {
        if (result.dismiss === Swal.DismissReason.timer) { 
               document.getElementById('time_head').style.display = 'block';
               document.getElementById('otp_holder').style.display = 'block';
               setInterval(sessionTimer, 1000);
               setTimeout(serviceOut, 31000);
            }
         })
  </script>
</body>
</html>