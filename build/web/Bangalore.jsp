<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/pg.css">
    <link rel="icon" type="image/x-icon" href="assets/rooms.png" />
    <title>InMate | Bangalore PG</title>
    <script src="js/alert.js"></script>
</head>
<style>
    body {
        color: #666666;
        font-size: 14px;
        line-height: 1.80857;
        font-weight: normal;
        overflow-x: hidden;
        background-image: url(images/body-bg.jpg);
        height: auto;
        background-size: 100% 100%;
        background-repeat: no-repeat;
        font-family: 'Sen', sans-serif;
    }

    .layout_main {
        width: 93%;
        background-color: rgb(18, 18, 18, 0.9);
        height: auto;
        background-size: cover;
        float: left;
        margin-left: 47px;
        height: 165rem;

        top: 0px;
        position: relative;
    }

    .blog_section {
        width: 100%;
        float: left;
    }

    .layout_padding {
        padding-top: 0px;
        padding-bottom: 0px;
        margin-left: 87px;
    }

    .container {
        max-width: 1140px;
    }

    .container {
        width: 101%;
        padding-right: 15px;
        padding-left: 0px;
        margin-right: 8px;
        margin-left: -77px;
    }

    .row {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        margin-right: -15px;
        margin-left: -15px;
    }

    .col-sm-12 {
        -ms-flex: 0 0 100%;
        flex: 0 0 100%;
        max-width: 91%;
    }

    .blog_taital {
        width: 97%;
        float: left;
        font-size: 40px;
        color: #eaebe7;
        font-weight: 800;
        left: 96px;
        margin-top: 50px;

    }

    h1 {
        font-size: 24px;
    }

    h1,
    h4,
    h5,
    h6 {
        letter-spacing: 0;
        font-weight: normal;
        position: relative;
        padding: 0 0 10px 0;
        font-weight: normal;
        line-height: normal;
        color: #111111;
        margin: 0;
    }

    h2 {
        letter-spacing: 0;
        font-weight: normal;
        position: relative;
        padding: 0 0 10px 0;
        font-weight: normal;
        line-height: normal;
        color: white;
        margin: 0;
    }

    h1 {
        font-size: 2em;
        margin-top: 7px;
        margin-left: -4px;
    }

    h3 {
        color: white;
        top: 6px;
        position: relative;
    }

    .blog_section_2 {
        width: 89%;
        float: right;

        height: 97rem;
        padding: 32px 0px 72px 6pc;
        background-size: 96%;
        background-repeat: no-repeat;
    }


    .container {
        max-width: 1140px;
    }

    .row {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        margin-right: -15px;
        margin-left: -15px;
    }

    .col-md-6 {
        -ms-flex: 0 0 50%;
        flex: 0 0 50%;
        max-width: 50%;
        position: relative;
        width: 100%;
    }

    .blog_img img {
        width: 103%;
        margin-bottom: 20px;
        height: 22rem;
        border: 1px solid white;
        border-radius: 168px;
        top: 48px;
        position: relative;
        left: -41px;
    }

    img {
        max-width: 100%;
        height: auto;
    }

    img {
        border-style: none;
    }

    img {
        vertical-align: middle;
        border-style: none;
        border: 1px solid;
        border-radius: 39px;
        width: 68px;
    }

    .col-md-6 {
        -ms-flex: 0 0 50%;
        flex: 0 0 50%;
        max-width: 50%;
        position: relative;
        width: 100%;
    }

    .blog_taital_main {
        width: 100%;
        float: left;
        padding-top: 40px;
    }

    .blog_text {
        top: 18px;
        width: 100%;
        float: left;
        font-size: 30px;
        color: whitesmoke;
        font-weight: bold;
    }

    .lorem_text {
        width: 100%;
        float: left;
        font-size: 16px;
        color: #f8f8f8;
        margin: 15px 0px 0px 0px;
    }

    p {
        margin: 20px;
        font-weight: 300;
        font-size: 15px;
        line-height: 24px;
    }

    #malvi1 {
        width: 101%;
        height: 22rem;
        border: 1px solid white;
        border-radius: 165px;
    }

    #malvi2 {
        width: 100%;
        height: 22rem;
        border: 1px solid white;
        border-radius: 168px;
    }

    .myul {

        left: 0px;
        position: relative;
        top: 22px;
    }

    .myul li {
        font-size: 16px;
        color: white;
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    }

    .myul span {
        color: #bbb397;
        font-weight: 600;
        font-size: 20px;
    }

    .person {
        color: white;
        padding: 6px;
    }

    .blog_img {
        padding: 25px;
    }

    /* --------------------HEADER TAG-------------------------- */
    .buttonhead {
        position: relative;
        background: #444;
        color: white;
        text-decoration: none;
        text-transform: uppercase;
        border: none;
        font-family: 'Times New Roman', Times, serif;
        letter-spacing: 0.1rem;
        font-size: 31px;
        padding: 1rem 3rem;
        transition: 0.2s;
        width: 102%;
        left: 66px;
        top: 24px;
        height: 3.5rem;
        border-radius: 39px;
        border: 1px solid white;

    }

    .buttonhead:hover {
        letter-spacing: 0.2rem;
        padding: 1.1rem 3.1rem;
        background: var(--clr);
        color: var(--clr);
        box-shadow: 0 0 35px var(--clr);
        animation: box 3s infinite;

    }

    .buttonhead::before {
        content: "";
        position: absolute;
        inset: 2px;
        background: black;
        border-radius: 25px;
        box-shadow: 0 0 35px var(--clr);
    }

    .blog_img img {
        box-shadow: 0 0 35px rgb(69, 147, 184);
    }

    .buttonhead span {
        position: relative;
        z-index: 1;
        top: -4px;
        color: white;
        border-radius: 5px;
    }

    .buttonhead i {
        position: absolute;
        inset: 0;
        display: block;
        transition: 0.2s;
        /* border: 2px solid var(--clr); */

    }

    .buttonhead i::before {
        content: "";
        position: absolute;
        width: 10px;
        height: 2px;
        left: 80%;
        top: -2px;
        border: 2px solid var(--clr);
        background: #272822;
        transition: 0.2s;
        border-radius: 19px
    }

    .buttonhead:hover i::before {
        width: 15px;
        left: 20%;
        animation: move 3s infinite;
        /* border: 2px solid var(--clr); */
        transition: 0.2s;
    }

    .buttonhead i::after {
        content: "";
        position: absolute;
        width: 10px;
        height: 2px;
        left: 20%;
        bottom: -2px;
        border: 2px solid var(--clr);
        background: #272822;
        transition: 0.2s;

    }


    .buttonhead:hover i::after {
        width: 15px;
        left: 80%;
        animation: move 3s infinite;

    }
    /* ------------------HEADER TAG ENDS------------------------- */
