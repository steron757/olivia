<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8" />
	<title>Blog - Cake Delights Web Template</title>
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
				<li class="current"><a href="blog.jsp">Blog</a></li>
				<li><a href="contact.jsp">Contact Us</a></li>
			</ul>
			<div class="section">
				<a href="index.jsp"><img src="<%=path %>/images/wedding-cupcakes-small.jpg" alt="Image"/></a>
			</div>
		</div>
	</div>
	<div id="content">
		<div id="blog">
			<div id="articles">
				<ul>
					<li>
						<div>
							<div>
								<span class="date">Dec 3</span>
								<span class="connect">
									<a href="#" target="_blank" class="twitter">Twitter</a>
									<a href="#" target="_blank" class="heart">Heart</a>
									<a href="#" target="_blank" class="facebook">Facebook</a>
								</span>
								<h1><a href="index.jsp">New Recipes: Fancy Desserts</a></h1>
								<h2>Let&#39;s bake!</h2>
								<p>Nobody is actually sure who created the very first
									cookie. But the first cookie may have been a mistake. Many
									cooking experts believe that a long time ago cooks who wanted
									to test the temperature of their ovens would bake a little bit
									to find out if the oven was hot enough to bake an entire cake.
									These test cakes were called keokje, which means "little cake"
									in the language used in the Netherlands. People from the
									Netherlands brought the recipe to the United States. The word
									"cookie" may have come from their word keokje.</p>
								<p>Cookies are also very popular in England, but the English
									call them "biscuits", as do Australians. Almost every country
									has a word for cookie. In Spain, they are called galletas, and
									in Italy, cookies are called biscotti. Americans are not the
									only people who enjoy cookies.</p>
								<p>You can make cookies following these steps: ·Preheat oven
									to 150°C. Put a little butter on a cookie sheet. ·Mix together
									white sugar, brown sugar, butter and eggs. Then add vanilla.
									·Add flour, salt, baking soda, and baking powder. Then mix
									well. ·Drop by spoonfuls onto the cookie sheet. ·Bake at 150℃
									for 12 minutes or until lightly brown.</p>
								<span id="tag">Tag: <a href="index.jsp">Cookies</a> <a href="index.jsp">Recipes</a></span>
							</div>
						</div>
					</li>
					<li>
						<div>
							<div>
								<span class="date">Nov 29</span>
								<span class="connect">
									<a href="#" target="_blank" class="twitter">Twitter</a>
									<a href="#" target="_blank" class="heart">Heart</a>
									<a href="#" target="_blank" class="facebook">Facebook</a>
								</span>
								<h1><a href="index.jsp">Whoopie</a></h1>
								<h2>December 3-5&#44; 2011 Crazy Discounts</h2>
								<p>Whoopie pies are popping up in trendy bakeries and food
									stores around the country, but unless you've spent time in
									regions where they are traditional treats -- e.g., in New
									England or Pennsylvania Amish country -- you might never have
									heard of them. Think of them as sandwiches made with two
									cakelike cookies and a creamy filling.</p>
								<p>PUMPKIN WHOOPIE PIES Adapted from "Baked," by Matt Lewis
									and Renato Polifiato Be sure to chill the pumpkin puree before
									making the recipe - it makes the dough easier to scoop and
									results in a perfect domed top on the baked cookies.</p>
								<span id="tag">Tag: <a href="index.jsp">Sale</a> <a href="index.jsp">Promos</a> <a href="index.jsp">Food</a></span>
							</div>
						</div>
					</li>
				</ul>
				<div class="section">
					<a href="index.jsp" class="newpost">New Post</a>
					<a href="index.jsp" class="oldpost">Old Post</a>
				</div>
			</div>
			<div id="sidebar">
				<h2>Archives</h2>
				<h3 class="first"><a href="index.jsp">2011 <span>(60)</span></a></h3>
				<div>
					<p><a href="index.jsp">November <span>(11)</span></a></p>
					<p><a href="index.jsp">October <span>(3)</span></a></p>
					<p><a href="index.jsp">September <span>(8)</span></a></p>
					<p><a href="index.jsp">August <span>(3)</span></a></p>
					<p><a href="index.jsp">July <span>(2)</span></a></p>
					<p><a href="index.jsp">June</a></p>
					<p><a href="index.jsp">May <span>(8)</span></a></p>
					<p><a href="index.jsp">April <span>(7)</span></a></p>
					<p><a href="index.jsp">March <span>(7)</span></a></p>
					<p><a href="index.jsp">April <span>(7)</span></a></p>
					<p><a href="index.jsp">February <span>(10)</span></a></p>
					<p><a href="index.jsp">January <span>(1)</span></a></p>
				</div>
				<h3><a href="index.jsp">2010</a></h3>
				<h3><a href="index.jsp">2009</a></h3>
			</div>
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