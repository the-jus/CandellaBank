<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
*{
font-family : Arial,Sans-sherif;
margin:0;
padding:0;
box-sizing:border-box;
}

body{
background-image: linear-gradient(-225deg, #FFFEFF 0%, #D7FFFE 100%);
}

header {

	color:white;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px;
  background-color: #1E3B4D;
  box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
}

.bname h1 {
  height: 40px;
  padding :0 10px 0 10px;
}


nav ul {
  list-style: none;
  margin: 0;
  padding: 0;
  display: flex;
}

nav li {
  margin: 0 10px 0 40px ;
}

nav a {
color:white;
  text-decoration: none;
  font-weight: bold;
}

nav a:hover{
	color:black;
}



/*  user login */

		form {
			background-color: #fff;
			padding: 20px ;
			border-radius: 5px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
			width: 350px;
			margin: 50px 0 0 20px;
		}
		input[type="text"],
		input[type="password"] {
			width: 93%;
			padding:10px 10px 10px ;
			margin-bottom: 20px;
			margin-right: 20px;
			border: none;
			border-radius: 5px;
			box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
		}
		input[type="submit"] {
			width:50%;
			background-color: #007bff;
			color: #fff;
			padding: 10px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			transition: background-color 0.2s;
		}
		input[type="submit"]:hover {
			background-color: #0069d9;
			border-radius: 10px;
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



.card {
  /* Add shadows to create the "card" effect */
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  display:flex;
}



</style>


</head>
<body>
<header>
  <div class="bname">
    <h1>CBank</h1>
  </div>
  <nav>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Services</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </nav>
</header>
<center><h2> Transaction Details </h2></center>
<c:forEach var="transaction" items="${transactionRequestList}">
    <option value="${transaction.id}">${transaction.id}</option>
    <option value="${transaction.fees}">${transaction.fees}</option>
    <a href="generatebill/${transaction.id}">Generate bill</a>
    <option> </option>
</c:forEach>

<br><br>
<!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div>

</body>

<footer>
<div class="container">
<div class="row">
<div class="col-md-4">
<h3>About CanddellaBank</h3>
<p>CanddellaBank is a leading bank in India providing innovative financial solutions to individuals and businesses.</p>
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