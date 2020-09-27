<!DOCTYPE html>
<html>
<head>

	<style>@import url('https://fonts.googleapis.com/css?family=Oswald:400,500');
@import url('https://fonts.googleapis.com/css?family=Oswald:400,500,600|Slabo+27px');
@import url(https://fonts.googleapis.com/css?family=Open+Sans+Condensed:700);
@import url('https://fonts.googleapis.com/css?family=Montserrat:400,500');
body {

	margin: 0;
	padding: 0;
	background: url(images/home.jpg);
	width: 100%;
	height: 100%;
	background-repeat: repeat;
	background-size: cover;
	color: white;	
}

header{
	background: black;
	color: white;
	padding: 6px 0px 5px 40px;
	height: 50px;
}

header h1{
	display: inline;
	font-family: 'Oswald', sans-serif;
	font-weight: 100;
	font-size: 23px;
	float: left;
	margin-top: 0px;
	margin-right: 6px;
	padding: 10px 0px 0px 0px ;

}

nav ul{
	margin: 0px;
	padding: 0px;
	list-style: none;
}

nav ul li {
	float: left;
	width: 190.5px;
	height: 50px;
	background-color: black;
	opacity: .8;
	line-height: 50px;
	text-align: center;
	font-size: 16.5px;
	margin-right: 0px;
}

nav ul li a{
	color: white;
	text-decoration: none;
	
}

nav ul li a:hover{
	background-color: blue;
	line-height: 40px;
	width: 150px;
	height: 40px;

}

nav ul li ul li{
	display: none;
}

nav ul li:hover ul li{
	display: block;
}

#nav {
	font-family:  'Slabo 27px', serif;
}

 .homered{
 	background-color: red;
 	padding: 15px 10px 22px 10px;
 	text-align: left;

}

 .divider{
 	background-color: red;
 	height: 5px;
 }

 .homeblack:hover {
 	background-color: blue;
 	padding: 15px 10px 20px 10px;
 }

.sign_up{
	border-radius: 5px;
	background: black;
	padding: 20px;
	width: 910px;
	margin:auto;
	color: #fff;
	font-size: 16px;
	font-family: Verdana;
	margin-top: 100px;
	opacity: 0.7;
	height: 580px;
	padding: 41px 40px ;
	position: absolute;
	transform: translate(-50%,-50%);
	top: 47%;
	left: 49%;
	right: 40%;

}

.sign_up h2{
 text-align:left;
 margin: 0;
 padding: 0px ;
 font-family: 'Oswald', sans-serif;
 font-size: 22px;
 color: PowderBlue;
}

.sign_up input, select{
	padding: 12px 20px;
	margin:8px 0;
	display:inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 18px;
	background:black;
	color:white;
	opacity: 0.7;
}

.sign_up input[type=submit]{
	width: 100%;
	border: absolute;
	cursor: pointer;
}

.sign_up input[type=submit]:hover{
	cursor: pointer;
	background: #39dc79;
	color: #000;
}

#fname{
	width: 38%;
}

#lname{
	width: 38%;
}

#email{
	width: 37%;
}

#password{
	width:38%%;
}

#re_password{
	width: 38%;
}

#DOB{
width: 33%;

}

#Marital-Status{

	width: 30%
}

#Aadhar{
	width: 32%
}

#Address{
	width: 30%;
	height: 80px;
}

input[typ=submit]: hover{
	background: #45a049;
	transition: 0.6s
}

option{
	color: white;
	background: black;

}
	</style>
	<title> BANK APP</title>
	
