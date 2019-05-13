<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.user.Course"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/class" href="./styles/styles.css">
<meta charset="UTF-8">
<title>Courses</title>
<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
<!-- <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 	<link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 	<script>
  $( function() {
    $( "#datepicker" ).datepicker();
 	} );
  </script>

<!-- <script> -->
<!-- 	$(function() { -->
<!-- 		$("#datepicker").datepicker(); -->
<!-- 	}); -->
<!-- </script> -->
<style type="text/css">
.weekDays-selector input {
	display: none !important;
}

.weekDays-selector input[type=checkbox]+label {
	display: inline-block;
	border-radius: 6px;
	background: #dddddd;
	height: 40px;
	width: 30px;
	margin-right: 3px;
	line-height: 40px;
	text-align: center;
	cursor: pointer;
}

.weekDays-selector input[type=checkbox]:checked+label {
	background: #2AD705;
	color: #ffffff;
}
.ui-datepicker-today  {
     background: #f00 !important;
     border:  #fff !important; 
}  
.ui-datepicker-today  a {
     border:  #fff !important;
     color:  #fff !important;
     font-weight: bold !important;
     background: #f00 !important; 
  

</style>
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Project name</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="#contact">Contact</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<div style="margin-top: 100px"></div>
		<div style="width: 300px">

			<br> <br>
			<form action="SchedulerServlet" method="POST">
				Professors <select class="form-control" name="professor">
					<option value="John White">John White</option>
					<option value="Michael Brown">Michael Brown</option>
					<option value="Tina Doe">Tina Doe</option>
					<option value="Emily Winter">Emily Winter</option>
					<option value="Christine Summer">Christine Summer</option>
				</select> <br> Classes <select class="form-control" name="courseName">
					<option value="Java">Java</option>
					<option value="C#">C#</option>
					<option value="C++">C++</option>
					<option value="C">C</option>
					<option value="Ruby on Rails">Ruby on Rails</option>
					<option value="Php">Php</option>
					<option value="SQL">SQL</option>
					<option value="Javascript">Javascript</option>
				</select> <br>
				<div class="weekDays-selector">
					<input type="checkbox" name="weekday" value="MONDAY"
						id="weekday-mon" class="weekday" /> <label for="weekday-mon">M</label>
					<input type="checkbox" name="weekday" value="TUESDAY"
						id="weekday-tue" class="weekday" /> <label for="weekday-tue">T</label>
					<input type="checkbox" name="weekday" value="WEDNESDAY"
						id="weekday-wed" class="weekday" /> <label for="weekday-wed">W</label>
					<input type="checkbox" name="weekday" value="THURSDAY"
						id="weekday-thu" class="weekday" /> <label for="weekday-thu">T</label>
					<input type="checkbox" name="weekday" value="FRIDAY"
						id="weekday-fri" class="weekday" /> <label for="weekday-fri">F</label>
				</div>
				<br>
				<p>
					Date: <input type="text" name="startDate" id="datepicker">
				</p>
				<p>
					Time: <input type="text" name="time" id="time">
				</p>
				<p>
					Room #: <input type="text" name="roomNumber" id="roomNumber">
				</p>
				<button type="submit">add course</button>
			</form>


			<c:if test="${courses != null}">
				<table class="table table-hover">
					<tr>
					<thead>
						<th>Course Name</th>
						<th>Professor</th>
						<th>Start Date</th>
						<th>Week Day</th>
						<th>Time</th>
						<th>Room Number</th>
					</thead>
					</tr>
					<tbody>
						<c:forEach var="course" items="${courses}">
							<tr>
								<td><c:out value="${course.courseName}" /></td>
								<td><c:out value="${course.professor}" /></td>
								<td><c:out value="${course.startDate}" /></td>
								<td><c:forEach var="occurance" items="${course.weekDay}">
										<c:out value="${occurance}" />
									</c:forEach></td>
								<td><c:out value="${course.time}" /></td>
								<td><c:out value="${course.roomNumber}" /></td>

							</tr>
					</tbody>
					</c:forEach>
				</table>
			</c:if>
</body>
</html>