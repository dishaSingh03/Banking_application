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
		<h2>Statement Details: </h2>
			
	 	<h3> <% out.println("Details: "+session.getAttribute("al")); %> </h3> <br>
	 	
		
			
		</div>
	</body>
</html>