<%-- 
    Document   : logout
    Created on : Apr 13, 2020, 10:15:08 AM
    Author     : SHABA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page" />

<% 
        session.setAttribute("userStatus", "0");
        session.removeAttribute("username");
        session.invalidate();
        response.sendRedirect("index.jsp");
%>