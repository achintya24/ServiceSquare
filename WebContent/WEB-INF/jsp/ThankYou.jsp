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

<title>Error Page</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/modern-business.css" rel="stylesheet">

<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

</head>

<body>
	<c:if test="${sessionScope.vname ne null }">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<center>
						<div class="error-template">
							<h3 style="color:#3b5998;">${sessionScope.vname }</h3>
							
							<h4>Thank you for the booking. We would like to assist you
								as soon as possible. Generate Your receipt</h4><br/>
							<h2><a href="generatereciept.htm">Generate Receipt</a></h2>							
							<div class="error-actions">
								<a href="gohome.htm" class="btn btn-primary btn-lg"><span
									class="glyphicon glyphicon-home"></span> Take Me Home </a><a
									href="bookfrm.htm" class="btn btn-default btn-lg"><span
									class="glyphicon glyphicon-envelope"></span> Booking Details </a>

							</div>
						</div>
					</center>
				</div>
			</div>
		</div>


		<script src="js/jquery.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="js/bootstrap.min.js"></script>

		<!-- Contact Form JavaScript -->
		<!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
		<script src="js/jqBootstrapValidation.js"></script>
		<script src="js/contact_me.js"></script>
	</c:if>
	<c:if test="${sessionScope.vname eq null }">
		<%@include file="err.jsp"%>
	</c:if>
</body>

</html>

