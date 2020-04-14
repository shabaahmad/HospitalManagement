<%-- 
    Document   : adddoctor
    Created on : Apr 13, 2020, 1:06:00 PM
    Author     : SHABA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page" />
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
            <h1 class="text-center" style="color: #E6120E"><b>Add Appointment</b></h1><br>
            
            <%
                ResultSet rs1=pDAO.viewDoctor();
            %>
            <%
                ResultSet rs2=pDAO.viewPatient();
            %>
            
            <form method="post" action="mycontroller.jsp">
                <input type="hidden" name="page" value="addappointment">
                <div class="form-group">
                    <label><b>Doctor Name</b></label>
                    <select name="doctor" class="form-control">
                         <%
                             while(rs1.next())
                             {
                           %>
                           <option value="<%=rs1.getString(2)%>">[<%=rs1.getString(1)%>] - <%=rs1.getString(2)%></option>
                           <%
                             }
                          %>   
                    </select><br>
                     <label><b>Patient Name</b></label>
                  <select name="patient" class="form-control">
                           <%
                             while(rs2.next())
                             {
                           %>
                           <option value="<%=rs2.getString(2)%>">[<%=rs2.getString(1)%>] - <%=rs2.getString(2)%></option>
                           <%
                             }
                          %>   
                    </select><br>
                    
                    <label><b>Date</b></label>
                    <input type="date" name="date" class="form-control"><br>
                    
                    <label><b>Time</b></label>
                    <input type="time" name="time" class="form-control"><br>
                    <input type="submit" class="btn btn-primary" style="width: 200px" value="Save">
            </form>
            
        </div>
    </body>
</html>
