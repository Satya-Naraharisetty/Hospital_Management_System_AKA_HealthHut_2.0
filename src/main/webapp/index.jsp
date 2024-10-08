<%@ page import="com.hms.DBConnection" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Management System</title>
    <%@include file="Component/allcss.jsp"%>
    <style>
        .paint-card{
            box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
<%@include file="Component/navbar.jsp"%>
<% try {
    Connection conn = DBConnection.getDBConnection();
} catch (SQLException e) {
    e.printStackTrace();
} %>

        <br>
<div id="carouselExampleIndicators" class="carousel slide">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="images/img1.jpg" class="d-block w-100" alt="Pic 1">
        </div>
        <div class="carousel-item">
            <img src="images/img2.jpg" class="d-block w-100" alt="Pic 2">
        </div>
        <div class="carousel-item">
            <img src="images/img3.jpg" class="d-block w-100" alt="Pic 3">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<div class="container p-5">
    <p class="text-center fs-3">Admin Dashboard</p>
    <div class="row">
        <div class="col-md-8 p-5">
            <div class="row">
                <div class="col-md-6">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">100% Safety</p>
                            <p>lorem ipsum ahda bh jahh  kjwb we akjb</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">Clean Environment</p>
                            <p>lorem ipsum ahda bh jahh  kjwb we akjb</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">Friendly Doctors</p>
                            <p>lorem ipsum ahda bh jahh  kjwb we akjb</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">Medical Research</p>
                            <p>lorem ipsum ahda bh jahh  kjwb we akjb</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <img src="images/img4.jpg" alt="doctor img" height="300px">
        </div>
    </div>
</div>

<hr>

<div class="container p-2">
    <p class="text-center fs-2 ">Our Team</p>

    <div class="row">
        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="images/img5.jpg" width="250px" height="300px">
                    <p class="fw-bold fs-5">Samuani Simi</p>
                    <p class="fs-7">(CEO & Chairman)</p>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="images/img6.jpg" width="250px" height="300px">
                    <p class="fw-bold fs-5">Dr. Dong Lee</p>
                    <p class="fs-7">(Chief Doctor)</p>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="images/img7.jpg" width="250px" height="300px">
                    <p class="fw-bold fs-5">Dr. Nikitha Sitharaman</p>
                    <p class="fs-7">(Chief Doctor)</p>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="images/img8.jpg" width="250px" height="300px">
                    <p class="fw-bold fs-5">Dr. Mathue Samuel</p>
                    <p class="fs-7">(Chief Doctor)</p>
                </div>
            </div>
        </div>

    </div>
</div>

<br>
<%@include file="Component/footer.jsp"%>


</body>
</html>