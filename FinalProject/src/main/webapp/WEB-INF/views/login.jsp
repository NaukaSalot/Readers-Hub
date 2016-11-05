<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title> Login! </title>
		<meta name="viewport" content="width=divice-width, initial-scale=1.0"/>
		<link rel="stylesheet" href="./resources/css/login.css"/>
		<style type="text/css">
		* {
			margin: 0;
			border: 0;
			padding: 0;
		}
		body {
			background: #f0f0f1;
			font: 14px/20px arial, san-serif;
			color: #555;
			margin: 0;
		}
		#User {
			float: center;
			text-align: center;
			margin: 195px 100px 269px 100px;
		}
		a{
			color: #FACC2E;
			text-decoration: none;
			font-weight: bold;
		}
		a:hover{
			color: #fff;
			text-decoration: underline;
		}
		h4{
			float: center;
			text-align: center;
			text-decoration: underline;
			font-size: 120%;
			line-height: 70%;			
		
		}
		header{
			background: #8181F7;
			width: 100%;
			height: 100px;
			position: fixed;
			top: 0;
			left: 0;
			z-index: 100;
			opacity: 0.90;
		}
		#logo {
			margin: 20px;
			float: left;
			width: 200px;
			height: 80px;
			background: url(Images/book-logo.png) no-repeat center;
		}
		nav{
			float: right;
			padding: 0;
			margin:25px 0 0 0;
		}
		ul{
			list-style: none;			
		}
		nav ul li {
			display: inline-block;
			float: left;
			padding: 10px;
		}
		.current {
			color: #FACC2E;
			text-decoration: underline;
		}
		footer{
			background: #333333;
			margin: -200px 0 0 0;
			width: 100%;
			overflow: hidden;
			opacity: 0.70;			
		}
		footer p, footer h4 {
			color: #FFF;
		}
		footer p a {
			color: #fff;
			text-decoration: none;
		}
		ul.social li{
			display: inline;
			text-align: center;
			float: center;
		}
		ul.social li img {
			height: 50px;
		}
		footer.second {
			border-top: 1.5px solid#fff;
			background-color: #333333;
			margin: 0;
			max-height: 50px;
			text-align: left;
		}
		
		</style>
		<script type="text/javascript">
			function active(){
				var Login = document.getElementById('Login');
				if(searchBar.value == 'Username')
				{
					searchBar.value = ''
					searchBar.placeholder = 'Username'
				}
			}
			function inactive(){
				var Login = document.getElementById('Login');
				if(searchBar.value == ''){
					searchBar.value = 'Username'
					searchBar.placeholder = ''
				}
			}
		</script>
		
		</head>
	<body>
		<header>
			<a href="#" id="logo"><br></a>
			<nav>
				
				<ul>
					<li><a href="login.htm" class="current">Sign In</a></li>
					<li><a href="home.jsp">Home</a></li>
									
					<li><a href="displaybooks.htm">All Books</a></li>
				
					<li><a href="contactus.jsp">Contact Us</a></li>
					<li><a href="register.htm">Register</a></li>
					
				</ul>
			</nav>
			</header>
			<div id="User">	
			<form:form action="login.htm" commandName="person" method="post">
			
			<form:input path="userName" id="Login" placeholder="Username" required="required" maxlength="20" autocomplete="Off" onMouseDown="active();" onblur="inactive();" /><font color="red"><form:errors path="userName"/></font><br><br>
			<form:input type="password" path="password" id="p" placeholder="Password" required="required" /><font color="red"><form:errors path="password"/></font><br><br>
			<input type="submit" id="btn1" value="Login" /><br><br>
			</form:form>
			<li><a href="register.htm"><h3>Sign Up</h3></a></li>
			
			<%-- <form action="Register.html" method="post">
			<br><input type="submit" id="btn2" value="Sign Up Here!" />
				 --%>
			</div>
		<footer>
			<section>
				<h3><b>The Meeting Point</b></h3>
				<p><b>About Us<br>
				Our Team<br>
				Our Mission<br>
				Our Vission<br>
				Careers </b></p>
				<h4><b>Connect With Us</b></h4>
				<ul class="social">
					<li><a href="https://www.facebook.com/"><img src="./resources/Images/fb-logo.jpg" /></a></li>
					<li><a href="https://twitter.com/"><img src="./resources/Images/ttr.png" /></a></li>
				</ul>				
			</section>
		</footer>
		<footer class="second">
			<p>©Copyright - Nauka Salot</p>
		</footer>			
	</body>
</html>