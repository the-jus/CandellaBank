<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
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
			</ul>
		</nav>

	</header>
	<br>
	<table class="services-table">
  <thead>
    <tr>
      <th class="service-code">Customer Code</th>
      <th class="service-name">Customer Name</th>
      <th class="service-name">Email</th>
      <th class="view-accounts"> Account Number</th>
      <th class="service-name"></th>
      <th class="service-name"></th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="customer" items="${customerList}">
      <tr>
        <td class="service-code">${customer.customerId}</td>
        <td class="service-name">${customer.firstName}</td>
        <td class="service-name">${customer.email}</td>
        <td class="service-name">${customer.accountNumber}</td>
        <td class="service-name"><a href="updateCustomer/${customer.customerId}">Update</a></td>
        <td class="service-name"><a href="deleteCustomer/${customer.customerId}">Delete</a></td>
      </tr>
  </c:forEach>
  </tbody>
</table>
<br>
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

<style>
* {
	font-family: Arial, sans-serif;
}

body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background-color: #f7f7f7;
	background-image: linear-gradient(-225deg, #FFFEFF 0%, #D7FFFE 100%);
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
  body {
    background-color: #f2f2f2;
  }
  .services-table {
    width: 80%;
    margin: 0 auto;
    border-collapse: collapse;
    border: 1px solid #ddd;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
  }
  .service-code {
    color: #000000;
    font-weight: bold;
    background-color: #f2f2f2;
    padding: 10px 20px;
    text-align: center;
    border-right: 1px solid #ddd;
  }
  .service-name {
    color: #333;
    font-weight: bold;
    background-color: #f2f2f2;
    padding: 10px 20px;
    text-align: left;
  }
  .services-table th {
    font-size: 20px;
    text-align: center;
    background-color: #194764;
    color: #fff;
    padding: 15px;
  }
  .services-table td {
    font-size: 16px;
    border-bottom: 1px solid #ddd;
  }
</style>
