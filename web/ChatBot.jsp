<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>InMate | Assistant</title>
    <script src="js/typer.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
	<link rel="icon" type="logo" href="images/chat.png">
        <script src="js/alert.js"></script>
    <style>
        .pos {
            margin-left: 80px;
            margin-top: 100px;
            font-family: serif;
            font-weight: bold;
            font-size: 60px;
            text-decoration: none;
            color: white;
            cursor: context-menu;
        }
        .sub {
            margin-left: 80px;
            margin-top: -30px;
            font-family: sans-serif;
            font-weight: bold;
            font-size: 60px;
            text-decoration: none;
            color: white;
            cursor: context-menu;
        }
        .chat-bar-collapsible {
    position: fixed;
    bottom: 0;
    right: 50px;
    box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}
.collapsible {
    background-color: #c3581c;
    color: white;
    cursor: pointer;
    padding: 18px;
    width: 350px;
    text-align: left;
    outline: none;
    font-size: 18px;
    border-radius: 10px 10px 0px 0px;
    border: 3px solid white;
    border-bottom: solid;
}

.content {
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.2s ease-out;
    background-color: #f1f1f1;
    border-radius: 0px 0px 10px 10px;
}

.full-chat-block {
    width: 350px;
    background: white;
    text-align: center;
    overflow: auto;
    scrollbar-width: none;
    height: max-content;
    transition: max-height 0.2s ease-out;
}

.outer-container {
    min-height: 500px;
    bottom: 0%;
    position: relative;
}

.chat-container {
    max-height: 500px;
    width: 100%;
    position: absolute;
    bottom: 0;
    left: 0;
    scroll-behavior: smooth;
    hyphens: auto;
}

.chat-container::-webkit-scrollbar {
    display: none;
}

.chat-bar-input-block {
    display: flex;
    float: left;
    box-sizing: border-box;
    justify-content: space-between;
    width: 100%;
    align-items: center;
    background-color: rgb(235, 235, 235);
    border-radius: 10px 10px 0px 0px;
    padding: 10px 0px 10px 10px;
}

.chat-bar-icons {
    display: flex;
    justify-content: space-evenly;
    box-sizing: border-box;
    width: 25%;
    float: right;
    font-size: 20px;
}

#chat-icon:hover {
    opacity: .7;
}

/* Chat bubbles */

#userInput {
    width: 75%;
}

.input-box {
    float: left;
    border: none;
    box-sizing: border-box;
    width: 100%;
    border-radius: 10px;
    padding: 10px;
    font-size: 16px;
    color: #000;
    background-color: white;
    outline: none
}

.userText {
    color: white;
    font-family: Helvetica;
    font-size: 16px;
    font-weight: normal;
    text-align: right;
    clear: both;
}

.userText span {
    line-height: 1.5em;
    display: inline-block;
    background: #c3581c;
    padding: 10px;
    border-radius: 8px;
    border-bottom-right-radius: 2px;
    max-width: 80%;
    margin-right: 10px;
    animation: floatup .5s forwards;
}

.botText {
    color: #000;
    font-family: Helvetica;
    font-weight: normal;
    font-size: 16px;
    text-align: left;
}

.botText span {
    line-height: 1.5em;
    display: inline-block;
    background: #e0e0e0;
    padding: 10px;
    border-radius: 8px;
    border-bottom-left-radius: 2px;
    max-width: 80%;
    margin-left: 10px;
    animation: floatup .5s forwards
}

@keyframes floatup {
    from {
        transform: translateY(14px);
        opacity: .0;
    }
    to {
        transform: translateY(0px);
        opacity: 1;
    }
}

@media screen and (max-width:600px) {
    .full-chat-block {
        width: 100%;
        border-radius: 0px;
    }
    .chat-bar-collapsible {
        position: fixed;
        bottom: 0;
        right: 0;
        width: 100%;
    }
    .collapsible {
        width: 100%;
        border: 0px;
        border-top: 3px solid white;
        border-radius: 0px;
    }
}
html {
    scroll-behavior: smooth;
    font-family: Helvetica, sans-serif, Arial;
}

body {
    margin: 0 auto;
    background-color: #222;
}
    </style>
