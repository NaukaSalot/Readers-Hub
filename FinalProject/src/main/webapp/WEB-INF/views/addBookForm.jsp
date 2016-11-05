<%@page import="com.neu.readershub.DAO.CategoryDAO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%
//get the category list
		CategoryDAO categorydao=new CategoryDAO();
      
        java.util.List categoryList = categorydao.list();
        pageContext.setAttribute("categories", categoryList);
%>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title> Add New Book </title>
		<meta name="viewport" content="width=divice-width, initial-scale=1.0"/>
		<link rel="stylesheet" href="./resources/css/add-bk.css"/>
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
			margin: 195px 100px 269px 100px;
		}
		table {
			margin: auto;
			text-align: left;
		}
		td {
			padding: 1%;
		}
		th {
			text-align: center;
			padding: 2%;
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
					<li><a href="#" class="current">Add Books</a></li>
					<li><a href="home.jsp">Home</a></li>
					
					<li><a href="contactus.jsp">Contact Us</a></li>
					<li><a href="home.jsp">Sign Out</a></li>
				</ul>
			</nav>
			</header>
			
			<div id="User">		
			<h2>  Posting a New Book</h2><br><br>
			<form:form action="addbooks.htm" commandName="books" method="post" >
             
            <table>

                <tr> 
                    <td><b>Category:</b></td>
                    <td>
                        <form:select path="category_name">
                            <c:forEach var="categ" items="${categories}">
                                <form:option value="${categ.categoryName}"/>
                            </c:forEach>
                        </form:select>
                    </td>
                </tr>

                <tr>
                    <td><b>Book Name:</b></td>
                    <td><form:input path="bookName" id="bk" placeholder="Book Name" size="30" pattern="[a-z A-Z]{1,100}$" required="required" maxlength="20" autocomplete="Off" onMouseDown="active();" onblur="inactive();"/> <font color="red"><form:errors path="bookName"/></font></td>
                </tr>

                <tr>
                    <td><b>Book Price:</b></td>
                    <td><form:input path="bookPrice" id="price" placeholder="0.00" pattern="[0-9]{1,10}$" required="required" size="30" /> <font color="red"><form:errors path="bookPrice"/></font></td>
                </tr>

                <tr>
                    <td><b>Book Description:</b></td>
                    <td><form:input path="bookDesc" id="desc" placeholder="Book Description" pattern="[a-z A-Z]{1,100}$" required="required" size="30" /> <font color="red"><form:errors path="bookDesc"/></font></td>
                </tr>
              
                
                <tr>
                    <td><b>Rewards:</b></td>
                    <td><form:input path="rewards" id="reward" placeholder="0.00" pattern="[0-9]{1,10}$" required="required" size="30" /> <font color="red"><form:errors path="rewards"/></font></td>
                </tr>
                
         

                <tr>
                    <th colspan="2"><input type="submit" id="btn1" value="Add Book!"/></th>

                </tr>
            </table>

        </form:form>
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