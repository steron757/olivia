<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title></title>
</head>
<body>
		<div class="section">
			<div>
				<div class="aside">
					<div>
						<div>
							<b><span>没有时间</span>逛街？</b>
							<a href="signin.jsp">免费注册</a>
							<p>我们会送到您家</p>
						</div>
					</div>
				</div>
				<div class="connect">
					<span>关注我们</span>
					<ul>
						<li><a href="#" target="_blank" class="facebook">Facebook</a></li>
						<li><a href="#" target="_blank" class="twitter">Twitter</a></li>
						<li><a href="#" class="subscribe">Subscribe</a></li>
						<li><a href="http://www.weibo.com/u/1814073407" target="_blank" class="flicker">新浪微博</a></li>
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
</body>
</html>