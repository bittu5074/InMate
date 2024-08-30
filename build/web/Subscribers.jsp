<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OracleStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content />
        <meta name="author" content />
        <title>InMate | Management</title>
               <%!
            OracleConnection oconn;
            OracleStatement ost;
            OracleResultSet ors;
            String q;
                %>
        <link rel="icon" type="image/x-icon" href="assets/edit.png" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@100;200;300;400;500;600;700;800;900&amp;display=swap" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="css/user-updateo.css" rel="stylesheet" />
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="js/alert.js"></script>
         <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
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
                        .button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding-left: 20px;
            padding-right: 20px;
            padding-bottom: 4px;
            padding-top: 4px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 4px;
            transition-duration: 0.4s;
            cursor: pointer;
            border-radius: 10px;
}
.button1 {
  background-color: white; 
  color: black;
  border: 2px solid #4CAF50;
}

.button1:hover {
  background-color: #4CAF50;
  color: white;
}
.button3 {
  background-color: white; 
  color: black;
  border: 2px solid #f44336;
}

.button3:hover {
  background-color: #f44336;
  color: white;
}
.loadobject {
      transform: rotate(360deg);
      transition: transform 1s;
}
.loadobject:active {
  transform: rotate(0deg);
  transition:  0s;
}
  .fp-submit {
  display: inline-block;
  background: #4CAF50;
  color: #fff;
  font-size: 18px;
  border-bottom: none;
  border: 2px solid #4CAF50;
  width: auto;
  transition: all 0.5s;
  padding: 15px 39px;
  border-radius: 5px;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  -o-border-radius: 5px;
  -ms-border-radius: 5px;
  margin-top: 25px;
  cursor: pointer; 
  }
  .fp-submit:hover{
       background: white;
       color: black;
       border: 2px solid #4CAF50;
  }
  
 .input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  border: none;
  border-radius: 10px;
  margin-bottom: 20px;
}

.icon {
  padding: 10px;
  background: transparent;
  color: blueviolet;
  min-width: 50px;
  min-height: 20px;
  text-align: center;
}

.input-field {
  width: 100%;
  outline: none;
  border: 0;
  background: linear-gradient(#A9A9A9, #A9A9A9) center bottom 5px /calc(100% - 10px) 1px no-repeat;
}

.input-field:focus {
  border: 2px solid dodgerblue;
  border-radius: 6px;
  background: none;
}
        </style>
    </head>
    <body class="d-flex flex-column">
        <main class="flex-shrink-0">
            <!-- Page content-->
            <section class="py-5">
                <div class="container px-5">
                    <!-- Contact form-->
                    <div class="bg-light rounded-4 py-5 px-4 px-md-5">
                        <div style="text-align: end">
                      <a href="javascript:closeWindow()"><image style="align-items: flex-end" src="assets/close.png" height="6%" width="6%" id="about"/></a>
                      &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="javascript:aboutWindow()"><image style="align-items: flex-start" src="assets/help.png" height="5.6%" width="5.6%" id="close"/></a>
                        </div>
                       <div class="text-center mb-5">
                            <div><img src="assets/update-user.png" height="10%" width="10%"></img></div>
                            <br>
                            <h1 class="fw-bolder">Subscriber Management</h1>
                            <p class="lead fw-normal text-muted mb-0">Please be careful while you're deleting data !</p>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Subscriber Database
                                <a href="javascript:reloadTable()"> <img src="assets/reload.png" height="3.2%" width="3.2%" style="align-items: flex-end;margin-left: 700px"
                                     class="loadobject"/></a>
                            </div>
      <%
          try {
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@Asus-Vivobook-14:1521:orcl","inmate","project");
            ost = (OracleStatement) oconn.createStatement();
            q = "select * from subscribers";
            ors = (OracleResultSet)ost.executeQuery(q);
          } catch (SQLException ex){out.println(ex.getMessage().toString());}
        %>
         <table align='center' border='1' width="100" style="width:100%" class="table table-striped table-dark">
            <thead>
                <tr style="text-align: center">
                    <th style="text-align: center">Email</th>
                    <th style="text-align: center" colspan="2">Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    while(ors.next())
                    {
                    %>
                    <tr style="text-align: center">
                    <%
                            for(int i = 1; i <= 1; i ++)
                            {
                        %>
                        <td id="wow"><%=ors.getString(i)%></td>
                        <%
                            }
                            %>
                        
            <form method="POST" action="http://localhost:8080/InMate/DeleteSubscriber?email=<%=ors.getString("Email")%>" onsubmit="return checkRemove()">
                        <td><button type="submit" class="button button3">Delete</button></td>
                        </form>
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
                        </div>
            </section>
        </main>
        <!-- Footer-->
        <footer class="bg-white py-4 mt-auto">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    <div class="col-auto"><div class="small m-0">Copyright &copy; InMate 2023</div></div>
                </div>
            </div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        <script>
            function closeWindow(){
                Swal.fire({
                title: 'Do you want to exit ?',
                text: "You'll be redirected to admin page !",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, Exit !'
              }).then((result) => {
            if (result.isConfirmed) {
            let timerInterval
            Swal.fire({
            title: 'Please wait for few seconds',
            html: 'Redirecting to admin portal....',
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
                window.open("AdminDisplay.jsp","_self");
            }
        })
          } else if (result.dismiss === Swal.DismissReason.cancel){
              Swal.fire(
                        'Cancelled',
                        'Operation Dismissed !',
                        'error'    
            )
          }
        })
            }
            function aboutWindow(){
                           Swal.fire(
                            'Important Message',
                            'Backbutton is disabled for this page, Because of some security reasons !',
                            'warning'
                    )
            }
             window.oncontextmenu = function () {
             Swal.fire(
            'Security Alert',
            'Right-Click and Input-Facilities are disabled for security reason.',
            'warning'
            )
          }
          function reloadTable(){
                  setTimeout("window.location.reload()", 1000);
          }
                function checkRemove(){
                            if(confirm("Are you sure to remove this subscriber ?") === true)
                    return true;
                else
                    return false;
                  }
        </script>
    </body>
</html>