</style>

<body>
    <script>
                document.addEventListener('contextmenu',
                event => event.preventDefault());
                window.history.forward();
    </script>
    <!-- -------------------------BANGALORE STARTS--------------------------------- -->
    <br>
    <!-- -------------------------BANGALORE ENDS--------------------------------- -->
    <div class="layout_main">

    <!--------------------------------PG'S STARTS-------------------------------->

        <div class="blog_section layout_padding">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <button style="--clr: #11afaf;" class="buttonhead"><span>Welcomes Mates! Explore our Bangalore
                                pg's</span><i></i></button>
                    </div>
                </div>
            </div>
        </div>
        <div class="blog_section_2 layout_padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="blog_img"><img
                                src="https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWwlMjByb29tfGVufDB8fDB8fA%3D%3D&w=1000&q=80">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_taital_main">
                            <h1 class="blog_text">Yuava Paying Guest</h1>
                            <ul class="myul">
                                <li class="myli"><span>Address:</span> 123, Indiranagar,East Bengaluru,Bengaluru, Karnataka 560038
                                </li>
                                <li><span>Allowed Gender:</span> Girls</li>
                                <li><span>Meals on Weekdays: </span> Breakfast,Lunch,Dinner</li>
                                <li><span>Meals on Weekends: </span>Lunch,Dinner</li>
                                <li><span>Meals Type: </span>Veg,Non-Veg,Special</li>
                                <li><span>Gate Open Timings:</span> 6 AM</li>
                                <li><span>Gate Close Timings:</span> 12 PM</li>
                                <li><span>Pricing: </span> <b> ₹ 9500/ 1 Person Room.</b></li>
                            </ul>
                            <br>
                            <a href="javascript:triggerPay()"><button class='glowing-btn'><span class='glowing-txt'><span
                                            class='faulty-letter'>BOOK</span></span></button></a>
                            <a href="https://wa.me/919163885060?text=Hello,%20I%20want%20to%20know%20about%20yuava%20paying%20guest%20pg" target="blank"> <button class='glowing-btn2'><span class='glowing-txt2'><span class='faulty-letter2'>
                                         CONTACT</span></span></button></a>

                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_img"><img
                                src="https://ww1.brandwiki.today/thelodhi-hotel/wp-content/uploads/sites/3/2020/10/room1-1.jpg"
                                id="malvi1"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_taital_main">
                            <h1 class="blog_text">Charming Chalet</h1>
                            <ul class="myul">
                                <li><span>Address:</span> 456, Jayanagar,
                                    South Bengaluru,
                                    Bengaluru, Karnataka 560041
                                </li>
                                <li><span>Allowed Gender:</span> Girls/Boys</li>
                                <li><span>Meals on Weekdays: </span> Breakfast,Lunch,Dinner</li>
                                <li><span>Meals on Weekends: </span>Lunch,Dinner</li>
                                <li><span>Meals Type: </span>Veg,Non-Veg,Special</li>
                                <li><span>Gate Open Timings:</span> 5 AM</li>
                                <li><span>Gate Close Timings:</span> 12:30 PM</li>
                                <li><span>Pricing: </span> <b> ₹ 6800/ 2 Person Room</b></li>
                            </ul>
                            <br>
                            <a href="javascript:triggerPay()"><button class='glowing-btn'><span class='glowing-txt'><span
                                            class='faulty-letter'>BOOK</span></span></button></a>
                         <a href="https://wa.me/919163885060?text=Hello,%20I%20want%20to%20know%20about%20charming%20chalet%20pg" target="blank"> <button class='glowing-btn2'><span class='glowing-txt2'><span
                                        class='faulty-letter2'>CONTACT</span></span></button></a>
                        </div>
                    </div>
                    <br>
                    <br>
                    <div class="col-md-6">
                        <div class="blog_img"><img
                                src="https://st.hzcdn.com/simgs/d7d152aa07172eb4_4-6064/contemporary-home-office.jpg">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_taital_main">
                            <h1 class="blog_text">Radiant Residence Paying Guest</h1>
                            <ul class="myul">
                                <li><span>Address:</span> 789, Whitefield,
                                    East Bengaluru,
                                    Bengaluru, Karnataka 560066
                                </li>
                                <li><span>Allowed Gender:</span> Boys</li>
                                <li><span>Meals on Weekdays: </span> Breakfast,Lunch,Dinner</li>
                                <li><span>Meals on Weekends: </span>Lunch,Dinner</li>
                                <li><span>Meals Type: </span>Veg,Non-Veg,Special</li>
                                <li><span>Gate Open Timings:</span> 6 AM</li>
                                <li><span>Gate Close Timings:</span> 11 PM</li>
                                <li><span>Pricing: </span> <b> ₹ 8500/ 1 Person Room</b></li>
                            </ul>
                            <br>
                            <a href="javascript:triggerPay()"><button class='glowing-btn'><span class='glowing-txt'><span
                                            class='faulty-letter'>BOOK</span></span></button></a>
                         <a href="https://wa.me/919163885060?text=Hello,%20I%20want%20to%20know%20about%20radiant%20residence%20paying%20guest%20pg" target="blank">   <button class='glowing-btn2'><span class='glowing-txt2'><span
                                        class='faulty-letter2'>CONTACT</span></span></button></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_img"><img
                                src="https://d1hy6t2xeg0mdl.cloudfront.net/image/118637/3c56b860d4/standard"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_taital_main">
                            <h1 class="blog_text">Modern Homestead</h1>

                            <ul class="myul">
                                <li><span>Address:</span> 234, Malleshwaram,
                                    North Bengaluru,
                                    Bengaluru, Karnataka 560003
                                </li>
                                <li><span>Allowed Gender:</span> Boys</li>
                                <li><span>Meals on Weekdays: </span> Breakfast,Lunch,Dinner</li>
                                <li><span>Meals on Weekends: </span>Lunch,Dinner</li>
                                <li><span>Meals Type: </span>Veg,Non-Veg</li>
                                <li><span>Gate Open Timings:</span> 7 AM</li>
                                <li><span>Gate Close Timings:</span> 12 PM</li>
                                <li><span>Pricing: </span> <b> ₹ 4500/ 3 Person Room</b></li>
                            </ul>
                            <br>
                            <a href="javascript:triggerPay()"><button class='glowing-btn'><span class='glowing-txt'><span
                                            class='faulty-letter'>BOOK</span></span></button></a>
                          <a href="https://wa.me/919163885060?text=Hello,%20I%20want%20to%20know%20about%20modern%20homestead%20pg" target="blank"><button class='glowing-btn2'><span class='glowing-txt2'><span
                                        class='faulty-letter2'>CONTACT</span></span></button></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_img"><img
                                src="https://i.pinimg.com/564x/30/7f/f4/307ff426aefd87f022d663787c00ded6.jpg"
                                id="malvi2"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_taital_main">
                            <h1 class="blog_text">Comfort Corner</h1>
                            <ul class="myul">
                                <li><span>Address:</span> 567, Koramangala,
                                    South Bengaluru,
                                    Bengaluru, Karnataka 560095
                                </li>
                                <li><span>Allowed Gender:</span> Girls/Boys</li>
                                <li><span>Meals on Weekdays: </span> Breakfast,Lunch,Dinner</li>
                                <li><span>Meals on Weekends: </span>Lunch,Dinner</li>
                                <li><span>Meals Type: </span>Veg,Non-Veg</li>
                                <li><span>Gate Open Timings:</span> 6 AM</li>
                                <li><span>Gate Close Timings:</span> 12 PM</li>
                                <li><span>Pricing:</span> <b> ₹ 5500/ 3 Person Room</b></li>
                            </ul>
                            <br>
                           <a href="javascript:triggerPay()"><button class='glowing-btn'><span class='glowing-txt'><span
                                            class='faulty-letter'>BOOK</span></span></button></a>
                      <a href="https://wa.me/919163885060?text=Hello,%20I%20want%20to%20know%20about%20comfort%20corner%20pg" target="blank"><button class='glowing-btn2'><span class='glowing-txt2'><span
                                        class='faulty-letter2'>CONTACT</span></span></button></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
         window.oncontextmenu = function () {
             Swal.fire(
            'Security Alert',
            'Right-Click and Input-Facilities are disabled for security reason.',
            'warning'
            );
          };
          function triggerPay(){
              Swal.fire({
                    title: 'Choose your payment method',
                    showDenyButton: true,
                    showCancelButton: false,
                    denyButtonColor: '#2778c4',
                    confirmButtonText: 'Credit/Debit Card',
                    denyButtonText: `UPI`,
                  }).then((result) => {
                    if (result.isConfirmed) {
                      window.open("PaymentCard.jsp","_self")
                    } else if (result.isDenied) {
                      window.open("PaymentUPI.jsp","_self")
                    }
                  })
         }
    </script>
</body>
</html>