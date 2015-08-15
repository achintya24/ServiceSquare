<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<!-- By Designscrazed.com , just a structure for easy usage. -->

<html lang='en'>
<head>
<meta charset="UTF-8" />
<title>Sample Page by Designscrazed.com</title>

<link rel="stylesheet" type="text/css" href="css/payment.css" />

<script src="jquery1.8.js"></script>

<script>
function callme()
{
	var cardnumber=document.getElementById("card_number").value;
	if(cardnumber.length>16)
		{
		alert("invalid card number");
		return false;
		}
	if(isNaN(cardnumber))
		{
		alert("please insert a numbered card");
		return false;
		}
	var ccv=document.getElementById("ccv").value;
	if(ccv.length!=3)
		{
		alert("invalid ccv");
		return false;
		}
	var exp_month=document.getElementById("exp_month").value;
	var exp_year=document.getElementById("exp_year").value;
	if(cardnumber=""||ccv==""||exp_month==""||exp_year=="")
		{
		alert("please fill the card details completely ");
		return false;
		}
	var dateObj = new Date();
	var month = dateObj.getUTCMonth() + 1; 
	var year = dateObj.getUTCFullYear();
	if(parseInt(exp_month)-parseInt(month)<0 && parseInt(exp_year)-parseInt(year)<0)
		{
		alert("invalid expiry date ");
		return false;
		}
	  return true;
	}

</script>
</head>
<body>
	<div class="headline" style="margin-left:-1000px;">

		<h6></h6>

		<h1>
			ServiceSquare
			<h6></h6>
		</h1>

</div>
		<!--  Start here -->

		<body>
		<c:if test="${sessionScope.vname ne null }">
		
		<section>
		
			<div id="wrap">
				<div id="accordian">

					<div class="step" id="step4">

						<div class="title">
							<h1>Payment Information</h1>
						</div>
						<div class="modify">
							<i class="fa fa-plus-circle"></i>
						</div>
					</div>
		
					<div class="content" id="payment">
		<div class="left credit_card" style="margin-left: 100px;">
						
		<form:form action="paymentverification.htm" commandName="payment" class="go-right" onsubmit="return callme();">
							
								<div>
										
									<form:input path="account_no" type="text" name="card_number" value="" id="card_number"
										placeholder="xxxx-xxxx-xxxx-xxxx" data-trigger="change"
										data-validation-minlength="1" data-type="name"
										data-required="true"
										data-error-message="Enter Your Credit Card Number" AutoCompleteType="Disabled"/>
										<!-- <label
										for="card_number">Card Number</label> -->
								</div>
								<div>
									<div class="expiry">
										<div class="month_select">
											<form:select name="exp_month" path="exp_month" value="" id="exp_month" placeholder="" data-trigger="change" data-type="name"
												data-required="true"
												data-error-message="Enter Your Credit Card Expiration Date" AutoCompleteType="Disabled">
											
												<form:option value="1">01</form:option>
												<form:option value="2">02</form:option>
												<form:option value="3">03</form:option>
												<form:option value="4">04</form:option>
												<form:option value="5">05</form:option>
												<form:option value="6">06</form:option>
												<form:option value="7">07</form:option>
												<form:option value="8">08</form:option>
												<form:option value="9">09</form:option>
												<form:option value="10">10</form:option>
												<form:option value="11">11</form:option>
												<form:option value="12">12</form:option>
											</form:select>
										</div>
										<span class="divider">-</span>
										<div class="year_select">
											<form:select name="exp_year" path="exp_year" value="" id="exp_year" placeholder=""
												data-trigger="change" data-type="name" data-required="true"
												data-error-message="Enter Your Credit Card Expiration Date" AutoCompleteType="Disabled">
												
												<form:option value="2015">15</form:option>
												<form:option value="2016">16</form:option>
												<form:option value="2017">17</form:option>
												<form:option value="2018">18</form:option>
												<form:option value="2019">19</form:option>
												<form:option value="2020">20</form:option>
												<form:option value="2021">21</form:option>
												<form:option value="2022">22</form:option>
												<form:option value="2023">23</form:option>
												<form:option value="2024">24</form:option>
												<form:option value="2025">25</form:option>
												<form:option value="2026">26</form:option>
											</form:select>
										</div>
									</div>
									 <label class="exp_date" for="Exp_Date">Exp Date</label>
								</div>
								<div class="sec_num">
									<div>
										<form:input type="password" path="ccv" name="ccv" value="" id="ccv"
											placeholder="123" data-trigger="change"
											data-validation-minlength="3" data-type="name"
											data-required="true"
											data-error-message="Enter Your Card Security Code" AutoCompleteType="Disabled"/> 
											 <label for="ccv">Security Code</label> 
											
									
									</div>
								</div>
								<div style="margin-left:50px;">
								<input type="submit" class="continue" href="#" value="paynow" style="margin-top:15px;"/>
								<a href="cash" class="continue">Cash on Delivery</a>
							</div>
							
						
						</form:form>
						</div>
						<div class="right">
							<div class="accepted">
								<span><img src="img/Z5HVIOt.png"></span> <span><img
									src="img/Le0Vvgx.png"></span> <span><img
									src="img/D2eQTim.png"></span> <span><img
									src="img/Pu4e7AT.png"></span> <span><img
									src="img/ewMjaHv.png"></span> <span><img
									src="img/3LmmFFV.png"></span>
							</div>
							<div class="secured">
								<img class="lock" src="img/lock.png">
								<p class="security info">A payment gateway is an e-commerce application service provider service
								 that authorizes credit card payments for e-businesses, online retailers, bricks and clicks, or traditional brick and mortar.
								 It is the equivalent of a physical point of sale terminal located in most retail outlets.
								 Online Payment Gateway in India. Credit cards, debit cards, netbanking payment options for merchants.
								
								 </p>
							</div>
						</div>
						
						
					</div>


				</div>
			<img src="img/verified.PNG" style="position:absolute;margin-left:-1120px;margin-top:320px;">
				<hr/>
	</section>
	
	
	    </c:if>
<c:if test="${sessionScope.vname eq null }">
<%@include file="err.jsp" %>
	</c:if>
		</body>
</body>
</html>
