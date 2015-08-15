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
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">

				<a class="navbar-brand page-scroll" href="#page-top">Hi,
					${sessionScope.vname }</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="viewuser.htm">View All Users</a></li>
						<li><a href="newWorkerform.htm">Add Worker</a></li>
						<li><a href="viewall1.htm">View All Workers</a></li>
						<li><a href="viewfeedback.htm">Feed Back</a>
						<li><a href="newworker.htm">New Worker Notification</a></li>
						<li><a href="#contact"><span
								class="glyphicon glyphicon-earphone"></span>1860-123-4569
								(Customer support)</a></li>
						<li><a href="logout">Logout</a></li>
					</ul>

				</div>
			</div>
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
								<div class="container" style="margin-top:-80px;">
									<div class="row">
										<div class="col-lg-12">
											<table class="table" style="background-color: #e3e3e3">

												<tr>
													<th>ID</th>
													<th>Name</th>
													<th>Contact No</th>
													<th>Category</th>
													<th>Sex</th>
													<th>DOB</th>
													<th>Experience</th>
													<th>Start Date</th>
													<th>End Date</th>
													<th>Ranking</th>
													<th>Start Time</th>
													<th>End Time</th>
													<th>Availability</th>
													<th>Wages</th>
													<th>City</th>
													<th>Locality</th>

												</tr>
												<c:forEach items="${elist }" var="w">
													<form action="addin" method="get">
														<tr>
															<td>${w.worker_id }</td>
															<td>${w.worker_name }</td>
															<td>${w.worker_contact_no }</td>
															<td>${w.worker_category }</td>
															<td>${w.worker_sex }</td>
															<td>${w.worker_dob }</td>
															<td>${w.worker_exp }</td>
															<td>${w.worker_startdate }</td>
															<td>${w.worker_enddate }</td>
															<td>${w.worker_ranking }</td>
															<td>${w.worker_starttime }</td>
															<td>${w.worker_endtime }</td>
															<td>${w.worker_avail }</td>
															<td>${w.worker_rent }</td>
															<td>${w.city }</td>
															<td>${w.locality }</td>
															<%-- <td><fmt:formatDate value="${e.doj }" pattern="dd-MMM-yyyy"/></td> --%>
															<td><button name="worker_id"
																	value="${w.worker_id }-${w.worker_category }-${w.city }-${w.locality }"
																	id="wid" onclick="view">Add</button></td>
														</tr>
													</form>
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

<footer>
            <div class="row">
                <div class="col-lg-12">
                    <center><p>Copyright &copy; ServiceSquare 2014</p></center>
                </div>
            </div>
        </footer>



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

</body>

</html>
