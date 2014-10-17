<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8" />
	<title>糕点屋</title>
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
						<a href="admin/login.jsp">管理入口</a>
						<a href="signup.jsp">我的账户</a>
						<a href="index.jsp">帮助</a>
						<a href="signin.jsp" class="last">登入</a>
					</div>
					<form action="#">
						<input type="text" id="search" maxlength="30" />
						<input type="submit" value="" id="searchbtn" />
					</form>
				</div>
			</div>
			<ul>
				<li><a href="index.jsp">首页</a></li>
				<li class="current"><a href="product.jsp">糕点屋</a></li>
				<li><a href="about.jsp">关于我们</a></li>
				<li><a href="services.jsp">服务</a></li>
				<li><a href="blog.jsp">博客</a></li>
				<li><a href="contact.jsp">联系我们</a></li>
			</ul>
			<div class="section">
				<a href="index.jsp"><img src="<%=path %>/images/wedding-cupcakes-small.jpg" alt="Image"/></a>
			</div>
		</div>
	</div>
	<div id="content">
		<div>
			<h1>糕点屋</h1>
			<ul>
				<li>
					<div>
						<div>
							<h2><a href="index.jsp">特别点心</a></h2>
							<p>香浓的欧式巧克力蛋糕，铺上爽滑的奶油，甜而不腻，可谓蛋糕中的经典。</p>
							<a href="index.jsp" class="view">查看全部</a>
						</div>
						<a href="index.jsp"><img src="<%=path %>/images/special-treats.jpg" alt="Image" /></a>
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2><a href="index.jsp">草莓拼盘</a></h2>
							<p>草莓拼盘</p>
							<a href="index.jsp" class="view">查看全部</a>
						</div>
						<a href="index.jsp"><img src="<%=path %>/images/tarts.jpg" alt="Image" /></a>
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2><a href="index.jsp">精制糕点</a></h2>
							<p>呵呵</p>
							<a href="index.jsp" class="view">查看全部</a>
						</div>
						<a href="index.jsp"><img src="<%=path %>/images/cakes.jpg" alt="Image" /></a>
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2><a href="index.jsp">小甜点</a></h2>
							<p>。。。。。</p>
							<a href="index.jsp" class="view">查看全部</a>
						</div>
						<a href="index.jsp"><img src="<%=path %>/images/dessert.jpg" alt="Image" /></a>
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2><a href="index.jsp">油酥面团</a></h2>
							<p>看上去不错</p>
							<a href="index.jsp" class="view">查看全部</a>
						</div>
						<a href="index.jsp"><img src="<%=path %>/images/pastries.jpg" alt="Image" /></a>
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2><a href="index.jsp">健康食品</a></h2>
							<p>~~~</p>
							<a href="index.jsp" class="view">查看全部</a>
						</div>
						<a href="index.jsp"><img src="<%=path %>/images/healthy-food.jpg" alt="Image" /></a>
					</div>
				</li>
			</ul>
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