</head>
	<body>
		<header>
			<nav>
				<h1>WELCOME TO INTERNET BANKING</h1>
				<ul id="nav">
					<li> <a class="homeblack" href="index.html">HOME</a></li>
					<li> <a class="homered" href="#">CUSTOMER SERVICES</a></li>

					<li> <a class="homeblack" href="#">ABOUT US</a></li>

					<li> <a class="homeblack" href="#">CONTACT US</a></li>	
					<li> <a class="homeblack" href="Logout1">LOGOUT</a>
				</ul>
			</nav>
		</header>
		<div class="divider"></div>
			<div class="fwimage1"></div>
			
			
		<div class="sign_up">
			<form action="ApplyLoan">
				<h2>APPLY FOR LOAN FORM</h2>
				<hr>
				<span style="font-size: 18px;">Name:</span>
				<input type="text" name="fname" id="fname" placeholder="Enter your Name..." required> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
				<span style="font-size: 18px;">Gender:</span>
					<input type="radio" name="gender" value="male">Male
					<input type="radio" name="gender" value="female">female <br>
					
					<span style="font-size: 18px;">date of birth:</span>
						<input type="datetime-local" name="DOB" id="DOB" required> &nbsp; &nbsp; &nbsp;
						
					<span style="font-size: 18px;">Email Id:</span>
						<input type="text" name="email" id="email" placeholder="Enter your email..." required>
					
					<span style="font-size: 18px;">Mobile Number:</span>
						<input type="tel" name="mobileNo" placeholder="Enter your Number" required> &nbsp; &nbsp; &nbsp; &nbsp;

					<span style="font-size: 18px;">Nationality:</span>
						<input type="text" name="nation" placeholder="Enter your Nationality" required><br>

					<span style="font-size: 18px;">State:</span>
						<select id="state" name="state">
									<option value="">---------------Select State-------------</option>
									<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
									<option value="Andhra Pradesh">Andhra Pradesh</option>
									<option value="Arunachal Pradesh">Arunachal Pradesh</option>
									<option value="Assam">Assam</option>
									<option value="Bihar">Bihar</option>
									<option value="Chandigarh">Chandigarh</option>
									<option value="Chhattisgarh">Chhattisgarh</option>
									<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
									<option value="Daman and Diu">Daman and Diu</option>
									<option value="Delhi">Delhi</option>
									<option value="Goa">Goa</option>
									<option value="Gujarat">Gujarat</option>
									<option value="Haryana">Haryana</option>
									<option value="Himachal Pradesh">Himachal Pradesh</option>
									<option value="Jammu and Kashmir">Jammu and Kashmir</option>
									<option value="Jharkhand">Jharkhand</option>
									<option value="Karnataka">Karnataka</option>
									<option value="Kerala">Kerala</option>
									<option value="Lakshadweep">Lakshadweep</option>
									<option value="Madhya Pradesh">Madhya Pradesh</option>
									<option value="Maharashtra">Maharashtra</option>
									<option value="Manipur">Manipur</option>
									<option value="Meghalaya">Meghalaya</option>
									<option value="Mizoram">Mizoram</option>
									<option value="Nagaland">Nagaland</option>
									<option value="Orissa">Orissa</option>
									<option value="Pondicherry">Pondicherry</option>
									<option value="Punjab">Punjab</option>
									<option value="Rajasthan">Rajasthan</option>
									<option value="Sikkim">Sikkim</option>
									<option value="Tamil Nadu">Tamil Nadu</option>
									<option value="Tripura">Tripura</option>
									<option value="Uttaranchal">Uttaranchal</option>
									<option value="Uttar Pradesh">Uttar Pradesh</option>
									<option value="West Bengal">West Bengal</option>
						</select>
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
					
					<span style="font-size: 18px;">City:</span>
						<input type="text" name="City" placeholder="Enter your City" required><br>

						<span style="font-size: 18px;">Loan Type:</span>
					<input type="radio" name="loanType" value="Personal Loan">Personal Loan
					<input type="radio" name="loanType" value="Car Loan">Car Loan
					<input type="radio" name="loanType" value="Home Loan">Home Loan
					<input type="radio" name="loanType" value="Other">Eduction Loan
					 <br>
					 <!--  	<span style="font-size: 18px;">Aadhar/Pan Number:</span>
					 <input type="tel" name="aadhar_no" id="Aadhar" placeholder="Enter your Aadhar Number" required>
					 -->	

						</select>
						<br>

							<span style="font-size: 18px;">Nature Of Employment :</span>
					<input type="radio" name="nature" value="Personal Loan">Salaried
					<input type="radio" name="nature" value="Car Loan">Self-employed
					<input type="radio" name="nature" value="Home Loan">Government
					<input type="radio" name="nature" value="Education Loan">Student
					<input type="radio" name="nature" value="Car Loan">House wife
					 <br>

				
				<span style="font-size: 18px;">Annual Income:</span>
						<select id="Marital-Status" name="income">
									<option value="">0 - 6 lakhs</option>
									<option value="Single">7 - 14 lakhs</option>
									<option value="Single">15 - 30 lakhs</option>
									<option value="Single">More than 30 lakhs</option>
						</select>
						&nbsp; &nbsp; &nbsp;

						<span style="font-size: 18px;">Address Details:</span> 
						<input type="text" name="Address" id="Address" placeholder="Enter your Address....." required><br>

					<input type="submit"  value="Apply for loan"   required >
					<input type="checkbox">I Accept Terms and Conditions <br>
			</form>
		</div>
	</body>
</html>