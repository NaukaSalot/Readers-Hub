
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title> Add Items </title>
		<meta name="viewport" content="width=divice-width, initial-scale=1.0"/>
		<link rel="stylesheet" href="./resources/css/add-items.css"/>
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
			text-align: center;
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
					<li><a href="#" class="current">Admin</a></li>
					<li><a href="home.jsp">Home</a></li>
					
					<li><a href="contactus.jsp">Contact Us</a></li>
					<li><a href="home.jsp">Sign Out</a></li>
				</ul>
			</nav>
			</header>
			<div id="User">		
			<h1>Welcome Admin! Make Your Selection</h1><br><br>

<a href="addcategory.htm" target="contents"/><h2>Add Category</h2><br><br>
  <a href="addbooks.htm" target="contents"/><h2>Add Books</h2><br><br>

 <a href="listbooks.htm" target="contents"/><h2>List Books</h2><br><br>
			</div>
		<footer>
			<section>
				<h3><b>Readers Hub</b></h3>
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
			<p>©Copyright - Nauka Salot, 2016</p>
		</footer>			
	</body>
</html>