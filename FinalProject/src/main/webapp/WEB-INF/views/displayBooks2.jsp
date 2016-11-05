<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		
		#List {
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
		<div>
			<a href="#" id="logo"><br></a>
			<nav>
				<a href="#" id="menu-icon"> </a>
				<ul>
					
				<!-- 	<li><a href="#">Trending</a></li>	 -->				
					<li><a href="displaybooks.htm">All Books</a></li>
					
					<li><a href="contactus.jsp">Contact Us</a></li>
					<li><a href="logout.htm">Sign Out</a></li>
					<li><a href="vieworder.htm">View Order</a></li>
				
				
				</ul>
			</nav>
			</div>
		</header>
		<div id="List">
<h1>LIST OF BOOKS</h1>
        <table style="border-collapse: separate; border-spacing: 20px; border:solid; border:1px;">
            <tr>
                <td><b>BOOK CATEGORY</b></td>
                <td><b>BOOK NAME</b></td>
                <td><b>BOOK PRICE</b></td>
                <td><b>BOOK DESCRIPTION</b></td>
                <td><b>BOOK REWARDS</b></td>
                <td><b>ADD TO CART</b></td>
            </tr>
            <c:forEach var="bk" items="${books}">
                <tr>
                	<td>${bk.category_name}</td>
                    <td>${bk.bookName}</td>
                    <td>${bk.bookPrice}</td>
                    <td>${bk.bookDesc}</td>
                    <td>${bk.rewards}</td>
                    <td><a href="addtocart.htm?id=${bk.bookID}&action=addtocart">Add to Cart</a></td>
                </tr>
            </c:forEach>
        </table>
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
			<p>ęCopyright - Nauka Salot</p>
		</footer>
			
	</body>
</html>




