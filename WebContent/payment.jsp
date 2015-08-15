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
		}
	if(isNaN(cardnumber))
		{
		alert("please insert a numbered card");
		}
	var ccv=document.getElementById("ccv").value;
	if(ccv.length!=3)
		{
		alert("invalid ccv");
		}
	var exp_month=document.getElementById("exp_month").value;
	var exp_year=document.getElementById("exp_year").value;
	if(cardnumber=""||ccv==""||exp_month==""||exp_year=="")
		{
		alert("please fill the card details completely ");
		}
	var dateObj = new Date();
	var month = dateObj.getUTCMonth() + 1; 
	var year = dateObj.getUTCFullYear();
	if(parseInt(exp_month)-parseInt(month)<0 && parseInt(exp_year)-parseInt(year)<0)
		{
		alert("invalid expiry date ");
		}
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
							<form class="go-right">
								<div>
									<input type="text" name="card_number" value="" id="card_number"
										placeholder="xxxx-xxxx-xxxx-xxxx" data-trigger="change"
										data-validation-minlength="1" data-type="name"
										data-required="true"
										data-error-message="Enter Your Credit Card Number" /><label
										for="card_number">Card Number</label>
								</div>
								<div>
									<div class="expiry">
										<div class="month_select">
											<select name="exp_month" value="" id="exp_month"
												placeholder="" data-trigger="change" data-type="name"
												data-required="true"
												data-error-message="Enter Your Credit Card Expiration Date">
											
												<option value="1">01</option>
												<option value="2">02</option>
												<option value="3">03</option>
												<option value="4">04</option>
												<option value="5">05</option>
												<option value="6">06</option>
												<option value="7">07</option>
												<option value="8">08</option>
												<option value="9">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
											</select>
										</div>
										<span class="divider">-</span>
										<div class="year_select">
											<select name="exp_year" value="" id="exp_year" placeholder=""
												data-trigger="change" data-type="name" data-required="true"
												data-error-message="Enter Your Credit Card Expiration Date">
												
												<option value="2015">15</option>
												<option value="2016">16</option>
												<option value="2017">17</option>
												<option value="2018">18</option>
												<option value="2019">19</option>
												<option value="2020">20</option>
												<option value="2021">22</option>
												<option value="2022">23</option>
												<option value="2023">24</option>
												<option value="2024">25</option>
												<option value="2025">26</option>
											</select>
										</div>
									</div>
									<label class="exp_date" for="Exp_Date">Exp Date</label>
								</div>
								<div class="sec_num">
									<div>
										<input type="text" name="ccv" value="" id="ccv"
											placeholder="123" data-trigger="change"
											data-validation-minlength="3" data-type="name"
											data-required="true"
											data-error-message="Enter Your Card Security Code" /> <label
											for="ccv">Security Code</label>
									</div>
								</div>
							</form>
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
						
						<center><button class="continue" href="#" onclick="callme()">Pay Now</button>
						<button class="continue" href="#" onclick="callme()">Cash on delivery</button></center>
					</div>


				</div>
			<img src="img/verified.PNG" style="position:absolute;margin-left:-1120px;margin-top:300px;">
				<hr/>
	</section>
		</body>
</body>
</html>
