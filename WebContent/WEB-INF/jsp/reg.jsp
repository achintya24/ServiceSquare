<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<script src="../../assets/js/ie-emulation-modes-warning.js"></script>
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

<body>

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
                    
                     
                    <li>
                        <a href="#contact"><span class="glyphicon glyphicon-earphone" ></span>1860-123-4569 (Customer support)</a>
                    </li>
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
				<h3 class="dark-grey">Registration</h3>
				
	<form:form action="addclientdetails.htm" commandName="user" method="post">
			<div class="form-group col-lg-12">
					<label>Email</label>
					<form:input path="email" class="form-control" required="true" pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}"/>
			</div>
			<div class="form-group col-lg-6">
					<label>Password</label>
					<form:input path="password" type="password" class="form-control" pattern="[A-Za-z0-9]{10}"/>
				</div>
			<div class="form-group col-lg-6">
					<label>Full Name</label>
					<form:input path="fullname" class="form-control" required="true" pattern="[A-Za-z]+"/>
				</div>
			<div class="form-group col-lg-6">
					<label>Contact No</label>
					<form:input path="contactno" class="form-control" required="true" pattern="[789][0-9]{9}"/>
				</div>
			
			<div class="form-group col-lg-6">
					<label>Sex</label>
					<br>
					<label>Male</label>
				  <form:radiobutton path="sex" value="male"></form:radiobutton>
				  <label>Female</label>
   				  <form:radiobutton path="sex" value="female"></form:radiobutton>  
					 
				</div>
			<div class="col-sm-6">	
				<input type="submit" value="submit" class="btn btn-primary"/>	
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

</body>
</html>


