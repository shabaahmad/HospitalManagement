

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page" />
<%
    String id=request.getParameter("id").toString();
    pDAO.deleteDoctor(id);
    response.sendRedirect("viewdoctor.jsp");
 %> 