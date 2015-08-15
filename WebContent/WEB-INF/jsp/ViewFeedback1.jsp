<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Feedback</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

<!-- Custom Fonts -->

<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"
	type="text/css">

<!-- Plugin CSS -->
<link rel="stylesheet" href="css/animate.min.css" type="text/css">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/creative.css" type="text/css">



</head>

<body id="page-top">
<c:if test="${sessionScope.vname ne null }">
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
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
	<section class="bg-primary" id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">



					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade active in" id="service-one">

							<section id="intro" class="intro-section">
								<div class="container">
									<div class="row">
										<div class="col-lg-12">
											<table class="table" style="background-color: #e3e3e3">

												<tr>
													<th>Name</th>
													<th>Email</th>
													<th>Phone No</th>
													<th>Message</th>


												</tr>
												<c:forEach items="${elist }" var="w">
													<tr>
														<td>${w.full_name }</td>
														<td>${w.email }</td>
														<td>${w.phone_no }</td>
														<td>${w.message }</td>
													</tr>
												</c:forEach>
											</table>
										</div>
									</div>
								</div>
							</section>
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
		<%@include file="err.jsp" %>
	</c:if>
</body>

</html>
