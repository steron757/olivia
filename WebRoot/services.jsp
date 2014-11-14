<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8" />
	<title>Services - Cake Delights</title>
</head>
<body>
	<div id="header">
		<div>
			<div class="section">
				<a href="home"><img src="<%=path %>/images/service-banner.png" alt="Image"></a>
			</div>
		</div>
	</div>
	<div id="content">
		<div id="services">
			<div class="aside">
				<h1>我们的服务</h1>
				<span>私房甜品定制</span>
				<p></p>
				<span>零售精致蛋糕</span>
				<p></p>
				<span>婚礼甜品桌</span>
				<p></p>
			</div>
			<div class="section">
				<h3>最贴心的服务</h3>
				<p>您只需要在线提交订单，即可快递送到您家。</p>
				<p>广州市内可上门自提，地址：</p>
				<div id="visitshop">
					<div>
						<p><span>Sweets from the heart</span> Treat your loveones</p>
						 <a href="" class="visit">visit the shop</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>