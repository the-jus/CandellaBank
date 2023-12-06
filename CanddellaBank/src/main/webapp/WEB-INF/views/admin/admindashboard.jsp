<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Customer Sign In</title>
<style>
* {
	font-family: Arial, sans-serif;
}

body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background-color: #f7f7f7;
	/*background-image: linear-gradient(-225deg, #FFFEFF 0%, #D7FFFE 100%);*/
	/* background-image: linear-gradient(15deg, #13547a 0%, #80d0c7 100%); */
}



h2 {
	font-size: 1.5rem;
	font-weight: bold;
	margin-bottom: 20px;
}


header {
	color: white;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px;
	background-color: #1E3B4D;
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
	height:50px;
}

nav ul{
list-style: none;
margin: 0;
padding: 0;
display: flex;
}
nav li{
margin: 0 10px 0 40px;
}

nav a{
color:white;
text-decoration: none;
font-weight: bold;
}


nav a:hover{
color:black;}

footer {
  background-color: #1E3B4D;
  color: #fff;
  padding: 40px 0;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
}

.row {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

.col-md-4 {
  width: 33.33%;
  padding: 0 15px;
}

h3 {
  margin-top: 0;
  font-size: 24px;
}

p {
  font-size: 14px;
  line-height: 1.5;
}

ul {
  list-style: none;
  padding-left: 0;
}

li {
  font-size: 14px;
  line-height: 1.5;
  margin-bottom: 10px;
}

.social-icons li {
  display: inline-block;
  margin-right: 10px;
}

.social-icons a {
  color: #fff;
  font-size: 20px;
  transition: all 0.3s;
}

.social-icons a:hover {
  transform: translateY(-3px);
}

{
	font-family: Arial, sans-sherif;
}

body {
	background-image: linear-gradient(-225deg, #FFFEFF 0%, #D7FFFE 100%);
}

input[type="submit"] {
	    padding: 10px;
	    border: none;
	    border-radius: 5px;
	    background-color: #007bff;
	    color: #fff;
	    font-size: 1rem;
	    cursor: pointer;
}

.tab {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	align-items: center;
	margin-bottom: 20px;
}

/* Style the buttons that are used to open the tab content */
.tab button {
	background-color: #236689;
	color: white;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 15px 30px;
	border-radius: 0px 0px 0 0;
	font-size: 18px;
	font-weight: bold;
	transition: 0.3s;
	margin-right: 10px;
	margin-bottom: 10px;
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}

/* Change background color of buttons on hover */
.tab button:hover {
	background-color: #246588;
}

/* Create an active/current tablink class */
.tab button.active {
	background-color: #fff;
	color:#1B82BA;
}

/* Style the tab content */
.tabcontent {
	display: none;
	padding: 30px;
	border: 1px solid #ccc;
	border-radius: 0 0px 0px 0px;
	background-color: #fff;
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}

.tabcontent h2 {
	margin-top: 0;
}

header {
	color: white;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px;
	background-color: #1E3B4D;
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
}

.bname h1 {
	height: 40px;
	padding: 0 10px 0 10px;
}

nav ul {
	list-style: none;
	margin: 0;
	padding: 0;
	display: flex;
}

nav li {
	margin: 0 10px 0 40px;
}

nav a {
	color: white;
	text-decoration: none;
	font-weight: bold;
}

nav a:hover {
	color: black;
}
footer { 
  background-color: #1E3B4D;
  color: #fff;
  padding: 40px 0;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
}

.row {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

.col-md-4 {
  width: 33.33%;
  padding: 0 15px;
}

h3 {
  margin-top: 0;
  font-size: 24px;
}

p {
  font-size: 14px;
  line-height: 1.5;
}

ul {
  list-style: none;
  padding-left: 0;
}

li {
  font-size: 14px;
  line-height: 1.5;
  margin-bottom: 10px;
}

.social-icons li {
  display: inline-block;
  margin-right: 10px;
}

.social-icons a {
  color: #fff;
  font-size: 20px;
  transition: all 0.3s;
}

.social-icons a:hover {
  transform: translateY(-3px);
}
.welcome {
	color: #236689;
font-size: 50px;
}

/* Latest Changes */
@import url('https://fonts.googleapis.com/css?family=Source+Code+Pro:200');

body  {
    background-image: url('https://static.pexels.com/photos/414171/pexels-photo-414171.jpeg');
  background-size:cover;
        -webkit-animation: slidein 100s;
        animation: slidein 100s;

        -webkit-animation-fill-mode: forwards;
        animation-fill-mode: forwards;

        -webkit-animation-iteration-count: infinite;
        animation-iteration-count: infinite;

        -webkit-animation-direction: alternate;
        animation-direction: alternate;
}

@-webkit-keyframes slidein {
from {background-position: top; background-size:3000px; }
to {background-position: -100px 0px;background-size:2750px;}
}

@keyframes slidein {
from {background-position: top;background-size:3000px; }
to {background-position: -100px 0px;background-size:2750px;}

}



.bspace
{
  display: flex;
  align-items: center;
  justify-content: center;
  position: absolute;
  margin: auto;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  background: rgba(75, 75, 250, 0.3);
  border-radius: 3px;
}
.bspace h1{
  text-align:center;
  color:white;
  font-family: 'Source Code Pro', monospace;
  text-transform:uppercase;
}

</style>
</head>
<body>
	<header>
		<div class="bname">
			<h1>ZBank</h1>
		</div>
		<nav>
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Contact</a></li>
				<li><a href="showAdminLog">Logout</a></li>
			</ul>
		</nav>
		
	</header>
	<br>
<h1 class="welcome" align="center">Welcome Admin</h1>
	<div class="tab">
	<button class="tablinks" onclick="CreateRates()">Create Rates</button>
    <button class="tablinks" onclick="CreateService()">Create Service</button>
    <button class="tablinks" onclick="CreateProduct()">Create Product</button>
    <button class="tablinks" onclick="CreateAccount()">Create Account</button>

	<button class="tablinks" onclick="CreateCustomer()">Create Customer</button>



<button class="tablinks" onclick="ViewAllRates()">View All Rates</button>
<button class="tablinks" onclick="ViewAllServices()">View All Services</button>
<button class="tablinks" onclick="ViewAllProducts()">View All Products</button>

<button class="tablinks" onclick="ViewAllCustomers()">View All Customers</button>

<button class="tablinks" onclick="AddTransactionFile()">Upload Transaction</button>



	</div>
	<script>
function CreateService() {
  window.location.href = 'showServiceConfig';
}
</script>
	<script>
function CreateCustomer() {
  window.location.href = 'customerSignup';
}
</script>
<script>
function CreateAccount() {
  window.location.href = 'showAccountConfig';
}
</script>

<script>
function CreateProduct() {
  window.location.href = 'showProductConfig';
}
</script>
<script>
function CreateRates() {
  window.location.href = 'showrateconfig';
}
</script>
<script>
function AddTransactionFile() {
  window.location.href = 'readTransaction';
}
</script>
<script>
function ViewAllProducts() {
  window.location.href = 'viewProducts';
}
</script>
<script>
function ViewAllServices() {
  window.location.href = 'viewServices';
}
</script>
<script>
function ViewAllCustomers() {
  window.location.href = 'viewCustomers';
}
</script>
<script>
function ViewAllRates() {
  window.location.href = 'viewRates';
}
</script>
	<br/>
	</body>
	<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-4">
        <h3>About ZBank</h3>
        <p>ZBank is a leading bank in India providing innovative financial solutions to individuals and businesses.</p>
      </div>
      <div class="col-md-4">
        <h3>Contact Us</h3>
        <ul>
          <li><i class="fas fa-map-marker-alt"></i> 123 Main Street, Mumbai, India</li>
          <li><i class="fas fa-phone"></i> +91 123-456-7890</li>
          <li><i class="fas fa-envelope"></i> info@zbank.com</li>
        </ul>
      </div>
      <div class="col-md-4">
        <h3>Follow Us</h3>
        <ul class="social-icons">
          <li><a href="#"><i class="fab fa-facebook"></i></a></li>
          <li><a href="#"><i class="fab fa-twitter"></i></a></li>
          <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
        </ul>
      </div>
    </div>
  </div>
</footer>

</html>
	