<%-- 
    Document   : adddoctor
    Created on : Apr 13, 2020, 1:06:00 PM
    Author     : SHABA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script> 
      <jsp:include page ="header.jsp" />  
    </head>
    <body>
        <jsp:include page ="navigationbar2.jsp" />
        
        <div class="container" style="margin-top: 50px">
            <h1 class="text-center" style="color: #E6120E"><b>Add Doctor</b></h1><br>
            
            <form method="post" action="mycontroller.jsp">
                <input type="hidden" name="page" value="adddoctor">
                <div class="form-group">
                    <label><b>Doctor Name</b></label>
                    <input type="text" name="doctorname" class="form-control"><br>
                    <label><b>Specialization</b></label>
                    <input type="text" name="specialization" class="form-control"><br>
                    <label><b>Contact</b></label>
                    <input type="text" name="contact" class="form-control"><br>
                    <input type="submit" class="btn btn-primary" style="width: 200px" value="Save">
            </form>
            
        </div>
    </body>
</html>
