<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OracleStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard | InMate Admin</title>
                <%!
            OracleConnection oconn;
            OracleStatement ost;
            OracleResultSet ors;
            String q;
                %>
        <link rel="icon" type="image/x-icon" href="assets/admin.png" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <link href="css/admin-style.css" rel="stylesheet"/>
        <script src="js/typer.js"></script>
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <script src="js/alert.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <script>
                    window.history.forward();
        function noBack() {
            window.history.forward();
        }
        </script>
        <script>
                document.addEventListener('contextmenu',
                event => event.preventDefault());
        </script>
        <style>
            .shadow {
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1) !important;
            }
            .img-circle img{
                height: 40px;
                width: 40px;
                border-radius: 100%;
                border: 2px solid #fff;
                transition: transform .2s;
                cursor: pointer;
            }
            .img-circle img:hover {
                transform: scale(1.3);
            }
            .modal {
              display: none;
              position: fixed;
              z-index: 1;
              padding-top: 80px;
              left: 0;
              top: 0;
              width: 100%;
              height: 100%;
              overflow: auto;
              background-color: rgb(0,0,0);
              background-color: rgba(0,0,0,0.9);
            }

            .modal-content {
              margin: auto;
              display: block;
              width: 90%;
              height: 90%;
              max-width: 450px;
            }

            .modal-content, #caption {  
              -webkit-animation-name: zoom;
              -webkit-animation-duration: 0.6s;
              animation-name: zoom;
              animation-duration: 0.6s;
            }

            @-webkit-keyframes zoom {
              from {-webkit-transform:scale(0)} 
              to {-webkit-transform:scale(1)}
            }

            @keyframes zoom {
              from {transform:scale(0)} 
              to {transform:scale(1)}
            }

            .close {
              top: 60px;
              position: absolute;
              right: 200px;
              color: white;
              font-size: 70px;
              font-weight: bold;
              transition: 0.3s;
            }

            .close:hover,
            .close:focus {
              color: red;
              text-decoration: none;
              cursor: pointer;
            }
            @media only screen and (max-width: 450px){
              .modal-content {
                width: 100%;
              }
            }
        </style>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <div class="img-circle" style="margin-left: 10px">
                <img src="assets/admin_face.png" alt="Image" class="shadow" id="myImg">
            </div>
            <a class="navbar-brand ps-3" href="#">Malvika Sinha</a>
            <div class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="AdminProfile.jsp" target="_self">
                        <i class="fa fa-user" aria-hidden="true"></i>&nbsp;&nbsp;Admin Profile</a></li>
                        <li><a class="dropdown-item" href="javascript:shSubs()">
                                <i class="fa fa-paper-plane" aria-hidden="true"></i>&nbsp;&nbsp;Subscribers</a></li>
                        <li><a class="dropdown-item" href="javascript:shEnq()">
                                <i class="fa fa-question-circle" aria-hidden="true"></i>&nbsp;&nbsp;Enquiries</a></li>
                        <li><a class="dropdown-item" href="javascript:logoutConf()" target="_self">
                                <i class="fa fa-power-off" aria-hidden="true"></i>&nbsp;&nbsp;Logout</a></li>
                    </ul>
                </li>
            </ul>
            </div>
        </nav>
        <div id="myModal" class="modal">
        <span class="close">&times;</span>
        <img class="modal-content" id="img01">
        <div id="caption"></div>
        </div>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="#">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                           <a class="nav-link" href="#" id="reload">
                                <div class="sb-nav-link-icon"><i class="fas fa-hourglass"></i></div>
                                Reload Database
                            </a>
                            <div class="sb-sidenav-menu-heading">Table Style</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Layouts
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i>
                                </div>
                            </a>
                          <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="light-table.jsp">Light</a>
                                    <a class="nav-link" href="AdminDisplay.jsp">Dark</a>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">Addons</div>
                            <a class="nav-link" href="tables.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-user"></i></div>
                                Search Accounts
                            </a>
                           <a class="nav-link" href="ManageUser.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-wrench"></i></div>
                                Manage Accounts
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small"><b style="font-size: 16px">Logged in as:</b><a href="javascript:about()"><image style="margin-left: 64px" src="assets/help.png" height="12%" width="12%" id="about"/></a></div>
                        <b>InMate Admin</b>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <div class="mt-4">
                       <h1>
                        <p class="typewrite" data-period="2000" data-type='[ "Welcome Malvika Sinha !", "Admin of InMate."]' style="text-decoration: none;color: black;cursor: context-menu">
                        <span class="wrap"></span>
                        </p>
                        </h1>
                        </div>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">
                                Manage all of your utilities in one place &nbsp;&nbsp;| 
                                &nbsp;&nbsp;<span id="clock" style="font-weight: bold;color: grey">9:00:12 PM</span>
                            </li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6" style="margin-left: 260px">                               
                                    <button class="button button1" id="update_user" hidden="true"></button>                               
                            </div>
                            <div class="col-xl-3 col-md-6" style="margin-right: 200px">                          
                                <button class="button button3" id="delete_user" hidden="true"></button>
                            </div>
                        </div>
                           <div class="row" id="showgraph">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        Visitors Analytics
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        Revenue Analytics
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        </div>
                            <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                User Database
                            </div>
                                  <%
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@Asus-Vivobook-14:1521:orcl","inmate","project");
            ost = (OracleStatement) oconn.createStatement();
            q = "select * from userdetails";
            ors = (OracleResultSet)ost.executeQuery(q);
                    %>
            <table align='center' border='1' width="100" style="width:100%" class="table table-striped" id ="datatable">
            <thead>
                <tr style="text-align: center">
                    <th style="text-align: center">Name</th>
                    <th style="text-align: center">Email</th>
                    <th style="text-align: center">Password</th>
                    <th style="text-align: center">Mobile (+91)</th>
                </tr>
            </thead>
            <tbody>
                <%
                    while(ors.next())
                    {
                    %>
                    <tr style="text-align: center">
                    <%
                            for(int i = 1; i <= 4; i ++)
                            {
                        %>
                        <td><%=ors.getString(i)%></td>
                        <%
                            }
                            %>
                </tr>
                <%
                    }
                %>
            </tbody>
            <tfoot>
                <tr>
                    
                </tr>
            </tfoot>
        </table>
        <%
            oconn.close();
            ost.close();
            ors.close();            
        %>
                    </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; InMate 2023</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
         <script>
            document.getElementById('reload').addEventListener('click', function(){
            let timerInterval;
            Swal.fire({
            title: 'Please wait for few seconds',
            html: 'Reloading Database....',
            timer: 2000,
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
                window.location.reload();
            }
           })
        })
            window.oncontextmenu = function () {
             Swal.fire(
            'Security Alert',
            'Right-Click and Input-Facilities are disabled for security reason.',
            'warning'
            )
          }
          function about(){
            Swal.fire(
            'Important Message',
            'Backbutton is disabled for this page, Because of some security reasons. Simply logout to exit !',
            'warning'
            )
          }
          function logoutConf(){
              Swal.fire({
                title: 'Do you want to logout ?',
                icon: 'question',
                showDenyButton: true,
                showCancelButton: true,
                confirmButtonText: 'Stay',
                denyButtonText: `Logout`,
              }).then((result) => {
        if (result.isConfirmed) {
                Swal.DismissReason;
            } else if (result.isDenied) {
                window.open("admin.jsp","_self");
            }
      })
      
    }
             function currentTime() {
                 let date = new Date();
                 let hour = date.getHours();
                 let min = date.getMinutes();
                 let sec = date.getSeconds();
                 let midday = "AM";
                     midday = (hour >= 12) ? "PM" : "AM";
                     hour = (hour === 0) ? 12 : ((hour > 12) ? (hour - 12): hour);
                     hour = updateTime(hour);
                     min = updateTime(min);
                     sec = updateTime(sec);
  document.getElementById("clock").innerText = hour + " : " + min + " : " + sec + " " + midday;
    setTimeout(currentTime, 1000); /* setting timer */
     }

            function updateTime(k) {
                    if (k < 10) {
                        return "0" + k;
                }
                else {
                        return k;
                }
            }

        currentTime();
            let modal = document.getElementById("myModal");
            let img = document.getElementById("myImg");
            let modalImg = document.getElementById("img01");
            let captionText = document.getElementById("caption");
            img.onclick = function(){
              modal.style.display = "block";
              modalImg.src = this.src;
              captionText.innerHTML = this.alt;
            };
            let span = document.getElementsByClassName("close")[0];
            span.onclick = function() { 
              modal.style.display = "none";
            }
            function shSubs(){
                window.open("Subscribers.jsp","_self");
            }
            function shEnq(){
                window.open("Enquiry.jsp","_self");
            }
        </script>
              <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script>
            Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
            Chart.defaults.global.defaultFontColor = '#292b2c';
            let ctx = document.getElementById("myAreaChart");
            let myLineChart = new Chart(ctx, {
              type: 'line',
              data: {
                labels: ["May 1", "May 2", "May 3", "May 4", "May 5", "May 6", "May 7", "May 8", "May 9", "May 10", "May 11", "May 12", "May 13","May 14","May 15","May 16","May 17","May 18","May 19","May 20","May 21","May 22"],
                datasets: [{
                  label: "Visitors",
                  lineTension: 0.3,
                  backgroundColor: "rgba(2,117,216,0.2)",
                  borderColor: "rgba(2,117,216,1)",
                  pointRadius: 5,
                  pointBackgroundColor: "rgba(2,117,216,1)",
                  pointBorderColor: "rgba(255,255,255,0.8)",
                  pointHoverRadius: 5,
                  pointHoverBackgroundColor: "rgba(2,117,216,1)",
                  pointHitRadius: 50,
                  pointBorderWidth: 2,
                  data: [11255, 20475, 4422, 6874, 30142, 12342, 2505, 5234, 3214, 7909, 1490, 14055, 2093, 5211, 36989, 4206, 9873, 5777,2588,3214,25168,7006],
                }],
              },
              options: {
                scales: {
                  xAxes: [{
                    time: {
                      unit: 'date'
                    },
                    gridLines: {
                      display: false
                    },
                    ticks: {
                      maxTicksLimit: 7
                    }
                  }],
                  yAxes: [{
                    ticks: {
                      min: 0,
                      max: 40000,
                      maxTicksLimit: 5
                    },
                    gridLines: {
                      color: "rgba(0, 0, 0, .125)",
                    }
                  }],
                },
                legend: {
                  display: false
                }
              }
            });
            </script>
            <script>
            Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
            Chart.defaults.global.defaultFontColor = '#292b2c';
            let btx = document.getElementById("myBarChart");
            let myBarChart = new Chart(btx, {
              type: 'bar',
              data: {
                labels: ["January", "February", "March", "April", "May"],
                datasets: [{
                  label: "Revenue",
                  backgroundColor: "rgba(2,117,216,1)",
                  borderColor: "rgba(2,117,216,1)",
                  data: [4215, 6312, 5251, 8841, 4821, 14984],
                }],
              },
              options: {
                scales: {
                  xAxes: [{
                    time: {
                      unit: 'month'
                    },
                    gridLines: {
                      display: false
                    },
                    ticks: {
                      maxTicksLimit: 6
                    }
                  }],
                  yAxes: [{
                    ticks: {
                      min: 0,
                      max: 15000,
                      maxTicksLimit: 5
                    },
                    gridLines: {
                      display: true
                    }
                  }],
                },
                legend: {
                  display: false
                }
              }
            });
        </script>
    </body>
</html>