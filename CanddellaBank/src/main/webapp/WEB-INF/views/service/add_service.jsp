<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Configure Rate</title>
<script type="text/javascript">
    function addTier() {
        var tierDiv = document.createElement("div");
        tierDiv.className = "tier-inputs";
        tierDiv.innerHTML = "<label>Lower Limit:</label><input type='number' name='min[]' required>" +
            "<label>Upper Limit:</label><input type='number' name='max[]' required>" +
            "<label>Rate:</label><input type='number' name='rate[]' required>" +
            "<button type='button' onclick='removeTier(this)'>Remove Tier</button>";
        document.getElementById("tierContainer").appendChild(tierDiv);
    }

    function removeTier(button) {
        button.parentNode.remove();
    }
</script>
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
	height: 50px;
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

h1 {
	text-align: center;
	margin-bottom: 50px;
}

.container1 {
    	border-radius: 25px 25px 25px 25px;
    	max-width: 1000px;
    	margin: 0 auto;
    	padding: 40px;
    	background-color: #fff;
    	margin: 0 auto;
    	padding: 40px;
    	background-color: #fff;
    	box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);

}

.rateType {
	margin-bottom: 20px;
}
.pricingMethodolgy {
	margin-bottom: 20px;
}


label {
	display: block;
	font-weight: bold;
	margin-bottom: 10px;
}

select {
	padding: 10px;
	width: 100%;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-bottom: 20px;
}



.btn {
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.btn:hover {
	background-color: #0069d9;
}
 .tier-inputs label {
        display: inline-block;
        width: 150px;
        text-align: right;

    }

    .tier-inputs input[type="number"] {
        width: 150px;
        left-margin:2px;
    }

    .tier-inputs button {
        margin-left: 110px;
    }
    form {
    	display: flex;
    	flex-direction: column;
    }

    .form-field {
    	display: flex;
    	flex-direction: column;
    	margin-bottom: 10px;
    }

    label {
    	font-size: 1rem;
    	font-weight: bold;
    	margin-bottom: 5px;
    }

    input[type="text"],[type="date"] {
    	padding: 10px;
    	border: none;
    	border-radius: 5px;
    	background-color: #f7f7f7;
    	font-size: 1rem;
    	margin-bottom: 10px;
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
			</ul>
		</nav>

	</header>
	<br>






	<h1>Add New Service</h1>
        <form  class="container1" action="addService" method="post">
            <label for="serviceCode">Service Code:</label>
            <input type="text" id="serviceCode" name="serviceCode" required><br>

            <label for="serviceName">Service Name:</label>
            <input type="text" id="serviceName" name="serviceName" required><br>

            <label for="serviceDescription">Service Description:</label>
            <textarea id="serviceDescription" name="serviceDescription" rows="5" cols="40" required></textarea><br>

            <label for="serviceOwner">Service Owner:</label>
            <input type="text" id="serviceOwner" name="serviceOwner" required><br>

            <label for="openingDate">Opening Date:</label>
            <input type="date" id="openingDate" name="openingDate" required><br>

            <label for="validityDate">Validity Date:</label>
            <input type="date" id="validityDate" name="validityDate" required><br>

            <label for="expiryDate">Expiry Date:</label>
            <input type="date" id="expiryDate" name="expiryDate" required><br>


            <label for="Currency">Currency:</label>
            <select id="currency" name="currency" required>
                <option value="">--Select One--</option>
                <option value="usd">USD</option>
                <option value="cad">CAD</option>
                <option value="ind">IND</option>
            </select><br>




            <label for="standaloneService">Standalone Service:</label>
            <select id="standaloneService" name="standaloneService" required>
                <option value="">--Select One--</option>
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select><br>

            <label for="mandatoryService">Mandatory Service:</label>
            <select id="mandatoryService" name="mandatoryService" required>
                <option value="">--Select One--</option>
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select><br>

            <div>
            <label for="rate">Select Rates:</label>
                        <select id="rate" name="rate" required>
                        <c:forEach var="rate" items="${rateList}">

                            <option value="${rate.rateCode}">${rate.rateCode}</option>
                          </c:forEach>
                        </select><br>
            </div>
            <div>
            			<center><button class="btn">Save</button></center>
            		</div>
            		</form>



<br>
</body>
<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<h3>About ZBank</h3>
				<p>ZBank is a leading bank in India providing innovative
					financial solutions to individuals and businesses.</p>
			</div>
			<div class="col-md-4">
				<h3>Contact Us</h3>
				<ul>
					<li><i class="fas fa-map-marker-alt"></i> 123 Main Street,
						Mumbai, India</li>
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