</head>
<body style="background-image: url('slider-02.jpg')">
        <script>
                document.addEventListener('contextmenu',
                event => event.preventDefault());
    </script>
                <h1>
               <p class="pos">Inroducing</p>
               <p class="sub">InMate Assistant</p>
               <p class="pos">You can&nbsp;<span class="typewrite pos" data-period="2000" data-type='[ "think.", "ask.","analyze."]' style="margin-left: 4px"></span>
               </p>
                </h1>
    <!-- CHAT BAR BLOCK -->
    <div class="chat-bar-collapsible">
        <button id="chat-button" type="button" class="collapsible" style='text-align: center'>InMate Assistant
            <i id="chat-icon" style="color: #fff;" class="fa fa-fw fa-comments-o"></i>
        </button>

        <div class="content">
            <div class="full-chat-block">
                <!-- Message Container -->
                <div class="outer-container">
                    <div class="chat-container">
                        <!-- Messages -->
                        <div id="chatbox">
                            <h5 id="chat-timestamp"></h5>
                            <p id="botStarterMessage" class="botText"><span>••••</span></p>
                        </div>

                        <!-- User input box -->
                        <div class="chat-bar-input-block">
                            <div id="userInput">
                                <input id="textInput" class="input-box" type="text" name="msg"
                                    placeholder="Tap 'Enter' to send a message">
                                <p></p>
                            </div>

                            <div class="chat-bar-icons">
                               <i id="chat-icon" style="color: crimson;" class="fa fa-fw fa-heart"
                                    onclick="heartButton()"></i>
                                <i id="chat-icon" style="color: #333;" class="fa fa-fw fa-send"
                                    onclick="sendButton()"></i>
                            </div>
                        </div>

                        <div id="chat-bar-bottom">
                            <p></p>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
            let coll = document.getElementsByClassName("collapsible");

            for (let i = 0; i < coll.length; i++) {
                coll[i].addEventListener("click", function () {
                    this.classList.toggle("active");

                    let content = this.nextElementSibling;

                    if (content.style.maxHeight) {
                        content.style.maxHeight = null;
                    } else {
                        content.style.maxHeight = content.scrollHeight + "px";
                    }

                });
            }

            function getTime() {
                let today = new Date();
                hours = today.getHours();
                minutes = today.getMinutes();

                if (hours < 10) {
                    hours = "0" + hours;
                }

                if (minutes < 10) {
                    minutes = "0" + minutes;
                }

                let time = hours + ":" + minutes;
                return time;
            }
            function firstBotMessage() {
                    setTimeout(() => {
                let firstMessage = "Hello there! Greetings from your InMate assistant 💜. How may I help you ?";
                document.getElementById("botStarterMessage").innerHTML = '<p class="botText"><span>' + firstMessage + '</span></p>';
                }, 2000);

                let time = getTime();

                $("#chat-timestamp").append(time);
                document.getElementById("userInput").scrollIntoView(false);
            }

            firstBotMessage();

            function getHardResponse(userText) {
                let botResponse = getBotResponse(userText);
                let botHtml = '<p class="botText"><span>' + botResponse + '</span></p>';
                $("#chatbox").append(botHtml);

                document.getElementById("chat-bar-bottom").scrollIntoView(true);
            }

            function getResponse() {
                let userText = $("#textInput").val();

                if (userText === "") {
                    userText = "Give me some suggestions !";
                }

                let userHtml = '<p class="userText"><span>' + userText + '</span></p>';

                $("#textInput").val("");
                $("#chatbox").append(userHtml);
                document.getElementById("chat-bar-bottom").scrollIntoView(true);

                setTimeout(() => {
                    getHardResponse(userText);
                }, 1000);
            }

            function buttonSendText(sampleText) {
                let userText = $("#textInput").val();
                let userHtml = '<p class="userText"><span>' + sampleText + '</span></p>';
                $("#textInput").val("");
                $("#chatbox").append(userHtml);
                document.getElementById("chat-bar-bottom").scrollIntoView(true);
                    setTimeout(() => {
                    getHardResponse(userText);
                }, 1000);
            }

            function sendButton() {
                getResponse();
            }
            function heartButton() {
                buttonSendText("Thanks, I liked it !");
            }
            $("#textInput").keypress(function (e) {
                if (e.which === 13) {
                    getResponse();
                }
            });
    </script>
    <script>
        function getBotResponse(input) {
    if (input === "hello" || input === "Hello" || input === "hi" || input === "Hi" || input === "HELLO") {
        return "Hello there!";
    }  if (input === "goodbye" || input === "Goodbye" || input === "bye" || input === "Bye" ||
            input === "GOODBYE" || input === "Good bye" || input === "good bye") {
                            setTimeout(() => {
                         window.open("homepage.jsp","_self");
                }, 1000);
        return "Bye, See you soon!";
    }  if (input === "❤" || input === "love you" || input === "I love you"
            || input === "Thanks, I liked it !" || input === "" || input === "I LOVE YOU"){
        return "Oh ! Thanks 😊 it made my day.";
    }  if (input === "Give me some suggestions !" || input === "help" || input === "suggestion"
            || input === "suggest"){
        return "You can book your desired PG depending on your location. Example: If you want to see your PG in \n\
       delhi, Simply type: \"Delhi\". We are only available in Delhi, Bangalore, Kolkata, Pune";
    }  if (input === "Delhi" || input === "delhi" || input === "DELHI"){
        return "Hmmm...For Delhi I have three personal recommendation for you 😉\n\
          Those are: 1) Harmonic PG. 2) Swans Sharif PG. \n\
            3) Fenny Houses PG. For more information please visit our website 😊";
    }  if (input === "Bangalore" || input === "bangalore" || input === "BANGALORE"){
        return "Okay, For Bangalore I have two personal recommendation for you 😉\n\
          Those are: 1) Yuava PG. 2) Shakar's PG. For more information please visit our website 😊";
    }  if (input === "Kolkata" || input === "kolkata" || input === "KOLKATA"){
        return "Wooww! Kolkata is one my favourite place. For Kolkata I have three personal recommendation for you 😉\n\
          Those are: 1) Saturn PG. 2) Unite PG. 3) Gleeful PG. For more information please visit our website 😊";
    }  if (input === "Pune" || input === "pune" || input === "PUNE"){
        return "Ofcourse! Why not? For Pune I have one personal recommendation for you 😉\n\
          That is: 1) GoodStay PG. For more information please visit our website 😊";
    }  if (input === "Goodmorning" || input === "goodmorning" || input === "Good Morning"
            || input === "good morning" || input === "Good Morning" || input === "Good morning"){
        return "Hey, Good morning 🌞";
            }  if (input === "Goodnight" || input === "goodnight" || input === "Good Night"
            || input === "good night" || input === "Good Night" || input === "Good night"){
        return "Hey, Good night 🌙";
            }  if (input === "Goodnoon" || input === "goodnoon" || input === "Good noon"
            || input === "good noon" || input === "Good Noon" || input === "Good noon"){
        return "Hey, Good noon 🔆";
            }
             if (input === "Goodafternoon" || input === "goodafternoon" || input === "Good Afternoon"
            || input === "good afternoon" || input === "Good Afternoon" || input === "Good afternoon"){
        return "Hey, Good afternoon 🔆";
            }
             if (input === "Goodevening" || input === "goodevening" || input === "Good Evening"
            || input === "good evening" || input === "Good Evening" || input === "Good evening"){
        return "Hey, Good evening 🌟";
            }  if (input === "Ok" || input === "ok" || input === "OK" || input === "Okay"
                    || input === "okay" || input === "OKAY"){
                return "Yeah ! 😃";
            }
               if (input === "Who are you ?" || input === "What is your name ?" ||
                       input === "Who are you" || input === "What is your name" || input === "who are you ?"
                       || input === "what is your name ?" || input === "who are you" || input === "what is your name"){
                   return "I\'m your InMate assistant 😄, How may I help you ?";
               }
     else {
        return "Sorry, I didn\'t understand 🙁";
    }
}
             window.oncontextmenu = function () {
                Swal.fire(
               'Security Alert',
               'Right-Click and Input-Facilities are disabled for security reason.',
               'warning'
               );
          }
    </script>
</body>
</html>