<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>FeedBack</title>
<script src="http://maps.google.com/maps/api/js?sensor=false" 
           type="text/javascript"></script> 
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
    <br/></br> <br/>
    <div class="container">
<div class="row">
            <div class="col-md-8">
                <h3>Send us a Message</h3>
                <h4 style="color:red;">${msg }</h4>
                <form:form name="sentMessage" id="contactForm" action="sendfeedback.htm" commandName="feedback" method="post">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Full Name:</label>
                            <form:input type="text" path="full_name" class="form-control" id="name" />
                            <p class="help-block"></p>
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Phone Number:</label>
                            <form:input type="tel" path="phone_no" class="form-control" id="phone" />
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Email Address:</label>
                            <form:input type="email" path="email" class="form-control" id="email" />
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Message:</label>
                            <form:textarea rows="10" cols="100" path="message" class="form-control" id="message"  maxlength="999" style="resize:none"></form:textarea>
                        </div>
                    </div>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                    <button type="submit" class="btn btn-primary">Send Message</button>
                </form:form>
            </div>

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
      <div id="map" style="width: 400px; height: 450px;position:absolute;margin-top:-650px; margin-left:900px;"></div> 

   <script type="text/javascript"> 

   var address = 'Gurgaon, India';

   var map = new google.maps.Map(document.getElementById('map'), { 
       mapTypeId: google.maps.MapTypeId.TERRAIN,
       zoom: 4
   });

   var geocoder = new google.maps.Geocoder();

   geocoder.geocode({
      'address': address
   }, 
   function(results, status) {
      if(status == google.maps.GeocoderStatus.OK) {
         new google.maps.Marker({
            position: results[0].geometry.location,
            map: map,
            animation: google.maps.Animation.BOUNCE,
            title:'ServiceSquare'
          	
         });
        // var infoWindow = new google.maps.InfoWindow({map: map});
         
         map.setCenter(results[0].geometry.location);
         
        
      }
      
      else {
         // Google couldn't geocode this request. Handle appropriately.
      }
   });

   </script> 

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
