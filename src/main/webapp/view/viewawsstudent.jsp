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
    .container h1 {
        color: #007bff;
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
        <h1 class="display-4">AWS Student Courses Table Record</h1>
 
    </div>
    <br>

    <form action="viewawsstudent" method="post" class="row">
        <div class="form-group col-md-4">
            <label for="id">Student ID</label>
            <input type="text" class="form-control" id="id" name="id" placeholder="Enter student ID">
        </div>
        <div class="form-group col-md-4">
            <label for="address">Address</label>
            <input type="text" class="form-control" id="address" name="address" placeholder="Enter address">
        </div>
        <div class="form-group col-md-4">
            <label for="bday">Birth Day</label>
            <input type="text" class="form-control" id="bday" name="bday" placeholder="Enter birth day">
        </div>
        <div class="form-group col-md-4">
            <label for="bmonth">Birth Month</label>
            <input type="text" class="form-control" id="bmonth" name="bmonth" placeholder="Enter birth month">
        </div>
        <div class="form-group col-md-4">
            <label for="byear">Birth Year</label>
            <input type="text" class="form-control" id="byear" name="byear" placeholder="Enter birth year">
        </div>
        <div class="form-group col-md-4">
            <label for="city">City</label>
            <input type="text" class="form-control" id="city" name="city" placeholder="Enter city">
        </div>
        <div class="form-group col-md-4">
            <label for="country">Country</label>
            <input type="text" class="form-control" id="country" name="country" placeholder="Enter country">
        </div>
        <div class="form-group col-md-4">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
        </div>
        <div class="form-group col-md-4">
            <label for="fname">First Name</label>
            <input type="text" class="form-control" id="fname" name="fname" placeholder="Enter first name">
        </div>
        <div class="form-group col-md-4">
            <label for="gender">Gender</label>
            <input type="text" class="form-control" id="gender" name="gender" placeholder="Enter gender">
        </div>
        <div class="form-group col-md-4">
            <label for="fname">Last Name</label>
            <input type="text" class="form-control" id="lname" name="lname" placeholder="Enter Last name">
        </div>
        <div class="form-group col-md-4">
            <label for="mobile">Mobile</label>
            <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Enter mobile number">
        </div>
        <div class="form-group col-md-4">
            <label for="pincode">Pincode</label>
            <input type="text" class="form-control" id="pincode" name="pincode" placeholder="Enter pincode">
        </div>
        <div class="form-group col-md-4">
            <label for="state">State</label>
            <input type="text" class="form-control" id="state" name="state" placeholder="Enter state">
        </div>
        <div class="form-group col-md-12 btn-container">
            <input type="submit" class="btn btn-success btn-custom" value="Save">
            <button type="submit" formaction="updateawsstudent" class="btn btn-warning btn-custom">Update</button>
            <button type="submit" formaction="deleteawsstudent" class="btn btn-danger btn-custom">Delete</button>
            <input type="reset" class="btn btn-secondary btn-custom" value="Reset">
        </div>
    </form>
    <br>

    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>Student Id</th>
                    <th>Student Address</th>
                    <th>Student BDay</th>
                    <th>Student BMonth</th>
                    <th>Student BYear</th>
                    <th>Student City</th>
                    <th>Student Country</th>
                    <th>Student Email</th>
                    <th>Student FName</th>
                    <th>Student Gender</th>
                     <th>Student LName</th>
                    <th>Student Mobile</th>
                    <th>Student Pincode</th>
                    <th>Student State</th>
                </tr>
            </thead>
            <tbody>
                <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/VaishnaviOnlineEducationSystem", "root", "root");
                PreparedStatement ps = connection.prepareStatement("select * from awsstudent");
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    out.println("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>"+ rs.getString(3)+"</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6) + "</td><td>" + rs.getString(7) + "</td><td>" + rs.getString(8) + "</td><td>" + rs.getString(9) + "</td><td>" + rs.getString(10) + "</td><td>" + rs.getString(11) + "</td><td>" + rs.getString(12) + "</td><td>" + rs.getString(13) + "</td><td>" + rs.getString(14) + "</td></tr>");
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
