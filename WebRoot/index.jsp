<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>Cake Delights Web Template</title>
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
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="js/jq.snow.js"></script>
	<script>
	$(function(){
		$.fn.snow({ 
			minSize: 5,		//雪花的最小尺寸
			maxSize: 50, 	//雪花的最大尺寸
			newOn: 300		//雪花出现的频率 这个数值越小雪花越多
		});
	});
	function changeHomeImg(order) {
		for(var i=1;i<9;i++){
			//if($("#homeimage"+i)[0].style.display != 'none'){
				$("#homeimage"+i).fadeOut(500);
			//}
		}
		$("#homeimage"+order).fadeIn("slow");
	} 
</script>
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
				<li class="current"><a href="index.jsp">Home</a></li>
				<li><a href="product.jsp">The Pastry shop</a></li>
				<li><a href="about.jsp">About us</a></li>
				<li><a href="services.jsp">Services</a></li>
				<li><a href="blog.jsp">Blog</a></li>
				<li><a href="contact.jsp">Contact Us</a></li>
			</ul>
			<div id="section">
				<ul>
					<li><a href="javascript:void(0)" onclick="changeHomeImg('1')">cheese cakes</a></li>
					<li><a href="javascript:void(0)" onclick="changeHomeImg('2')">sponge cakes</a></li>
					<li><a href="javascript:void(0)" onclick="changeHomeImg('3')">butter cakes</a></li>
					<li class="selected"><a href="javascript:void(0)" onclick="changeHomeImg('4')">layer cakes</a></li>
					<li><a href="javascript:void(0)" onclick="changeHomeImg('5')">sheet cakes</a></li>
					<li><a href="javascript:void(0)" onclick="changeHomeImg('6')">cupcakes</a></li>
					<li><a href="javascript:void(0)" onclick="changeHomeImg('7')">fondant cakes</a></li>
					<li><a href="javascript:void(0)" onclick="changeHomeImg('8')">swiss roll</a></li>
					<li><a href="javascript:void(0)" onclick="changeHomeImg('9')">other desserts</a></li>
				</ul>
				<a href="index.jsp">
					<img id="homeimage1" name="homeimage" src="<%=path %>/images/home/home_cheesecake.jpg"style="display: none;"/>
					<img id="homeimage2" name="homeimage" src="<%=path %>/images/home/home_spongecake.jpg"style="display: none;"/>
					<img id="homeimage3" name="homeimage" src="<%=path %>/images/home/home_buttercake.jpg"style="display: none;"/>
					<img id="homeimage4" name="homeimage" src="<%=path %>/images/home/wedding-cupcakes-large.jpg"/>
					<img id="homeimage5" name="homeimage" src="<%=path %>/images/home/home_sheetcake.jpg"style="display: none;"/>
					<img id="homeimage6" name="homeimage" src="<%=path %>/images/home/home_cupcake.jpg" style="display: none;"/>
					<img id="homeimage7" name="homeimage" src="<%=path %>/images/home/home_fondant.jpg" style="display: none;"/>
					<img id="homeimage8" name="homeimage" src="<%=path %>/images/home/home_swissroll.jpg" style="display: none;"/>
					<img id="homeimage9" name="homeimage" src="<%=path %>/images/home/home_others.jpg" style="display: none;"/>
				</a>
			</div>
		</div>
	</div>
	<div id="content">
		<div class="home">
			<div class="aside">
				<h1>Welcome to our site</h1>
				<p>Pastry is the name given to various kinds of baked goods made from ingredients such as flour, butter, shortening, baking powder or eggs. Small cakes, tarts and other sweet baked goods are called &#34;pastries&#34;.</p> 
				<p>Pastry may also refer to the dough from which such baked goods are made. Pastry dough is rolled out thinly and used as a base for baked goods. Common pastry dishes include pies, tarts and quiches. 
				<p>Pastry is distinguished from bread by having a higher fat content, which contributes to a flaky or crumbly texture. A good pastry is light and airy and fatty, but firm enough to support the weight of the filling. When making a shortcrust pastry, care must be taken to blend the fat and flour thoroughly before adding. <a href="index.jsp" class="readmore">read more</a></p>
			</div>
			<div class="section">
				<div>
					<h2>The food story</h2>
					<p>Lorem ipsum dolor sit amet, consectetuer adispiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exercitation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</p>
				</div>
				<ul>
					<li class="first">
						<a href="index.jsp"><img src="<%=path %>/images/cake.jpg" alt="Image" /></a>
					</li>
					<li>
						<a href="index.jsp"><img src="<%=path %>/images/burgercake.jpg" alt="Image" /></a>
					</li>
					<li>
						<a href="index.jsp"><img src="<%=path %>/images/cupcake.jpg" alt="Image" /></a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div id="footer">
		<div class="home">
			<div>
				<div class="aside">
					<div class="signup">
						<div>
							<b>Too <span>BUSY</span> to shop?</b>
							<a href="signin.jsp">Sign up for free</a>
							<p>and we&#39;ll deliver it on your doorstep</p>
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
				<div class="section">
					<div>
						<div>
							<h3><a href="index.jsp">Daily Cake Surprise</a></h3>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exertation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in.</p>
						</div>
					</div>
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