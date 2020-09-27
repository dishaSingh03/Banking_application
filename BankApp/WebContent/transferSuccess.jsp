<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
 

h2{
	margin-left: 22px;
	padding: 0 0 0px;
	text-align: left;
	font-size: 26px;
	color:white;
	font-family: ;
}
.loginAgain
{
	margin-left: 22px;
	padding: 0 0 0px;
	text-align: left;
	font-size: 24px;
	color: white;
	font-family: ;
}
.loginAgain a:hover
{
	color: #39dc79;
}
</style>
<meta charset="ISO-8859-1">
<title>BANK APP</title>
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
		<h2> Transfer Successfully Done!! </h2>	
		<div class="loginAgain">
		<a href="loginSuccess.jsp" class="loginAgain">GO BACK</a>
		</div>

</body>
</html>