<%@ page language="java"
	 	contentType="text/html; charset=ISO-8859-1"
    	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Travel Explorer Web App</title>
		<link rel="stylesheet" type="text/css" href="./CSS/style.css" />
		
 		<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
		<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
		<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
		<link rel="stylesheet" href="./CSS/jquery-ui-1.10.2.custom.css" />
<script>
$(function() {
$( "#accordion" ).accordion();
});
</script>
	
		
	<header>
		<div id = "logo"> 
			<p>Logo</p>
		</div>
		
		<ul id="menu">
			<li><a href="index.jsp">Home Page</a></li>
			<li><a href="index.jsp">Profile</a></li>
			<li><a href="index.jsp">Advertisements</a></li>
			<li><a href="index.jsp">Articles</a></li>
			<li><a href="index.jsp">Special Offers</a></li>
			<li><a href="index.jsp">Trending Articles</a></li>
			<li><a href="index.jsp">Subscriptions</a></li>
			<li><a href="index.jsp">Contact us</a></li>
		</ul>
		
	</header>
	
	<body>

		<div id="wrapper">
			<div id="accordion">
				<h3>Section 1</h3>
					<div>
						<p>
							Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
							ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
							amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
							odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
						</p>
					</div>
				<h3>Section 2</h3>
					<div>
						<p>
							Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
							purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
							velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
							suscipit faucibus urna.
						</p>
					</div>
				<h3>Section 3</h3>
					<div>
						<p>
							Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
							Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
							ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
							lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
						</p>
							<ul>
								<li>List item one</li>
								<li>List item two</li>
							<li>List item three</li>
						</ul>
					</div>
				<h3>Section 4</h3>
					<div>
						<p>
							Cras dictum. Pellentesque habitant morbi tristique senectus et netus
							et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
							faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
							mauris vel est.
						</p>
						<p>
							Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
							Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
							inceptos himenaeos.
						</p>
					</div>
			</div>
		</div>
		
	</body>
	
	<footer>
		<p>Footer</p>
				<ul>
			<li><a href="index.jsp">Home Page</a> |</li>
			<li><a href="index.jsp">About Company</a> |</li>
			<li><a href="index.jsp">Hot Tours</a> |</li>
			<li><a href="index.jsp">Hotels</a> |</li>
			<li><a href="index.jsp">Services</a> |</li>
			<li><a href="index.jsp">Reviews</a> |</li>
			<li><a href="index.jsp">Partners</a> |</li>
			<li><a href="index.jsp">Contact us</a></li>
		</ul>
		
	</footer>
	
</html>