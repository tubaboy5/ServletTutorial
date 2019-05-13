<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.user.Student" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<% Student student = (Student) session.getAttribute("student"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GPA Calculator</title>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="containter">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			Welcome To <% out.print(student.getSchoolName()); %>
	</div>
	<div id="navbar" class="navbar-collapse collapse">
	</div><!--/.navbar-collapse-->
	</div>
</nav>
<!--Main jumbotron for a primary marketing message or call to action-->
<div class="jumbotron">
	<div class="containter">
		<h1>Hello, <% out.print(student.getFirstName()); %></h1>
		<p>This is a simple java servlet program for a functional website. </p>
	</div>
</div>
<div class="container">
	<!--Example row of columns-->
	<div class="row">
		<div class="col-md-4">
			<h2>My GPA</h2>
			<p><% out.print(student.getGpa()); %></p>
			
			<!--<p><a class="btn btn-default" href=GpaServlet" role="button">View GPA </a></p> -->
		</div>
	<div class="col-md-4">
		<h2>Enter Grades </h2>
		<form action="GpaServlet" method="post">
<div class="form-group">
	<label for="gradeOne">Grade One</label>
	<input type="text" class="form-control" name="gradeOne" id="gradeOne" placeholder="Grade One">
</div>
<div class="form-group">
	<label for="gradeTwo">Grade Two</label>
	<input type="text" class="form-control" name="gradeTwo" id="gradeTwo" placeholder="Grade Two">
</div>
<div class="form-group">
	<label for="gradeThree">Grade Three</label>
	<input type="text" class="form-control" name="gradeThree" id="gradeThree" placeholder="Grade Three">
</div>
<button type="submit" class="btn btn-default">Submit</button>
</form>
</div>
<hr>
<footer>
	<p>&copy; 2018 Company Inc. </p>
</footer>
</div> <!--/container-->
</div>
</body>
</html>