<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="assets/payment.png" />
    <title>InMate | Payments</title>
        <script src="js/alert.js"></script>
        <link href="css/OTP_card.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <script>
            window.history.forward();
                document.addEventListener('contextmenu',
                event => event.preventDefault());
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
                window.open("http://localhost:8080/InMate/PaymentSuccess","_self");
            }
         })
        </script>
    </body>
</html>
