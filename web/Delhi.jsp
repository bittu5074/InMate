<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/pg.css">
    <link rel="icon" type="image/x-icon" href="assets/rooms.png" />
    <title>InMate | Delhi PG</title>
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
        /* width: 100%;
    float: left;
    background-image: url("images/img-2.jpg");
    height: auto;
    padding: 20px 0px 70px 0pc;
    background-size: 100%;
    background-repeat: no-repeat; */
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
    .blog_img img{
        box-shadow: 0 0 35px rgb(69, 147, 184);
    }

    .buttonhead span {
        position: relative;
        z-index: 1;
        top: -4px;
        color:white;
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
                        <button style="--clr: #11afaf;" class="buttonhead"><span>Welcomes Mates! Explore our Delhi
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
                                src="https://hips.hearstapps.com/hmg-prod/images/bedroom-design-ideas-hbx050121rayattanasio-008-1623358251.jpg?resize=480:*">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_taital_main">
                            <h1 class="blog_text">Serendipity Suites</h1>
                            <ul class="myul">
                                <li class="myli"><span>Address:</span> 567, Mayur Vihar Phase 1,
                                    East Delhi,
                                    New Delhi, Delhi 110091
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
                         <a href="https://wa.me/919163885060?text=Hello,%20I%20want%20to%20know%20about%20serendipity%20suites%20pg" target="blank">  <button class='glowing-btn2'><span class='glowing-txt2'><span
                                        class='faulty-letter2'>CONTACT</span></span></button></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_img"><img
                                src="https://st.hzcdn.com/simgs/0491dd710358a3d1_14-3492/home-design.jpg"
                                id="malvi1"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_taital_main">
                            <h1 class="blog_text">Friendly Retreat</h1>
                            <ul class="myul">
                                <li><span>Address:</span> 234, Karol Bagh,
                                    Central Delhi,
                                    New Delhi, Delhi 110005
                                </li>
                                <li><span>Allowed Gender:</span> Girls/Boys</li>
                                <li><span>Meals on Weekdays: </span> Breakfast,Lunch,Dinner</li>
                                <li><span>Meals on Weekends: </span>Lunch,Dinner</li>
                                <li><span>Meals Type: </span>Veg,Non-Veg,Special</li>
                                <li><span>Gate Open Timings:</span> 5 AM</li>
                                <li><span>Gate Close Timings:</span> 12:30 PM</li>
                                <li><span>Pricing: </span> <b> ₹ 7000/ 1 Person Room.</b></li>
                            </ul>
                            <br>
                    <a href="javascript:triggerPay()"><button class='glowing-btn'><span class='glowing-txt'><span
                                            class='faulty-letter'>BOOK</span></span></button></a>
                            <a href="https://wa.me/919163885060?text=Hello,%20I%20want%20to%20know%20about%20friendly%20retreat%20pg" target="blank"> <button class='glowing-btn2'><span class='glowing-txt2'><span
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
                            <h1 class="blog_text">Harmonic Paying Guest</h1>
                            <ul class="myul">
                                <li><span>Address:</span> 789, Dwarka Sector 11,
                                    South West Delhi,
                                    New Delhi, Delhi 110075
                                </li>
                                <li><span>Allowed Gender:</span> Boys</li>
                                <li><span>Meals on Weekdays: </span> Breakfast,Lunch,Dinner</li>
                                <li><span>Meals on Weekends: </span>Lunch,Dinner</li>
                                <li><span>Meals Type: </span>Veg,Non-Veg,Special</li>
                                <li><span>Gate Open Timings:</span> 6 AM</li>
                                <li><span>Gate Close Timings:</span> 11 PM</li>
                                <li><span>Pricing: </span> <b> ₹ 9000/ 1 Person Room.</b></li>
                            </ul>
                            <br>
                            <a href="javascript:triggerPay()"><button class='glowing-btn'><span class='glowing-txt'><span
                                            class='faulty-letter'>BOOK</span></span></button></a>
                        <a href="https://wa.me/919163885060?text=Hello,%20I%20want%20to%20know%20about%20harmonic%20pg" target="blank"> <button class='glowing-btn2'><span class='glowing-txt2'><span
                                        class='faulty-letter2'>CONTACT</span></span></button></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_img"><img
                                src="https://thumbs.dreamstime.com/b/luxurious-hotel-room-5554248.jpg"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_taital_main">
                            <h1 class="blog_text">Swans Sharif Homes</h1>

                            <ul class="myul">
                                <li><span>Address:</span> 456, Lajpat Nagar,
                                    South Delhi,
                                    New Delhi, Delhi 110024
                                </li>
                                <li><span>Allowed Gender:</span> Boys</li>
                                <li><span>Meals on Weekdays: </span> Breakfast,Lunch,Dinner</li>
                                <li><span>Meals on Weekends: </span>Lunch,Dinner</li>
                                <li><span>Meals Type: </span>Veg,Non-Veg</li>
                                <li><span>Gate Open Timings:</span> 7 AM</li>
                                <li><span>Gate Close Timings:</span> 12 PM</li>
                                <li><span>Pricing: </span> <b> ₹ 5000/ 2 Person Room.</b></li>
                            </ul>
                            <br>
                         <a href="javascript:triggerPay()"><button class='glowing-btn'><span class='glowing-txt'><span
                                            class='faulty-letter'>BOOK</span></span></button></a>
                       <a href="https://wa.me/919163885060?text=Hello,%20I%20want%20to%20know%20about%20swans%20sharif%20homes%20pg" target="blank">   <button class='glowing-btn2'><span class='glowing-txt2'><span
                                        class='faulty-letter2'>CONTACT</span></span></button></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_img"><img
                                src="data:image/jpeg;base64,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"
                                id="malvi2"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_taital_main">
                            <h1 class="blog_text">Fenny Houses</h1>
                            <ul class="myul">
                                <li><span>Address:</span> 123, Rajouri Garden,
                                    West Delhi,
                                    New Delhi, Delhi 110027
                                </li>
                                <li><span>Allowed Gender:</span> Girls/Boys</li>
                                <li><span>Meals on Weekdays: </span> Breakfast,Lunch,Dinner</li>
                                <li><span>Meals on Weekends: </span>Lunch,Dinner</li>
                                <li><span>Meals Type: </span>Veg,Non-Veg</li>
                                <li><span>Gate Open Timings:</span> 6 AM</li>
                                <li><span>Gate Close Timings:</span> 12 PM</li>
                                <li><span>Pricing: </span> <b> ₹ 5200/ 3 Person Room.</b></li>
                            </ul>
                            <br>
                            <a href="javascript:triggerPay()"><button class='glowing-btn'><span class='glowing-txt'><span
                                            class='faulty-letter'>BOOK</span></span></button></a>
                           <a href="https://wa.me/919163885060?text=Hello,%20I%20want%20to%20know%20about%20fenny%20houses%20pg" target="blank">  <button class='glowing-btn2'><span class='glowing-txt2'><span
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