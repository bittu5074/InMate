<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/payment_card.css">
    <link rel="icon" type="image/x-icon" href="assets/payment.png" />
    <title>InMate | Payments</title>
    <script src="js/alert.js"></script>
</head>
<body>
<div class="container">
    <div class="card-container" style="margin-top: 50px">
        <div class="front">
            <div class="image">
                <img src="assets/chip.png" alt="">
                <img src="assets/visa.png" alt="">
            </div>
            <div class="card-number-box" style="text-align: center">XXXX-XXXX-XXXX-XXXX</div>
            <div class="flexbox">
                <div class="box">
                    <span>Card Holder</span>
                    <div class="card-holder-name">Full Name</div>
                </div>
                <div class="box">
                    <span>Expiry Date</span>
                    <div class="expiration">
                        <span class="exp-month" id="expmonth">MM /</span>
                        <span class="exp-year" id="expyear">YYYY</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="back">
            <div class="stripe"></div>
            <div class="box" style="color: white;font-weight: bold">
                CVV
                <div class="cvv-box"></div>
                <img src="assets/visa.png" alt="">
            </div>
        </div>
    </div>
    <form action="OTPVer.jsp" method="POST" onsubmit="return connectServer()">
        <div class="inputBox">
            <span>Enter Card Number</span>
            <input type="text" maxlength="19" class="card-number-input" onkeypress="return checkDigit(event)" 
                   onkeyup="formatCreditCard()" name="card-number" id="credit-card" value="" required="true"/>
        </div>
        <div class="inputBox">
            <span>Name on the card</span>
            <input type="text" class="card-holder-input" onkeypress="return checkLetter(event)" 
                   maxlength="22" required="true"/>
        </div>
        <div class="flexbox">
            <div class="inputBox">
                <span>Expiration Month</span>
                <select name="" id="" class="month-input" required="true">
                    <option value="month" selected disabled>Month</option>
                    <option value="01">01</option>
                    <option value="02">02</option>
                    <option value="03">03</option>
                    <option value="04">04</option>
                    <option value="05">05</option>
                    <option value="06">06</option>
                    <option value="07">07</option>
                    <option value="08">08</option>
                    <option value="09">09</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                </select>
            </div>
            <div class="inputBox">
                <span>Expiration Year</span>
                <select name="" id="" class="year-input" required="true">
                    <option value="year" selected disabled>Year</option>
                    <option value="2021">2021</option>
                    <option value="2022">2022</option>
                    <option value="2023">2023</option>
                    <option value="2024">2024</option>
                    <option value="2025">2025</option>
                    <option value="2026">2026</option>
                    <option value="2027">2027</option>
                    <option value="2028">2028</option>
                    <option value="2029">2029</option>
                    <option value="2030">2030</option>
                </select>
            </div>
            <div class="inputBox">
                <span>CVV Code</span>
                <input type="password" maxlength="3" class="cvv-input" required="true" onkeypress="return checkDigit(event)"/>
            </div>
        </div>
        <input type="submit" value="Make Payment" class="submit-btn" id="doPayment">
    </form>
</div>
<script>
        function connectServer(){
            if (document.getElementById('expmonth').textContent === "MM /" ||
                    document.getElementById('expyear').textContent === "YYYY") {
                       Swal.fire({
                    text: 'Please select a proper expiry date of your credit/debit card !'
                    })
                return false;
            } else {
                return true;
            }
        }
window.history.forward();
                document.addEventListener('contextmenu',
                event => event.preventDefault());
document.querySelector('.card-number-input').oninput = () =>{
    document.querySelector('.card-number-box').innerText = document.querySelector('.card-number-input').value;
        if (document.querySelector('.card-number-input').value === ""){
            document.querySelector('.card-number-box').innerText = "XXXX-XXXX-XXXX-XXXX";
        }
}

document.querySelector('.card-holder-input').oninput = () =>{
    document.querySelector('.card-holder-name').style.textTransform = "uppercase";
    document.querySelector('.card-holder-name').innerText = document.querySelector('.card-holder-input').value;
        if (document.querySelector('.card-holder-input').value === ""){
            document.querySelector('.card-holder-name').innerText = "Full Name"
            document.querySelector('.card-holder-name').style.textTransform = "capitalize";
        }
}

document.querySelector('.month-input').oninput = () =>{
    document.querySelector('.exp-month').innerText = document.querySelector('.month-input').value+" / ";
}

document.querySelector('.year-input').oninput = () =>{
    document.querySelector('.exp-year').innerText = document.querySelector('.year-input').value;
}

document.querySelector('.cvv-input').onmouseenter = () =>{
    document.querySelector('.front').style.transform = 'perspective(1000px) rotateY(-180deg)';
    document.querySelector('.back').style.transform = 'perspective(1000px) rotateY(0deg)';
}

document.querySelector('.cvv-input').onmouseleave = () =>{
    document.querySelector('.front').style.transform = 'perspective(1000px) rotateY(0deg)';
    document.querySelector('.back').style.transform = 'perspective(1000px) rotateY(180deg)';
}

document.querySelector('.cvv-input').oninput = () =>{
    document.querySelector('.cvv-box').innerText = document.querySelector('.cvv-input').value;
}
function checkDigit(event) {
    let code = (event.which) ? event.which : event.keyCode;

    if ((code < 48 || code > 57) && (code > 31)) {
        return false;
    }

    return true;
}
function checkLetter(event){
    let code = (event.which) ? event.which : event.keyCode;
    
    if ((code > 64 && code < 91) || (code > 96 && code < 123) || code === 32){
        return true;
    }
    return false;
}
function formatCreditCard() {
    let x = document.getElementById("credit-card");
    let index = x.value.lastIndexOf(' ');
    let test = x.value.substr(index + 1);
    if (test.length === 4 && x.value.length<16)
         x.value = x.value + ' ';
}
        window.oncontextmenu = function () {
             Swal.fire(
            'Security Alert',
            'Right-Click and Input-Facilities are disabled for security reason.',
            'warning'
            )
       }
</script>
</body>
</html>