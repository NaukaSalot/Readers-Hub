<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title> Login! </title>
        <meta name="viewport" content="width=divice-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="./resources/css/sign-up.css"/>
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
                    <li><a href="#" class="current">Register</a></li>
                    <li><a href="home.jsp">Home</a></li>
                   
                    <li><a href="contactus.jsp">Contact Us</a></li>
                    <li><a href="login.htm">Sign In</a></li>
                </ul>
            </nav>
            </header>
            <div id="User">        
           <h2>Register a New User</h2><br><br>
			<form:form action="register.htm" commandName="customer" method="post">
            <table>
            <tr>
            <b>Role: </b>
    		<input id="role" name="role" type="radio" value="Buyer" type="text" value="" size="30" checked/> <font color="red"></font>Buyer
    		<!--  <input id="role" name="role" type="radio" value="Seller" type="text" value="" size="30"/> <font color="red"></font>Seller<br><br>-->
    
            <td><b>First Name: </b></td>
            <td><form:input path="fname" size="30" id="name" placeholder="First Name" pattern="[a-zA-Z]{1,100}$" required="required" maxlength="20" autocomplete="Off" onMouseDown="active();" onblur="inactive();" /> <font color="red"><form:errors path="fname"/></font></td> 
			
            <td></td><td></td><td></td>
            <td><b>Last Name: </B></td>
            <td><form:input path="lname" size="30" id="last" placeholder="Last Name" pattern="[a-zA-Z]{1,100}$" required="required"/> <font color="red"><form:errors path="lname"/></font></td>
            </tr>
            <tr>
            <th colspan="2"><b>Gender: </b><input id="gender" name="gender" type="radio" value="Male" type="text" value="" size="30" checked/> <font color="red"></font>Male
			<input id="gender" name="gender" type="radio" value="Female" type="text" value="" size="30"/> <font color="red"></font>Female
			</th>
            </tr>
            <tr>
            <td><b>Email: </b></td>
            <td><form:input path="email" size="30" id="email" placeholder="Email Id" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="required"/> <font color="red"><form:errors path="email"/></font></td>
            <td></td><td></td><td></td>
            <td><b>Phone #: </b></td>
            <td><form:input path="phn" size="30" id="phone" placeholder="(___) ___-____" pattern="[0-9]{10}" required="required"/> <font color="red"><form:errors path="phn"/></font></td>
            </tr>
            <tr></tr><tr></tr><tr></tr><tr></tr>
            <tr>
            <td><b>Street Address: </b></td>
            <td><form:input path="address.street" size="30" id="street" placeholder="Street Address" pattern="[0-9 a-zA-Z]{1,100}$" required="required" /> <font color="red"><form:errors path="address.street"/></font></td>
            <td></td><td></td><td></td>
            <td><b>City: </b></td>
            <td><form:input path="address.city" size="30" id="city" placeholder="City" pattern="[a-zA-Z]{1,100}$" required="required"/> <font color="red"><form:errors path="address.city"/></font></td>
            </tr>
            <tr></tr><tr></tr><tr></tr><tr></tr>
            <tr>
            <td><b>State: </b></td>
            <td><form:input path="address.state" size="30" id="state" placeholder="State" pattern="[a-zA-Z]{1,100}$" required="required" /> <font color="red"><form:errors path="address.state"/></font></td>
            <td></td><td></td><td></td>
            <td><b>Zip Code: </b></td>
            <td><form:input path="address.zipcode" size="30" id="zip" placeholder="Zip code" pattern="[0-9]{5}" required="required"/> <font color="red"><form:errors path="address.zipcode"/></font></td>
            </tr>
            <tr></tr><tr></tr><tr></tr><tr></tr>
            <tr>
            <td><b>Username: </b></td>
            <td><form:input path="userName" size="30" id="user" placeholder="Enter Username" pattern="^[a-z0-9_-]{3,16}$" required="required"/> <font color="red"><form:errors path="userName"/></font></td>
            <td></td><td></td><td></td>
            <td><b>Password: </b></td>
            <td><form:password path="password" size="30" id="p" placeholder="Password" required="required" /> <font color="red"><form:errors path="password"/></font></td>
            </tr>
            <tr></tr><tr></tr><tr></tr><tr></tr>
            <tr>
            <th colspan="7"><input type="submit" id="btn1" value="Submit"/></th>
            </tr>
            </table>
        </form:form>	    
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
            <p>©Copyright - Nauka Salot, 2016</p>
        </footer>            
    </body>
</html>