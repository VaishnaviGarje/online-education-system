<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<title>Vaishnavi- Online Education System</title>

<!-- Favicon -->
<link rel="icon" href="img/MAINICON1.jpg">

<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<style>
    body {
        padding-top: 20px;
        background-color: #f8f9fa;
    }
    .navbar-brand img {
        height: 70px;
    }
    .form-control {
        margin-bottom: 15px;
    }
    .table-responsive {
        margin-top: 30px;
    }
    .table th, .table td {
        vertical-align: middle;
    }
    .table thead th {
        background-color: #007bff;
        color: white;
    }
    .btn-custom {
        margin-right: 10px;
    }
    .btn-container {
        text-align: center;
    }
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">
        <h1>
					<img src="img/MAINICON1.jpg" width="80" height="80"> The<font
						color=red size=90>V</font>aishnaviAcademy
				</h1>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="ahome">Home</a>
            </li>

        </ul>
    </div>
</nav>

<div class="container">
    <div class="text-center">
        <h1 class="display-4">User Contact Records</h1>
      
    </div>
    <br>

    <form action="viewcontactdetail" method="post" class="row">
        <div class="form-group col-md-3">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Enter name">
        </div>
        <div class="form-group col-md-3">
            <label for="message">message</label>
            <input type="text" class="form-control" id="address" name="message" placeholder="Enter address">
        </div>
        <div class="form-group col-md-3">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
        </div>
        <div class="form-group col-md-3">
            <label for="mobile">Mobile</label>
            <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Enter mobile number">
        </div>
        <div class="form-group col-md-12 btn-container">
            <input type="submit" class="btn btn-success btn-custom" value="Save">
            <button type="submit" formaction="updatecontactdetail" class="btn btn-warning btn-custom">Update</button>
            <button type="submit" formaction="deletecontactdetail" class="btn btn-danger btn-custom">Delete</button>
            <input type="reset" class="btn btn-secondary btn-custom" value="Reset">
        </div>
    </form>
    <br>

    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>message</th>
                    <th>Email</th>
                    <th>Mobile</th>
                </tr>
            </thead>
            <tbody>
                <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/VaishnaviOnlineEducationSystem", "root", "root");
                PreparedStatement ps = connection.prepareStatement("select * from contact");
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    out.println("<tr><td>" + rs.getString(4) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(1)
                    + "</td><td>" + rs.getString(3) + "</td></tr>");
                }
                %>
            </tbody>
        </table>
    </div>
</div>

<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
