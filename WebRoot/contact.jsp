<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8" />
	<title>Contact Us - Cake Delights Web Template</title>
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<!--[if IE 8]>
		<link rel="stylesheet" type="text/css" href="css/ie8.css" />
	<![endif]-->
	<!--[if IE 7]>
		<link rel="stylesheet" type="text/css" href="css/ie7.css" />
	<![endif]-->
	<!--[if IE 6]>
		<link rel="stylesheet" type="text/css" href="css/ie6.css" />
	<![endif]-->
</head>
<body>
	<div id="header">
		<div>
			<div>
				<div id="logo">
					<a href="index.jsp"><img src="<%=path %>/images/logo.gif" alt="Logo"/></a>
				</div>
				<div>
					<div>
						<a href="signup.jsp">My Account</a>
						<a href="index.jsp">Help</a>
						<a href="signin.jsp" class="last">Sign in</a>
					</div>
					<form action="#">
						<input type="text" id="search" maxlength="30" />
						<input type="submit" value="" id="searchbtn" />
					</form>
				</div>
			</div>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="product.jsp">The Pastry shop</a></li>
				<li><a href="about.jsp">About us</a></li>
				<li><a href="services.jsp">Services</a></li>
				<li><a href="blog.jsp">Blog</a></li>
				<li class="current"><a href="contact.jsp">Contact Us</a></li>
			</ul>
			<div class="section">
				<a href="index.jsp"><img src="<%=path %>/images/wedding-cupcakes-small.jpg" alt="Image"/></a>
			</div>
		</div>
	</div>
	<div id="content">
		<div>
			<h1>Contact us</h1>
			<div id="visitshop">
				<div>
					<p><span>Sweets from the heart</span> Treat your loveones</p>
					 <a href="" class="visit">visit the shop</a>
				</div>
			</div>
			<form action="#">
				<p>If you need assistance feel free to e-mail us. <span>Mauris dictum congque porta. Duis dapibus tellus id dolor fringilla et viverra nibh semper. Praesent sit amet lacus tortor.</span></p>
				<input type="text" maxlength="30" value="Name" class="textcontact" />
				<input type="text" maxlength="30" value="E-mail Address" class="textcontact" />
				<input type="text" maxlength="30" value="Subject" class="textcontact" />
				<textarea name="message" id="message" cols="30" rows="10"></textarea>
				<input type="submit" value="" class="submit" />
			</form>
		</div>
	</div>
	<div id="footer">
		<div class="section">
			<div>
				<div class="aside">
					<div>
						<div>
							<b>Too <span>BUSY</span> to shop?</b>
							<a href="signin.jsp">Sign up for free</a>
							<p>and we&#39;ll deliver it on your doorstep</p>
						</div>
					</div>
				</div>
				<div class="connect">
					<span>Follow Us</span>
					<ul>
						<li><a href="#" target="_blank" class="facebook">Facebook</a></li>
						<li><a href="#" target="_blank" class="twitter">Twitter</a></li>
						<li><a href="#" class="subscribe">Subscribe</a></li>
						<li><a href="http://www.weibo.com/u/1814073407" target="_blank" class="flicker">Weibo</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="featured">
			<ul>
				<li class="first">
					<a href="index.jsp"><img src="<%=path %>/images/fruit-cake.jpg" alt="Image" /></a>
					<h2><a href="index.jsp">Tips on how to preserve</a></h2>
					<p>Lorem ipsum dolor sit amet, consectetuer adispiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet. <a href="index.jsp" class="readmore">read more</a></p>
				</li>
				<li>
					<a href="index.jsp"><img src="<%=path %>/images/italian.jpg" alt="Image" /></a>
					<h2><a href="index.jsp">Menu of the day: Italian</a></h2>
					<p>Lorem ipsum dolor sit amet, consectetuer adispiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet. <a href="index.jsp" class="readmore">read more</a></p>
				</li>
				<li>
					<a href="index.jsp"><img src="<%=path %>/images/fruit.jpg" alt="Image" /></a>
					<h2><a href="index.jsp">Fruit menu for your diet</a></h2>
					<p>Lorem ipsum dolor sit amet, consectetuer adispiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet. <a href="index.jsp" class="readmore">read more</a></p>
				</li>
				<li>
					<a href="index.jsp"><img src="<%=path %>/images/desserts.jpg" alt="Image" /></a>
					<h2><a href="index.jsp">Desserts for every occassion</a></h2>
					<p>Lorem ipsum dolor sit amet, consectetuer adispiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet. <a href="index.jsp" class="readmore">read more</a></p>
				</li>
			</ul>
		</div>
		<div id="navigation">
			<div>
				<ul>
					<li class="first"><a href="index.jsp">help</a></li>
					<li><a href="index.jsp">about cake delight</a></li>
					<li><a href="index.jsp">cake delight talk</a></li>
					<li><a href="index.jsp">developers</a></li>
					<li><a href="index.jsp">privacy policy</a></li>
					<li><a href="index.jsp">terms of use(updated 10/15/08)</a></li>
				</ul>
				<p>Copyright &copy; 2006-2008 cake delight  All rights reserved</p>
			</div>
		</div>
	</div>
</body>
</html>