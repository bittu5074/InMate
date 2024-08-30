<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="assets/rooms.png" />
    <link rel="stylesheet" href="css/pg.css">
    <script src="js/alert.js"></script>
    <title>InMate | Kolkata PG</title>
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
                        <button style="--clr: #11afaf;" class="buttonhead"><span>Welcomes Mates! Explore our Kolkata
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
                                src="https://assets.architecturaldigest.in/photos/63526fa4689496c6f7ec512d/master/pass/CH_ASH_Staging_West%20Village%20Townhouse_NYC2.jpg">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_taital_main">
                            <h1 class="blog_text">Dreamy Dwelling Paying Guest</h1>
                            <ul class="myul">
                                <li class="myli"><span>Address:</span> 123, Salt Lake City,
                                    Sector 5,
                                    Kolkata, West Bengal 700091
                                </li>
                                <li><span>Allowed Gender:</span> Girls</li>
                                <li><span>Meals on Weekdays: </span> Breakfast,Lunch,Dinner</li>
                                <li><span>Meals on Weekends: </span>Lunch,Dinner</li>
                                <li><span>Meals Type: </span>Veg,Non-Veg,Special</li>
                                <li><span>Gate Open Timings:</span> 6 AM</li>
                                <li><span>Gate Close Timings:</span> 12 PM</li>
                                <li><span>Pricing: </span> <b> ₹ 8500/ 1 Person Room.</b></li>
                            </ul>
                            <br>
                            <a href="javascript:triggerPay()"><button class='glowing-btn'><span class='glowing-txt'><span
                                            class='faulty-letter'>BOOK</span></span></button></a>
                           <a href="https://wa.me/919163885060?text=Hello,%20I%20want%20to%20know%20about%20dreamy%20dwelling%20pg" target="blank"><button class='glowing-btn2'><span class='glowing-txt2'><span
                                        class='faulty-letter2'>CONTACT</span></span></button></a>


                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_img"><img
                                src="https://hips.hearstapps.com/hmg-prod/images/living-room-ideas-lb-avery-cox-virginia-highlands2576-v2-1670968227.jpg"
                                id="malvi1"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_taital_main">
                            <h1 class="blog_text">Restful Roost</h1>
                            <ul class="myul">
                                <li><span>Address:</span> 456, Gariahat Road,
                                    Ballygunge,
                                    Kolkata, West Bengal 700019
                                </li>
                                <li><span>Allowed Gender:</span> Girls/Boys</li>
                                <li><span>Meals on Weekdays: </span> Breakfast,Lunch,Dinner</li>
                                <li><span>Meals on Weekends: </span>Lunch,Dinner</li>
                                <li><span>Meals Type: </span>Veg,Non-Veg,Special</li>
                                <li><span>Gate Open Timings:</span> 5 AM</li>
                                <li><span>Gate Close Timings:</span> 12:30 PM</li>
                                <li><span>Pricing: </span> <b> ₹ 6500/ 1 Person Room.</b></li>
                            </ul>
                            <br>
                            <a href="javascript:triggerPay()"><button class='glowing-btn'><span class='glowing-txt'><span
                                            class='faulty-letter'>BOOK</span></span></button></a>
                        <a href="https://wa.me/919163885060?text=Hello,%20I%20want%20to%20know%20about%20restful%20roost%20pg" target="blank"><button class='glowing-btn2'><span class='glowing-txt2'><span
                                        class='faulty-letter2'>CONTACT</span></span></button></a>
                        </div>
                    </div>
                    <br>
                    <br>
                    <div class="col-md-6">
                        <div class="blog_img"><img
                                src="data:image/jpeg;base64,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">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_taital_main">
                            <h1 class="blog_text">Saturn Paying Guest</h1>
                            <ul class="myul">
                                <li><span>Address:</span> 789, Behala,
                                    South Kolkata,
                                    Kolkata, West Bengal 700034

                                </li>
                                <li><span>Allowed Gender:</span> Boys</li>
                                <li><span>Meals on Weekdays: </span> Breakfast,Lunch,Dinner</li>
                                <li><span>Meals on Weekends: </span>Lunch,Dinner</li>
                                <li><span>Meals Type: </span>Veg,Non-Veg,Special</li>
                                <li><span>Gate Open Timings:</span> 6 AM</li>
                                <li><span>Gate Close Timings:</span> 11 PM</li>
                                <li><span>Pricing: </span> <b> ₹ 8000/ 1 Person Room.</b></li>
                            </ul>
                            <br>
                            <a href="javascript:triggerPay()"><button class='glowing-btn'><span class='glowing-txt'><span
                                            class='faulty-letter'>BOOK</span></span></button></a>
                        <a href="https://wa.me/919163885060?text=Hello,%20I%20want%20to%20know%20about%20saturn%20pg" target="blank"> <button class='glowing-btn2'><span class='glowing-txt2'><span
                                        class='faulty-letter2'>CONTACT</span></span></button></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_img"><img
                                src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNPGShzyeoqJgKD0exXSufm2OWynHL18rgPA&usqp=CAU">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_taital_main">
                            <h1 class="blog_text">Gleeful Stay</h1>

                            <ul class="myul">
                                <li><span>Address:</span> 234, Park Circus,
                                    Central Kolkata,
                                    Kolkata, West Bengal 700017
                                </li>
                                <li><span>Allowed Gender:</span> Boys</li>
                                <li><span>Meals on Weekdays: </span> Breakfast,Lunch,Dinner</li>
                                <li><span>Meals on Weekends: </span>Lunch,Dinner</li>
                                <li><span>Meals Type: </span>Veg,Non-Veg</li>
                                <li><span>Gate Open Timings:</span> 7 AM</li>
                                <li><span>Gate Close Timings:</span> 12 PM</li>
                                <li><span>Pricing: </span> <b> ₹ 3900/ 3 Person Room.</b></li>
                            </ul>
                            <br>
                            <a href="javascript:triggerPay()"><button class='glowing-btn'><span class='glowing-txt'><span
                                            class='faulty-letter'>BOOK</span></span></button></a>
                         <a href="https://wa.me/919163885060?text=Hello,%20I%20want%20to%20know%20about%20gleeful%20stay%20pg" target="blank"><button class='glowing-btn2'><span class='glowing-txt2'><span
                                        class='faulty-letter2'>CONTACT</span></span></button></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_img"><img
                                src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs026d0bENQ3UHx8ZRtKaKHDFKSDat-urMXw&usqp=CAU"
                                id="malvi2"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_taital_main">
                            <h1 class="blog_text">Unite PG</h1>
                            <ul class="myul">
                                <li><span>Address:</span> 567, New Alipore,
                                    South West Kolkata,
                                    Kolkata, West Bengal 700053
                                </li>
                                <li><span>Allowed Gender:</span> Girls/Boys</li>
                                <li><span>Meals on Weekdays: </span> Breakfast,Lunch,Dinner</li>
                                <li><span>Meals on Weekends: </span>Lunch,Dinner</li>
                                <li><span>Meals Type: </span>Veg,Non-Veg</li>
                                <li><span>Gate Open Timings:</span> 6 AM</li>
                                <li><span>Gate Close Timings:</span> 12 PM</li>
                                <li><span>Pricing: </span> <b> ₹ 5500/ 2 Person Room.</b></li>
                            </ul>
                            <br>
                            <a href="javascript:triggerPay()"><button class='glowing-btn'><span class='glowing-txt'><span
                                            class='faulty-letter'>BOOK</span></span></button></a>
                         <a href="https://wa.me/919163885060?text=Hello,%20I%20want%20to%20know%20about%20unite%20pg" target="blank"> <button class='glowing-btn2'><span class='glowing-txt2'><span
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