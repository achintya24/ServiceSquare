<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
<script src="js/jquery1.8.js"></script>
<script src="js/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".txt1").datepicker({dateFormat:'dd-mm-yy',changeMonth:true,changeYear:true});
	});
</script>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Register</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<c:if test="${sessionScope.vname ne null }">
    <!-- Navigation -->
   <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="gohome.htm">ServiceSquare</a>
                  <a class="navbar-brand" href="gohome.htm">Home</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
              		      <li><a href="viewuser.htm">View All Users</a></li>
                    <li>
                    	<a href="newWorkerform.htm">Add Worker</a>
                    	</li>
                    	<li><a href="viewall1.htm">View All Workers</a></li>
                    	<li><a href="viewfeedback.htm">Feed Back</a>
                    	<li><a href="newworker.htm">New Worker Notification</a>
                    </li> 
                    <li>
                        <a href="#contact"><span class="glyphicon glyphicon-earphone" ></span>1860-123-4569 (Customer support)</a>
                    </li>
                    <li><a href="logout">Logout</a></li>
                    </ul>
                   
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <br/></br> <br/>
<div class="container-fluid">
    <section class="container">
		<div class="container-page">				
			<div class="col-md-6">
				<h3 class="dark-grey">FeedBack</h3>

	<form:form action="addworkerdetails.htm" commandName="worker1"
		method="post">
		<table cellpadding="20px">
			<tr>
				<td>Name</td>
				<td><form:input path="wname"/></td>
			</tr>
			<tr>
				<td>Category</td>
				<td><form:select path="wcategory">
				<form:option value="">-----Select Category-----</form:option>
				<form:option value="Plumber">Plumber</form:option>
				<form:option value="Electrical">Electrical</form:option>
				<form:option value="Home Cleaning">Home Cleaning</form:option>
				<form:option value="Computer Repair">Computer Repair</form:option>
				</form:select>
				
				</td>
			</tr>
			<tr>
				<td>Contact No.</td>
				<td><form:input path="wcontactno"/></td>
			</tr>
			<tr>
				<td>Sex</td>
				<td><form:radiobutton path="wsex" value="male" name="sex"/>Male
				<form:radiobutton path="wsex" value="female" name="sex"/>Female</td>
			</tr>
			<tr>
				<td>DOB</td>
				<td><form:input path="wdob" type="text" class="txt1"/></td>
			</tr>
			<tr>
				<td>Experience</td>
				<td><form:input path="wexp"/></td>
			</tr>
			<tr>
				<td>Language</td>
				<td><form:input path="wlanguage"/></td>
			</tr>
			<tr>
				<td>Start Date</td>
				<td><form:input path="wstart_date" type="text" class="txt1"/></td>
			</tr>
			<tr>
				<td>End Date</td>
				<td><form:input path="wend_date" type="text" class="txt1"/></td>
			</tr>
			<tr>
				<td>Start Time</td>
				<td><form:input path="wstart_time" type="text"/></td>
			</tr>
			<tr>
				<td>End Time</td>
				<td><form:input path="wend_time" type="text"/></td>
			</tr>
			
			<tr>
				<td>Rent/Hour(Rs.)</td>
				<td><form:input path="wrent"/></td>
			</tr>
			<tr>
				<td>City</td>
				<td><form:input path="city"/></td>
			</tr>
			<tr>
				<td>Locality</td>
				<td><form:input path="locality"/></td>
			</tr>
			<tr>
			<td><input type="submit"/></td>
			</tr>
		</table>
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
                   <center> <p>Copyright &copy; ServiceSquare 2014</p></center>
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

















