<%-- 
    Document   : viewdoctor
    Created on : Apr 13, 2020, 9:23:56 PM
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
              <h1 class="text-center" style="color: #E6120E"><b>View Appointment</b></h1><br>
           
            <% 
                ResultSet rs=pDAO.viewAppointment(); 
            %>
              <table class="table table-hover">
                  <thead style="background-color: green;color: white">
                      <tr>
                         <th> Appointment ID</th>
                         <th> Doctor Name</th>
                         <th> Patient Name</th>
                          <th> Date</th>
                         <th> Time</th>
                         <th> Remove</th>
                      </tr>
                  </thead>
                  <tbody class="table-warning">
                      <%
                          while(rs.next())
                          {
                       %>
                       <tr>
                           <td><%=rs.getString(1)%></td>
                           <td><%=rs.getString(2)%></td>
                           <td><%=rs.getString(3)%></td>
                           <td><%=rs.getString(4)%></td>
                           <td><%=rs.getString(5)%></td>
                           <td><a style="font-size:10px" href="deleteappointment.jsp?id=<%=rs.getString(1)%>" class="btn btn-danger">Delete</a></td>
                       </tr>
                       <%
                          }
                       %>
                  </tbody>
              </table>
          </div>
    </body>
</html>
