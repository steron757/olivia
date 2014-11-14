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
				<a href="home"><img src="<%=path %>/images/about-banner.png" alt="Image"></a>
			</div>
		</div>
	</div>
	<div id="content">
		<div id="about">
			<div class="aside">
				<h1>关于  Olivia 工作室</h1><br/><br/>
				<span>我穿梭在繁华的都市，愉快而宁静，心中满是快乐与温暖。 </span><br/><br/>
				<span>我每天的工作就是烘出一块块精致美味的蛋糕，仔细抹上纯白的奶油，
				裱上各种颜色的漂亮的花边，点缀上可爱又美味的装饰品。</span><br/><br/>
				<span>我拥有一家蛋糕店，在优雅街的拐角，店名叫幸福。 </span><br/><br/>
				<span>来我的店吧，你会看到幸福的形状。</span>
				<p></p>
				<span></span>
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
					<a href="javascript:void(0)" class="callus">联系我们<span>15934517233</span></a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>