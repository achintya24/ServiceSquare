<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Booking</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

<!-- Custom Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"
	type="text/css">

<!-- Plugin CSS -->
<link rel="stylesheet" href="css/animate.min.css" type="text/css">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/creative.css" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script>
	function alertfunc() {
		alert("Your Booking has been cancelled!!");
	}
</script>

</head>




<body id="page-top">

	<c:if test="${sessionScope.vname ne null }">
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
					<li><a href="newWorkerform1.htm" style="color: red;">Become
							A Home Cleaner</a></li>
					<li><a href="#c">${sessionScope.vname }</a></li>
					<li><a href="bookfrm.htm">Bookings</a>
					<li><a href="faqfrm.htm">FAQ</a></li>

					<li><a href="contactfrm.htm">Contact</a></li>
					<li><a class="page-scroll" href="logout"><span
							class="glyphicon glyphicon-log-out" aria-hidden="true">Log-Out</span></a>
					</li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>

		<!-- /.container --> </nav>

		<section class="bg-primary" id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">



					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade active in" id="service-one">

							<section id="intro" class="intro-section">
							<div class="container" style="margin-top:-110px;">
								<div class="row">
									<div class="col-lg-12">

										<table class="table" style="background-color: #e3e3e3">
											<tr>
											<tr>
												<th>Booking ID</th>
												<th>Worker Name</th>
												<th>Start Date</th>
												<th>End Date</th>
												<th>Start Time</th>
												<th>End Time</th>
												<th>Category Name</th>
												<th>City</th>
												<th>Locality</th>
												<th>Address</th>
												<th>Pincode</th>
											</tr>

											<c:forEach items="${elist }" var="b">
												<form:form action="cancel" method="GET">
													<tr>
														<td>${b.booking_id}</td>
														<td>${b.worker_name}</td>
														<td>${b.start_date}</td>
														<td>${b.end_date}</td>
														<td>${b.start_time}</td>
														<td>${b.end_time}</td>
														<td>${b.category}</td>
														<td>${b.city }</td>
														<td>${b.locality}</td>
														<td>${b.address}</td>
														<td>${b.pincode}</td>
														<td><button name="cancel_id" value="${b.booking_id }"
																onclick="alertfunc();">Cancel</button></td>
													</tr>
												</form:form>
											</c:forEach>

										</table>

									</div>
								</div>
							</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>




		<!-- jQuery -->
		<script src="js/jquery.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="js/bootstrap.min.js"></script>

		<!-- Plugin JavaScript -->
		<script src="js/jquery.easing.min.js"></script>
		<script src="js/jquery.fittext.js"></script>
		<script src="js/wow.min.js"></script>

		<!-- Custom Theme JavaScript -->
		<script src="js/creative.js"></script>
	</c:if>
	<c:if test="${sessionScope.vname eq null }">
		<%@include file="err.jsp"%>
	</c:if>

</body>
</html>











