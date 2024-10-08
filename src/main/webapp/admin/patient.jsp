<%--
  Created by IntelliJ IDEA.
  User: siddu
  Date: 10/2/2024
  Time: 6:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.hms.entity.Doctor"%>
<%@page import="com.hms.dao.*"%>
<%@page import="com.hms.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@ page import="com.hms.DBConnection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <%@include file="../Component/allcss.jsp"%>
    <style type="text/css">
        .paint-card {
            box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="col-md-12">
    <div class="card paint-card">
        <div class="card-body">
            <p class="fs-3 text-center">Patient Details</p>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Full Name</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Age</th>
                    <th scope="col">Appointment</th>
                    <th scope="col">Email</th>
                    <th scope="col">Mob No</th>
                    <th scope="col">Diseases</th>
                    <th scope="col">Doctor Name</th>
                    <th scope="col">Address</th>
                    <th scope="col">Status</th>
                </tr>
                </thead>
                <tbody>
                <%
                    com.hms.dao.AppointmentDao dao = new com.hms.dao.AppointmentDao(DBConnection.getDBConnection());
                    DoctorDao dao2 = new DoctorDao(DBConnection.getDBConnection());
                    List<Appointment> list = dao.getAllAppointment();
                    for (Appointment ap : list) {
                        Doctor d = dao2.getDoctorById(ap.getDoctorId());
                %>
                <tr>
                    <th><%=ap.getFullName()%></th>
                    <td><%=ap.getGender()%></td>
                    <td><%=ap.getAge()%></td>
                    <td><%=ap.getAppointDate()%></td>
                    <td><%=ap.getEmail()%></td>
                    <td><%=ap.getPhNo()%></td>
                    <td><%=ap.getDiseases()%></td>
                    <td><%=d.getFull_Name()%></td>
                    <td><%=ap.getAddress()%></td>
                    <td><%=ap.getStatus()%></td>
                </tr>
                <%
                    }
                %>


                </tbody>
            </table>

        </div>
    </div>
</div>
</body>
</html>