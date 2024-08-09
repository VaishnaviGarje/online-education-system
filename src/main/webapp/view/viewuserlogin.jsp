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
        background-color: #f8f9fa;
        padding-top: 20px;
    }
    .container {
        background-color: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    .btn-custom {
        margin-right: 10px;
    }
    .table thead th {
        background-color: #007bff;
        color: white;
    }
</style>
</head>
<body>

<div class="container">
    <div class="text-center">
        <h1 class="display-4">User Table Record</h1>
        <a href="ahome" class="btn btn-primary">Back To Home</a>
    </div>
    <br>

    <form action="viewlogindetail" method="post">
        <div class="form-group">
            <label for="username">UserName</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Enter username">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter password">
        </div>
        <div class="form-group text-center">
            <input type="submit" class="btn btn-success btn-custom" value="Save">
            <button type="submit" class="btn btn-warning btn-custom" formaction="updatelogindetail">Update</button>
            <button type="submit" class="btn btn-danger btn-custom"  formaction="deletelogindetail">Delete</button>
            <input type="reset" class="btn btn-secondary btn-custom" value="Reset">
        </div>
    </form>
    <br>

    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>Password</th>
                    <th>UserName</th>
                </tr>
            </thead>
            <tbody>
                <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/VaishnaviOnlineEducationSystem", "root", "root");
                PreparedStatement ps = connection.prepareStatement("select * from login");
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    out.println("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td></tr>");
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
