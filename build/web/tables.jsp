<%@page import="oracle.jdbc.OracleResultSetMetaData"%>
<%@page import="java.sql.DriverManager"%>
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
            OracleResultSetMetaData orsmd;
            String q;
        %>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css/admin-style.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="assets/admin.png" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <script src="js/alert.js"></script>
                <script>
                    window.history.forward();
        function noBack() {
            window.history.forward();
        }
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
              <input class="datatable-input" placeholder="Search accounts" 
                   type="text" id="doSearch" onkeyup="searchFunction()">
            </div>
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
                            <a class="nav-link" href="AdminDisplay.jsp">
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
                                    <a class="nav-link" href="light-data.jsp">Light</a>
                                    <a class="nav-link" href="tables.jsp">Dark</a>
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
                        <h1 class="mt-4">Data Tables</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item">Dashboard</li>
                            <li class="breadcrumb-item active">Data Tables</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                User Database
                            </div>
                            <%
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@Asus-Vivobook-14:1521:orcl","inmate","project");
            ost = (OracleStatement) oconn.createStatement();
            q = "select * from userdetails order by 1";
            ors = (OracleResultSet)ost.executeQuery(q);
            orsmd = (OracleResultSetMetaData)ors.getMetaData();
        %>
                                 <table align='center' border='1' width="100" style="width:100%" class="table table-striped table-dark" id ="datatable">
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
                function searchFunction() {
                let input, filter, table, tr, td, i, txtValue;
                input = document.getElementById("doSearch");
                filter = input.value.toUpperCase();
                table = document.getElementById("datatable");
                tr = table.getElementsByTagName("tr");
                for (i = 0; i < tr.length; i++) {
                  td = tr[i].getElementsByTagName("td")[0];
                  if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                      tr[i].style.display = "";
                    } else {
                      tr[i].style.display = "none";
                    }
                  }
                }
              }
            document.getElementById('reload').addEventListener('click', function(){
                            Swal.fire({
            title: 'Please wait for few seconds',
            html: 'Reloading Database....',
            timer: 2000,
            timerProgressBar: true,
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
            let modal = document.getElementById("myModal");
            let img = document.getElementById("myImg");
            let modalImg = document.getElementById("img01");
            let captionText = document.getElementById("caption");
            img.onclick = function(){
              modal.style.display = "block";
              modalImg.src = this.src;
              captionText.innerHTML = this.alt;
            }
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
                                <script>
                document.addEventListener('contextmenu',
                event => event.preventDefault());
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
