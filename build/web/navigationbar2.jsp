
<%-- 
    Document   : navigationbar1
    Created on : Apr 12, 2020, 1:56:19 PM
    Author     : SHABA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
       <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    </head>
    <body>

        <nav class="navbar navbar-expand md" style="background: #570061">
            <a class="navbar-band" href="#" style="color: orange"><b>&emsp;Hospital Management System</b></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                   
                    <li class="nav-item">
                        <a class="nav-link" href="adminhome.jsp" style="color: white">&emsp;&emsp;&emsp;<b>Home</b></a>
                    </li>
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="color: white">&emsp;<b>Doctor</b></a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="adddoctor.jsp"><b>Add Doctor</b></a>
                            <a class="dropdown-item" href="viewdoctor.jsp"><b>View Doctor</b></a>
                        </div>
                    </li>
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="color: white">&emsp;<b>Patient</b></a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="addpatient.jsp"><b>Add Patient</b></a>
                            <a class="dropdown-item" href="viewpatient.jsp"><b>View Patient</b></a>
                        </div>
                    </li>
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="color: white">&emsp;<b>Appointment</b></a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="addappointment.jsp"><b>Add Appointment</b></a>
                            <a class="dropdown-item" href="viewappointment.jsp"><b>View Appointment</b></a>
                        </div>
                    </li>
                    
                     <li class="nav-item">
                       
                        <a class="nav-link" href="logout.jsp"  style="color: white">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                           &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b>Logout</b></a>
                       
                    </li>
                    
                </ul>
            </div>
        </nav>
    </body>
</html>
