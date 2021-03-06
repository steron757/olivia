<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8" />
	<title>Sign In - Cake Delights Web Template</title>
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
					<a href="home"><img src="<%=path %>/images/logo.gif" alt="Logo"/></a>
				</div>
				<div>
					<div>
						<a href="admin/login.jsp">管理入口</a>
						<a href="signup.jsp">我的账户</a>
						<a href="home">帮助</a>
						<a href="signin.jsp" class="last">登入</a>
					</div>
					<form action="#">
						<input type="text" id="search" maxlength="30" />
						<input type="submit" value="" id="searchbtn" />
					</form>
				</div>
			</div>
			<ul>
				<li><a href="home">首页</a></li>
				<li><a href="product.jsp">糕点屋</a></li>
				<li><a href="about.jsp">关于我们</a></li>
				<li><a href="services.jsp">服务</a></li>
				<li><a href="blog.jsp">博客</a></li>
				<li><a href="contact.jsp">联系我们</a></li>
			</ul>
			<div class="section">
				<a href="home"><img src="<%=path %>/images/wedding-cupcakes-small.jpg" alt="Image"/></a>
			</div>
		</div>
	</div>
	<div id="content">
		<div>
			<div id="account">
				<div>
					<form action="#">
						<span>登录</span>
						<table>
							<tr>
								<td><label for="name">用户名</label></td>
								<td><input type="text" id="name" /></td>
							</tr>
							<tr>
								<td><label for="password">密码</label></td>
								<td><input type="text" id="password" /></td>
							</tr>
							<tr>
								<td></td>
								<td class="rememberme">
								<label for="rememberme"><input type="checkbox" id="rememberme" />记住我</label></td>
							</tr>
						</table>
						<input type="submit" value="登录" class="submitbtn" />
					</form>
				</div>
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
		<div id="navigation">
			<div>
				<ul>
					<li class="first"><a href="home">help</a></li>
					<li><a href="home">about cake delight</a></li>
					<li><a href="home">cake delight talk</a></li>
					<li><a href="home">developers</a></li>
					<li><a href="home">privacy policy</a></li>
					<li><a href="home">terms of use(updated 10/15/08)</a></li>
				</ul>
				<p>Copyright &copy; 2006-2008 cake delight  All rights reserved</p>
			</div>
		</div>
	</div>
</body>
</html>