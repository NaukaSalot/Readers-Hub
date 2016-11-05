
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
                    <li><a href="#" class="current">Payment</a></li>
                   
                    
                    <li><a href="contactus.jsp">Contact Us</a></li>
                   
                </ul>
            </nav>
            </header>
            <div id="User">        
            <form action="payment.htm" method="post">
            <table>
           <!--  <tr>            
            <td><b>Order I'd: </b></td>
            <td><input type="text" id="name" disabled="" maxlength="20" autocomplete="Off" onMouseDown="active();" onblur="inactive();" /></td>
            </tr> -->
            <tr>
            <th colspan="7"><h2> Shipping Address </h2></th>
            </tr>
            <tr></tr>
            <tr>            
            <td><b>First Name: </b></td>
            <td><input type="text" id="name" placeholder="First Name" pattern="[a-zA-Z]{1,100}$" required="required" maxlength="20" autocomplete="Off" onMouseDown="active();" onblur="inactive();" /></td>
            <td></td><td></td><td></td>
            <td><b>Last Name: </B></td>
            <td><input type="text" id="last" placeholder="Last Name" pattern="[a-zA-Z]{1,100}$" required="required" /></td>
            </tr>
            <tr></tr><tr></tr><tr></tr><tr></tr>
            <tr>
            <td><b>Street Address: </b></td>
            <td><input type="text" id="street" placeholder="Street Address" pattern="[0-9 a-zA-Z]{1,100}$" required="required" /></td>
            <td></td><td></td><td></td>
            <td><b>City: </b></td>
            <td><input type="text" id="city" placeholder="City" pattern="[a-zA-Z]{1,100}$" required="required" /></td>
            </tr>
            <tr></tr><tr></tr><tr></tr><tr></tr>
            <tr>
            <td><b>State: </b></td>
            <td><input type="text" id="state" placeholder="State" pattern="[a-zA-Z]{1,100}$" required="required" /></td>
            <td></td><td></td><td></td>
            <td><b>Zip Code: </b></td>
            <td><input type="text" id="zip" placeholder="Zip code" pattern="[0-9]{5}$" required="required" /></td>
            <tr></tr><tr></tr><tr></tr><tr></tr>
            </tr>
            <tr>
            <th colspan="7"> <h2> Payment </h2></th>
            </tr>
            <tr>
            <th colspan="2"><b>Card Type: </b><input type="radio" name="card" value="credit" checked/> Credit <input type="radio" name="card" placeholder="Debit" /> Debit </th>
            </tr>
            <tr>
            <td><b>Card Number: </b></td>
            <td><input type="text" id="email" placeholder="Card Number" pattern="[0-9]{12}$" required="required" /></td>
            <td></td><td></td><td></td>
            <tr></tr><tr></tr><tr></tr><tr></tr>
            </tr>
            <tr>
            <td><b>Expiry Date:</b></td>
            <td><input type="phone" id="phone" placeholder="MM / YYYY" pattern="^[0-9]{1,2}+/+[0-9]{4}$" required="required" /></td>
            <tr></tr><tr></tr><tr></tr><tr></tr>
            </tr>
            <tr>
            <td><b>CVV: </b></td>
            <td><input type="text" id="user" placeholder="Enter Cvv" pattern="[0-9]{3}$" required="required" /></td>
            <td></td><td></td><td></td>
            <tr></tr><tr></tr><tr></tr><tr></tr>
            </tr>
            <tr>
            <th colspan="7"><input type="submit" id="btn1" value="Submit"/></th>
            </tr>
            </table>
            </form>    
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