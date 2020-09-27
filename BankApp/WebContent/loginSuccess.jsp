<!DOCTYPE html>
<html>
	<head>
	<style>
	
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
	margin-right: 3px;
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

footer a
{
 color: white;
 padding: 73px 30px;
}

#nav {
	font-family:  'Slabo 27px', serif;
}

.homered{
 	background-color: red;
 	padding: 15px 10px 20px 10px;
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
 
 .login-box
 {
	width: 320px;
	height: 420px;
	background: rgba(0, 0, 0, 0.5);
	color: PowderBlue;
	top: 53%;
	left: 20%;
	position: absolute;
	transform: translate(-50%,-50%);
	box-sizing: border-box;
	padding: 73px 30px;
	font-family: 'Montserrat', sans-serif;
}
.man{
	width: 100px;
	height: 100px;
	border-radius: 50%;
	position: absolute;
	top: -50px;
	left: calc(50% - 50px);
}

h2{
	margin-left: 22px;
	padding: 0 0 0px;
	text-align: left;
	font-size: 23px;
	color:white;
	font-family: ;
}

.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 50px;
    text-align: left;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    margin: 29px 170px;
    cursor: pointer;
    margin-left: 29px;
    width:100px;
    height:90px;
}
.button:hover
{
	cursor: pointer;
	background: yellow;
	color: #000;
}

.login-box p{
	margin: 0;
	padding: 0;
	font-weight: bold;


}

.login-box input{
	width:100%;
	margin-bottom: 20px;
}

.login-box input[type="text"], input[type="password"]
{
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
}

.login-box input[type="submit"]
{
	border: none;
	outline: none;
	height: 40px;
	background: 	#87CEFA;
	color: #00f;
	font-size: 18px;
	border-radius: 20px;

}

.login-box input[type="submit"]:hover
{
	cursor: pointer;
	background: #39dc79;
	color: #000;
}


.login-box a{
	text-decoration: relative;
	font-size: 15px;
	margin: 1px;
	color: #87CEFA;
}

.login-box a:hover
{
	color: #39dc79;
}

</style>
<meta charset="ISO-8859-1">
<title>Bank App</title>
		
	</head>
	<body>
		<header>
			<nav>
				<h1>WELCOME TO INTERNET BANKING</h1>
				<ul id="nav">
					<li> <a class="homeblack" href="index.html">HOME </a>  </li>
					<li> <a class="homered" href="#">CUSTOMER SERVICES</a> </li>
					<li> <a class="homeblack" href="#">ABOUT US</a> </li>
					<li> <a class="homeblack" href="#">CONTACT US</a> </li>
					<li> <a class="homeblack" href="Logout1">LOGOUT</a>
				</ul>
			</nav>
		</header>
		<div class="divider"></div>
		<!-- <div class="fwimage1"></div>
		-->
		
		<div class="logo"></div>
		<h2> Login Successfull!! <% out.println("Welcome "+session.getAttribute("name")); %> </h2>	
		

		<div class="bottom"> 
		
		 <a href="Balance" class="button">Check here for Balance Enquiry</a> 
		
		 <a href="Transfer.jsp" class="button">Check here to Transfer Amount</a> 

		 <a href="changePass.jsp" class="button">Check here to change Password</a>	<br>

 		 <a href="GetStatement" class="button">Check here to get Statement</a> 

 		 <a href="ApplyLoan.jsp" class="button">Check here to Apply for Loan</a> 
 		 
 		
 		 
 		 </div>
	</body>
	</html>