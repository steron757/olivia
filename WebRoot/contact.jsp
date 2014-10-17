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
				<li><a href="product.jsp">糕点屋</a></li>
				<li><a href="about.jsp">关于我们</a></li>
				<li><a href="services.jsp">服务</a></li>
				<li><a href="blog.jsp">博客</a></li>
				<li class="current"><a href="contact.jsp">联系我们</a></li>
			</ul>
			<div class="section">
				<a href="index.jsp"><img src="<%=path %>/images/wedding-cupcakes-small.jpg" alt="Image"/></a>
			</div>
		</div>
	</div>
	<div id="content">
		<div>
			<h1>联系我们</h1>
			<div id="visitshop">
				<div>
					<p><span>Sweets from the heart</span> Treat your loveones</p>
					 <a href="" class="visit">visit the shop</a>
				</div>
			</div>
			<form action="user_leaveMsg" method="post">
				<p>如果您有需要欢迎给我们留言.</p>
				<input type="text" maxlength="30" name="username" value="Name" autocomplete="off" class="textcontact" onfocus="if (value =='Name'){value ='';}" onblur="if (value ==''){value='Name';}"/>
				<input type="text" maxlength="30" name="email" value="E-mail"autocomplete="off"  class="textcontact" onfocus="if (value =='E-mail'){value ='';}" onblur="if (value ==''){value='E-mail';}"/>
				<input type="text" maxlength="30" name="subject" value="Subject"autocomplete="off"  class="textcontact" onfocus="if (value =='Subject'){value ='';}" onblur="if (value ==''){value='Subject';}"/>
				<textarea name="content" id="content" cols="30" rows="10"></textarea>
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