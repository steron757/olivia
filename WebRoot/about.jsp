<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8" />
	<title>About - Cake Website Template</title>
</head>
<body>
	<div id="header">
		<div>
			<div class="section">
				<a href="home"><img src="<%=path %>/images/wedding-cupcakes-small.jpg" alt="Image"></a>
			</div>
		</div>
	</div>
	<div id="content">
		<div id="about">
			<div class="aside">
				<h1>About Olivia Cupcake</h1>
				<span>XXXXXX</span>
				<p></p>
				<span>XXXXXXXX</span>
				<p></p>
				<span>XXXXX</span>
				<p></p>
				<span>XXXXXXX</span>
				<p></p>
				<p></p>
			</div>
			<div class="section">
				<div id="visitshop">
					<div>
						<p><span>Sweets from the heart</span> Treat your loveones</p>
						 <a href="" class="visit">visit the shop</a>
					</div>
				</div>
				<div>
					<h3></h3>
					<p></p>
				</div>
				<div>
					<h3>地址</h3>
					<p>广东省广州市白云区白云大道北1号</p>
					</div>
				<div>
					<a href="home" class="callus">联系我们<span>119</span></a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>