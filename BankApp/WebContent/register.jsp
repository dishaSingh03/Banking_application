<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>BANK APP</title>

<style type="text/css">
@charset "ISO-8859-1";
@import url('https://fonts.googleapis.com/css?family=Oswald:400,500');
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

header
{
	background: black;
	color: white;
	padding: 6px 0px 5px 40px;
	height: 50px;
}

header h1
{
	display: inline;
	font-family: 'Oswald', sans-serif;
	font-weight: 100;
	font-size: 26px;
	float: left;
	margin-top: 0px;
	margin-right: 5px;
	padding: 6px 0px 0px 0px ;

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
 	padding: 15px 45px 22px 40px;
 	text-align: center;

}

.divider{
 	background-color: red;
 	height: 5px;
 }
 
 .homeblack:hover {
 	background-color: red;
 	padding: 15px 10px 20px 10px;
 }
 

h2{
	margin-left: 22px;
	padding: 0 0 0px;
	text-align: left;
	font-size: 26px;
	color:white;
	font-family: ;
}

.transfer{
	border-radius: 5px;
	background: black;
	padding: 20px;
	width: 850px;
	margin:auto;
	color: #fff;
	font-size: 16px;
	font-family: Verdana;
	margin-top: 100px;
	opacity: 0.7;
	height: 480px;
	padding: 41px 40px ;
	position: absolute;
	transform: translate(-50%,-50%);
	top: 39%;
	left: 45%;
	right: 90%;

}

.transfer h2{
 text-align:left;
 margin: 0;
 padding: 0px ;
 font-family: 'Oswald', sans-serif;
 font-size: 22px;
 color: PowderBlue;
}

.transfer input, select{
	padding: 12px 30px;
	margin:10px 0;
	display:inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 18px;
	background:black;
	color:white;
	opacity: 0.7;
}

.transfer input[type=submit] {
	width: 80%;
	border: absolute;
	cursor: pointer;
	
}
.transfer input[type="submit"]:hover
{
	cursor: pointer;
	background: #39dc79;
	color: #000;
}

</style>
</head>
<body>
	<header>
			<nav>
				<h1>WELCOME TO INTERNET BANKING</h1>
				<ul id="nav">
					<li> <a class="homered" href="index.html">HOME </a>  </li>
					<li> <a class="homeblack" href="#">CUSTOMER SERVICES</a> </li>
					<li> <a class="homeblack" href="#">ABOUT US</a> </li>
					<li> <a class="homeblack" href="#">CONTACT US</a> </li>
					
				</ul>
			</nav>
	</header>
		<div class="divider"></div>
		<!-- <div class="fwimage1"></div>
		-->
		<div class="transfer">
		 <form action="Register"> 
				<h2>CUSTOMER REGISTRATION </h2>
				<hr>
					 <span style="font-size: 18px;">NAME:</span>
					<input type="text" name="name" id="name" placeholder="Enter Name..." required> <br>
					
					<span style="font-size: 18px;">EMAIL:</span>
					<input type="text" name="email" id="name" placeholder="Enter Email..." required><br> 
					
					<span style="font-size: 18px;">ACCNO:</span>
					<input type="text" name="accNo" id="name" placeholder="Enter Account Number..." required>
					
					<span style="font-size: 18px;">BALANCE:</span>
					<input type="text" name="balance" id="name" placeholder="Enter Balance..." required><br> 
				
				
				<span style="font-size: 18px;">USERNAME:</span>
				<input type="text" name="username" id="fname" placeholder="Enter Username..." required>
				
				 <span style="font-size: 18px;">PASSWORD:</span>
					<input type="password" name="password" placeholder="Enter Password..." required><br> 

				<span style="font-size: 18px;">CONFIRM PASSWORD:</span>
					<input type="password" name="confPass" placeholder="Enter Confirm Password.." required> <br>
					
					
					<input type="submit" value="Register" required >
					</form> 
					</div>
</body>
</html>