<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Books Added Successfully </title>
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
            float: center;
            text-align: center;
            margin: 275px 100px 355px 100px;
        }
        table {
            margin: auto;
            text-align: left;
        }
        td {
            padding: 0;
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
                   
                  
                   
                    <li><a href="contactus.jsp">Contact Us</a></li>
                    <li><a href="home.jsp">Sign Out</a></li>
                </ul>
            </nav>
            </header>
            <div id="User">        
            
            
          <!--   <table border="1" cellpadding="5" cellspacing="15" > -->
            <table  style="border-collapse: separate; border-spacing: 20px; border:solid; border:1px;">
            
            
            <h1> LIST OF ORDERS</h1><br><br>
            <tr>
                <td><b>ORDER ID</b></td>
                <td><b>ORDER DATE</b></td>
                
               
            </tr>
             <c:forEach var="order" items="${sessionScope.orderList}">
                
                <tr>
                    <td>${order.orderID}</td>
                    <td>${order.date}</td>
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
            <p>©Copyright - Nauka Salot, 2016</p>
        </footer>            
    </body>
</html>