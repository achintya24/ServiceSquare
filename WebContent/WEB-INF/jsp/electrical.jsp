<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Booking</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    
     <script type="text/javascript">
	$(document).ready(function(){
		$(".txt1").datepicker({dateFormat:'dd-mm-yy',changeMonth:true,changeYear:true});
	});
</script>
<style type="text/css">
    input:focus:invalid { /* when a field is considered invalid by the browser */
    background: #fff url(img/invalid.jpg) no-repeat 97% center;
    background-clip:padding-box;
    box-shadow: 0 0 5px #d45252;                
    border-color: #b03535
        
}

input:required:valid,  textarea:required:valid { /* when a field is considered valid by the browser */
    background: #fff url(img/valid.jpg) no-repeat 97% center;
    box-shadow: 0 0 5px #5cd053;
    border-color: #28921f;
}
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

      <div class="blog-header">
        <h1 class="blog-title">Need an Electrician You Can Rely On?</h1>
        <p class="lead blog-description">Housejoy provides Fast, reliable and professional electrical services.</p>
      </div>

      <div class="row">

        <div class="col-sm-8 blog-main">

         <ul class="list-group">
  <li class="list-group-item"><span class="glyphicon glyphicon-ok" ></span>Tube light repair/replacement</li>
  <li class="list-group-item"><span class="glyphicon glyphicon-ok"></span>Rewiring</li>
  <li class="list-group-item"><span class="glyphicon glyphicon-ok"></span>MCB Repair</li>
  <li class="list-group-item"><span class="glyphicon glyphicon-ok"></span>Switch repair/Replacement</li>
  
</ul>
<div class="row">
        <div class="col-lg-4">
          <img class="img-circle" src="img/tro.png" alt="Generic placeholder image" width="140" height="140">
          <h2>Trained&Certified Plumbers</h2>
          <p>We follow strict quality standards to ensure best quality plumbing services</p>
          
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="img/certi.png" alt="Generic placeholder image" width="140" height="140">
          <h2>Guarantee for quality</h2>
          <p>We will redo the work free of charge if the problem recurs within 7 days of service</p>
          
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="img/back.png" alt="Generic placeholder image" width="140" height="140">
          <h2>Background Checked staff</h2>
          <p>We verify address and check criminal history for all service providers</p>
         
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
          

          

         

        </div><!-- /.blog-main -->

        <div class="col-sm-3 col-sm-offset-1 blog-sidebar" style="background-color: #F1ECEC;">
        <h2>Fix your Electrical Problem</h2>
          <div class="sidebar-module sidebar-module-inset">
              
<form:form name="sentMessage" action="paymentform.htm" commandName="plumber" id="contactForm">
                     <div class="control-group form-group">
                        <div class="controls">

                            <label>Start Date:</label>
                            <form:input type="text" class="form-control" id="sdate" required="true"  pattern="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d$" path="book_start_date" placeholder="DD-MM-YYYY" />
                            <p class="help-block"></p>
                        </div>
                    </div>
                    <div class="controls">
                            <label>End Date:</label>
                            <form:input type="text" class="form-control" id="edate" required="true"  pattern="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d$" path="book_end_date" placeholder="DD-MM-YYYY" />
                        </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Start Time:</label>
                            <form:input type="text" class="form-control" required="true"  pattern="^(?:(?:([01]?\d|2[0-3]):)?([0-5]?\d):)?([0-5]?\d)$" path="book_start_time" id="stime" placeholder="HH:MM:SS" />
                        </div>
                    </div>
                    <div class="controls">
                            <label>End Time</label>
                            <form:input type="text" class="form-control" required="true"  pattern="^(?:(?:([01]?\d|2[0-3]):)?([0-5]?\d):)?([0-5]?\d)$" id="etime" path="book_end_time" placeHolder="HH:MM:SS" />
                        </div>

                        <div class="controls">
                            <label>Locality</label>
                            <form:input type="text" class="form-control" id="locality" required="true" path="book_locality" />
                        </div>
                     <div class="controls">
                            <label>Address</label>
                            <form:input type="text" class="form-control" path="book_address" required="true" id="address" />
                        </div>
                         <div class="controls">
                            <label>Pincode</label>
                            <form:input type="text" class="form-control" id="pincode" path="book_pincode" required="true" pattern="^[1-9][0-9]{5}$"/>
                        </div>
                    
                    
                    <!-- For success/fail messages -->
                   
                    <br/>
                   <button class="btn btn-lg btn-primary btn-block" type="submit">Book a Plumber Now</button>
                </form:form>
          </div>
         
        </div><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </div><!-- /.container -->

    <footer class="blog-footer">
     
        <a href="#">Back to top</a>
      </p>
    </footer>	


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    
     </c:if>
<c:if test="${sessionScope.vname eq null }">
	<%@include file="err.jsp" %>
	</c:if>
  </body>
</html>
