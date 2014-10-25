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
</body>
</html>