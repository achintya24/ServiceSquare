<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Home Page</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

<!-- Custom Fonts -->

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
<style>

</style>
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
				<li><a href="newWorkerform1.htm" style="color:red;">Become A Home Cleaner</a></li>
					<li><a href="#c">${sessionScope.vname }</a>
					</li>
					<li><a href="bookfrm.htm">Bookings</a>
					<li><a href="faq.html">FAQ</a></li>

					<li><a href="#contact">Contact</a></li>
						 <li>
                        <a class="page-scroll" href="logout"><span class="glyphicon glyphicon-log-out" aria-hidden="true">Log-Out</span></a>
                    </li></ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		
		<!-- /.container -->
	</nav>
		<h4>Worker Details</h4>
		<hr />
		
			<center>
				<form:form action="viewbycategory1.htm" commandName="radiob"
					method="get">
					<table>
						<tr>
							<td><form:input type="radio" name="sortby" path="sortby" value="rating" />Sort By Rating<br></td><br>
							<td><form:input type="radio" name="sortby" path="sortby" value="experience" />Sort By Experience<br> </td><br>
							<td><form:input type="radio" name="sortby" path="sortby" value="price" />Sort By Price<br> </td>
							<td><input type="submit" value="Sort" style="width:70px;"/></td>
						</tr>
					</table>
				</form:form>
			</center>
		
<!-- 		<section class="bg-primary" id="about">
			<div class="container" style="margin-top:-180px;">
				<div class="row">
					<div class="col-lg-12">
 -->


						<div id="myTabContent" class="tab-content">
							<div class="tab-pane fade active in" id="service-one">

								<section id="intro" class="intro-section">
									<div class="container">
										<div class="row">
											<div class="col-lg-12">
												<table class="table" style="background-color: #e3e3e3">

													<tr>
														<th>ID</th>
														<th>Name</th>
														<th>Contact Number</th>
														<th>Category</th>
														<th>Sex</th>
														<th>DOB</th>
														<th>Experience</th>
														<th>Ranking</th>
														<th>Start Time</th>
														<th>End Time</th>
														<th>Availability</th>
														<th>Wages</th>

														

														<th>Locality</th>
													</tr>
													<c:choose>
														<c:when test="${sortByRating ne null}">
															<c:forEach items="${sortByRating }" var="w">
																<form:form action="worker" method="GET">
																	<tr>
																		<td>${w.worker_id }</td>
																		<td>${w.worker_name }</td>
																		<td>${w.worker_contact_no }</td>
																		<td>${w.worker_category }</td>
																		<td>${w.worker_sex }</td>
																		<td>${w.worker_dob }</td>
																		<td>${w.worker_exp }</td>
																		<td style="color: red;">${w.worker_ranking }</td>
																		<td>${w.worker_starttime }</td>
																		<td>${w.worker_endtime }</td>
																		<td>${w.worker_avail }</td>
																		<td>${w.worker_rent }</td>

																		
																		<td>${w.locality }</td>
																		<td><fmt:formatDate value="${e.doj }"
																				pattern="dd-MMM-yyyy" /></td>
																		<td><button name="worker_id"
																				value="${w.worker_id }-${w.worker_category}-${sessionScope.vuser_id }-${w.worker_rent}"
																				id="wid">BookNow</button></td>
																	</tr>
																</form:form>
															</c:forEach>
														</c:when>
														<c:when test="${viewall ne null}">
															<c:forEach items="${viewall }" var="w">
																<form:form action="worker" method="GET">
																	<tr>
																		<td>${w.worker_id }</td>
																		<td>${w.worker_name }</td>
																		<td>${w.worker_contact_no }</td>
																		<td>${w.worker_category }</td>
																		<td>${w.worker_sex }</td>
																		<td>${w.worker_dob }</td>
																		<td>${w.worker_exp }</td>
																		<td>${w.worker_ranking }</td>
																		<td>${w.worker_starttime }</td>
																		<td>${w.worker_endtime }</td>
																		<td>${w.worker_avail }</td>
																		<td>${w.worker_rent }</td>
																		
																		<td style="color: red;">${w.locality }</td>
																		<td><fmt:formatDate value="${e.doj }"
																				pattern="dd-MMM-yyyy" /></td>
																		<td><button name="worker_id"
																				value="${w.worker_id }-${w.worker_category}-${sessionScope.vuser_id }-${w.worker_rent}"
																				id="wid">BookNow</button></td>
																	</tr>
																</form:form>
															</c:forEach>
														</c:when>
														<c:when test="${sortByPrice ne null}">
															<c:forEach items="${sortByPrice }" var="w">
																<form:form action="worker" method="GET">
																	<tr>
																		<td>${w.worker_id }</td>
																		<td>${w.worker_name }</td>
																		<td>${w.worker_contact_no }</td>
																		<td>${w.worker_category }</td>
																		<td>${w.worker_sex }</td>
																		<td>${w.worker_dob }</td>
																		<td>${w.worker_exp }</td>
																		<td>${w.worker_ranking }</td>
																		<td>${w.worker_starttime }</td>
																		<td>${w.worker_endtime }</td>
																		<td>${w.worker_avail }</td>
																		<td>${w.worker_rent }</td>
																	
																		<td style="color: red;">${w.locality }</td>
																		<td><fmt:formatDate value="${e.doj }"
																				pattern="dd-MMM-yyyy" /></td>
																		<td><button name="worker_id"
																				value="${w.worker_id }-${w.worker_category}-${sessionScope.vuser_id }-${w.worker_rent}"
																				id="wid">BookNow</button></td>
																	</tr>
																</form:form>
															</c:forEach>
														</c:when>
														<c:when test="${sortByExperience ne null}">

															<c:forEach items="${sortByExperience }" var="w">
																<form:form action="worker" method="GET">
																	<tr>
																		<td>${w.worker_id }</td>
																		<td>${w.worker_name }</td>
																		<td>${w.worker_contact_no }</td>
																		<td>${w.worker_category }</td>
																		<td>${w.worker_sex }</td>
																		<td>${w.worker_dob }</td>
																		<td style="color: red;">${w.worker_exp }</td>
																		<td>${w.worker_ranking }</td>
																		<td>${w.worker_starttime }</td>
																		<td>${w.worker_endtime }</td>
																		<td>${w.worker_avail }</td>
																		<td>${w.worker_rent }</td>

																		<td>${w.locality }</td>
																		<td><fmt:formatDate value="${e.doj }"
																				pattern="dd-MMM-yyyy" /></td>
																		<td><button name="worker_id"
																				value="${w.worker_id }-${w.worker_category}-${sessionScope.vuser_id }-${w.worker_rent}"
																				id="wid">BookNow</button></td>
																	</tr>
																</form:form>
															</c:forEach>

														</c:when>
														<c:otherwise>
																No Service Available!!
					
														</c:otherwise>
													</c:choose>

												</table>

											</div>
										</div>
									</div>
								</section>
								</p>
							</div>
						</div>



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
