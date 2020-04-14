
<%-- 
    Document   : adminhome
    Created on : Apr 12, 2020, 9:41:54 PM
    Author     : SHABA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page" />
<% if(session.getAttribute("username")==null)
    {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
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
         <jsp:include page ="navigationbar2.jsp" />
           <div class="container" style="margin-top: 200px">
            <h1 class="text-center" style="color: #E6120E"><b>******** WELCOME ********</b></h1><br>
           </div>
    </body>
</html>
