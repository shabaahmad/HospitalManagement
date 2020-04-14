<%-- 
    Document   : index
    Created on : Apr 12, 2020, 12:50:56 PM
    Author     : SHABA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
     <!--include action tag-->
       <jsp:include page ="header.jsp" />  
    </head>
    
    <body>
        <jsp:include page ="navigationbar1.jsp" />
        
        <div class="container" style="margin-top: 100px">
            <div class="row">
                <div class="col-sm-3">
                    
                </div>
                <div class="col-sm-6">
                    <h1 class="text-center" style="color: purple">Admin Login</h1><br>
                    <form method="post" action="mycontroller.jsp">
                        <input type="hidden" name="page" value="adminlogin">
                        <div class="form-group">
                            <label><b>UserName</b></label>
                            <input type="text" class="form-control" placeholder="UserName" name="adminname"><br>
                             <label><b>Password</b></label>
                             <input type="password" class="form-control" placeholder="Password" name="password"><br>
                             <p align="center">
                            <input type="submit" class="btn btn-primary" style="width: 200px" value="Login">
                             </p>                       
                        </div>       
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
