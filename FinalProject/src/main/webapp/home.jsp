
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title> Readers Hub </title>
		<meta name="viewport" content="width=divice-width, initial-scale=1.0"/>
		<link type="text/css" rel="stylesheet" href="./resources/blueberry.css"  />
		<link rel="stylesheet" href="./resources/css/style-search.css"/>
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
		h4{
			float: center;
			text-align: center;
			text-decoration: underline;
			font-size: 120%;
			line-height: 70%;			
		}
		h3{
			float: center;
			text-align: left;
			text-decoration: underline;			
			font-size: 130%;
			line-height: 70%;
		}
		h2{
			float: left;
			text-align: left;
			color: #FACC2E;
			text-decoration: underline;			
			font-size: 130%;
			line-height: 70%;
		}
		p{
			text-align: center;
			float: left;
			padding: 1%;
		}
		img{
			text-align: center;
			max-width: 100%;
			height: auto;
			width: auto;
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
		}
		#menu-icon {
			display: hidden;
			width: 40px;
			height: 40px;
			background: url(Images/icon.png) center;
		}
		a:hover#menu-icon {
			border-radius: 4px 4px 0 0;			
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
		#doc {
			margin: 40px 0;			
		}
		#content {
			margin: 0 auto;
			max-width:	1140px;
			margin-top: 150px;			
		}
		#search{
			float: right;
			padding: 2px 2px 2px 0;
		}
		.blueberry {
			max-width: 760px;
			max-height: 760px;
			margin: 110px;			
		}
		section{
			width:25%
			float: left;
			margin: 2% 2%;
			text-align: center;			
		}
		footer{
			background: #333333;
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
		}
		ul.social li img {
			height: 50px;
		}
		footer.second {
			border-top: 1.5px solid#fff;
			background-color: #333333;
			max-height: 50px;
			text-align: left;
		}
		
		/*-------------------------Section----------------------*/
		
		section img{
			text-align: left;
			padding: 15px;
			max-width: 200px;
			max-height: 300px;
		}
		
		/*-------------------------Page Scaling-----------------*/
		@media screen and (max-width: 478px) {
			body {
				position: absolute;
			}			
		}
		@media screen and (max-width: 780px) {
			header {
				position: absolute;
			}
			#menu-icon {
				display: inline-block;
			}
			nav ul, nav:active ul {
				display: none;
				position: absolute;
				padding: 20px;
				background: #405580;
				border: 1.5px solid#fff;
				right: 20px;
				top: 60px;
				width: 50%;
				border-radius: 2px 0 2px 2px;
			}
			nav li {
				text-align: center;
				width: 100%;
				padding: 10px 0px;
				margin: 0;				
			}
			nav:hover ul{
				display: block;
			}
			section {
				float: left;
				width: 100%;
				margin: 0;
				padding: 0;
			}
		}
		
		
		</style>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
		<script src="./resources/jquery.blueberry.js"></script>
		<script>
		$(window).load(function() {
		$('.blueberry').blueberry();
		});
		</script>
		<script type="text/javascript">
			function active(){
				var searchBar = document.getElementById('searchBar');
				if(searchBar.value == 'Search...'){
					searchBar.value = ''
					searchBar.placeholder = 'Search...'
				}
			}
			function inactive(){
				var searchBar = document.getElementById('searchBar');
				if(searchBar.value == ''){
					searchBar.value = 'Search...'
					searchBar.placeholder = ''
				}
			}
		</script>
		</head>
	<body>
		<header>
		<!-- <div id="search">
			<form action="search.php" method"post">
				<input type="text" id="searchBar" placeholder="" value="Search..." maxlength="15" autocomplete="Off" onMouseDown="active();" onblur="inactive();"/><input type="submit" id="searchbtn" value="Go!" />
				<h2> Readers Hub <h2> 
			</form>
		</div> -->
		<center><color:black><h1>Readers Hub</h1></color:black></center>
		<div>
			<a href="#" id="logo"><br></a>
			
			<nav>
				<a href="#" id="menu-icon"> </a>
				<ul>
					<li><a href="home.jsp" class="current">Home</a></li>
				<!-- 	<li><a href="#">Trending</a></li>	 -->				
					<li><a href="displaybooks.htm">All Books</a></li>
					
					<li><a href="contactus.jsp">Contact Us</a></li>
					<li><a href="login.htm">Sign In</a></li>
					<li><a href="register.htm">Register</a></li>
					
				</ul>
			</nav>
			</div>
		</header>
		
		<div id="doc">
			<div id="content">
				<div class="blueberry">
					<ul class="slides">
						<li><img src="./resources/Images/book-1.jpg" alt="FICTION BOOKS" title=" FICTION BOOKS" /></li>
						<li><img src="./resources/Images/book-2.jpg" alt="MUCIS BOOKS" title=" MUSIC BOOKS" /></li>
						<li><img src="./resources/Images/book-3.png" alt="PHOTOGRAPHY BOOKS" title=" PHOTOGRAPHY BOOKS" /></li>
						<li><img src="./resources/Images/book-4.jpg" alt="TRAVEL BOOKS" title=" TRAVEL BOOKS" /></li>
					</ul>
				</div>
			</div>
		</div>
		<section>
				<h4><b>New Release</b></h4><br>
				<img src="./resources/Images/New/n1.jpg" />
				<img src="./resources/Images/New/n2.jpg" />
				<img src="./resources/Images/New/n3.jpg" />
				<img src="./resources/Images/New/n4.jpg" />
				<img src="./resources/Images/New/n5.jpg" />
				<img src="./resources/Images/New/n6.jpg" />
				<img src="./resources/Images/New/n7.jpg" />
				<img src="./resources/Images/New/n8.jpg" />
				<img src="./resources/Images/New/n9.jpg" />
				<img src="./resources/Images/New/n10.jpg" />			
				
		</section>
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
			<p>©Copyright - Nauka Salot</p>
		</footer>
			
	</body>
</html>