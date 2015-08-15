<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Worker Form</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/modern-business.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">


</head>

<body>
	<c:if test="${sessionScope.vname ne null }">
		<!-- Navigation -->
		  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="gohome.htm">ServiceSquare</a> <a
					class="navbar-brand" href="gohome.htm">Home</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
				<li><a href="newWorkerform1.htm" style="color:red;">Become A Home Cleaner</a></li>
					<li><a href="#c">${sessionScope.vname }</a>
					</li>
					<li><a href="bookfrm.htm">Bookings</a>
					<li><a href="faqfrm.htm">FAQ</a></li>

					<li><a href="contactfrm.htm">Contact</a></li>
						 <li>
                        <a class="page-scroll" href="logout"><span class="glyphicon glyphicon-log-out" aria-hidden="true">Log-Out</span></a>
                    </li></ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		
		<!-- /.container -->
	</nav>
		<br /></br>
		<br />
		<div class="container-fluid">
			<section class="container">
				<div class="container-page">
					<div class="col-lg-6">
						<h3 class="dark-grey">Worker Form</h3>
						<h4 style="color:red;">${msg }</h4>

						<form:form action="addworkerdetails.htm" commandName="worker1"
							method="post">
							<div class="controls">
								<label>Name</label>
								<form:input path="wname" class="form-control" />
							</div>

							<div class="controls">
								<label>Category</label>
								<form:select path="wcategory" class="form-control">
									<form:option value="">-----Select Category-----</form:option>
									<form:option value="Plumber">Plumber</form:option>
									<form:option value="Electrical">Electrical</form:option>
									<form:option value="Home Cleaning">Home Cleaning</form:option>
									<form:option value="Computer Repair">Computer Repair</form:option>
								</form:select>
							</div>

							<div class="controls">
								<label>Contact No.</label>
								<form:input path="wcontactno" name="" class="form-control" id=""
									value="" />
							</div>
							<br/>
							<div>
								<label>Sex</label>
								<form:radiobutton path="wsex" value="male" name="sex"
									/>
								Male
								<form:radiobutton path="wsex" value="female" name="sex"
									/>
								Female
							</div>

							<div class="controls">
								<label>DOB</label>
								<form:input path="wdob" class="form-control" id="" value="" />
							</div>
							<div class="controls">
								<label>Experience</label>
								<form:input path="wexp" class="form-control" />
							</div>

							<div class="controls">
								<label>Language</label>
								<form:input path="wlanguage" class="form-control" />
							</div>
							<div class="controls">
								<label>Start Date</label>
								<form:input path="wstart_date" class="form-control" />
							</div>

							<div class="controls">
								<label>End Date</label>
								<form:input path="wend_date" class="form-control" />
							</div>
							<div class="controls">
								<label>Start Time</label>
								<form:input path="wstart_time" class="form-control" />
							</div>
							
							<div class="controls">
								<label>End Time</label>
								<form:input path="wend_time" class="form-control" />
							</div>
							<div class="controls">
								<label>Rent/Hours(Rs.)</label>
								<form:input path="wrent" class="form-control" />
							</div>
							<div class="controls">
								<label>City</label>
								<form:input path="city" class="form-control" />
							</div>
							<div class="controls">
								<label>Locality</label>
								<form:input path="locality" class="form-control" />
							</div>
							

							<br />
							<br />
							<div class="controls">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form:form>
					</div>
				</div>
			</section>
		</div>
		<hr>

		<!-- Footer -->
		<footer>
			<div class="row">
				<div class="col-lg-12">
				<center><p>Copyright &copy; ServiceSquare 2015</p></center>
				</div>
			</div>
		</footer>

		</div>
		<!-- /.container -->

		<!-- jQuery -->
		<script src="js/jquery.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="js/bootstrap.min.js"></script>

		<!-- Contact Form JavaScript -->
		<!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
		<script src="js/jqBootstrapValidation.js"></script>
		<script src="js/contact_me.js"></script>
	</c:if>
	<c:if test="${sessionScope.vname eq null }">
		<%@include file="err.jsp" %>
	</c:if>

</body>

</html>
