<%-- 
    Document   : mycontroller
    Created on : Apr 12, 2020, 7:32:45 PM
    Author     : SHABA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page" />

<%
    if(request.getParameter("page").toString().equals("adminlogin"))
    {
        if(pDAO.loginValidateAdmin(request.getParameter("adminname").toString(), request.getParameter("password").toString()))
        {
            session.setAttribute("userStatus", "1");
            session.setAttribute("username", request.getParameter("adminname").toString());
            response.sendRedirect("adminhome.jsp");
        }
        else
        {
            request.getSession().setAttribute("userStatus", "-1");
             response.sendRedirect("index.jsp");
        }
    }
    else
    if(request.getParameter("page").toString().equals("adddoctor"))
    {
        String doctorname=request.getParameter("doctorname");
        String specialization=request.getParameter("specialization");
        String contact=request.getParameter("contact");
        pDAO.addDoctor(doctorname,specialization,contact);
        response.sendRedirect("viewdoctor.jsp");
    }
    else
    if(request.getParameter("page").toString().equals("addpatient"))
    {
        String patientname=request.getParameter("patientname");
        String patientaddress=request.getParameter("patientaddress");
        String gender=request.getParameter("gender");
        String contact=request.getParameter("contact");
        pDAO.addPatient(patientname,patientaddress,gender,contact);
        response.sendRedirect("viewpatient.jsp");
    }
    
    else
    if(request.getParameter("page").toString().equals("addappointment"))
    {
        String doctor=request.getParameter("doctor");
        String patient=request.getParameter("patient");
        String date=request.getParameter("date");
        String time=request.getParameter("time");
        pDAO.addAppointment(doctor,patient,date,time);
        response.sendRedirect("viewappointment.jsp");
    }
    
%>