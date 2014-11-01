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
</head>
<body>
	<div id="header">
		<div>
			<div class="section">
				<a href="home"><img src="<%=path %>/images/wedding-cupcakes-small.jpg" alt="Image"/></a>
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
							<h2><a href="home">特别点心</a></h2>
							<p>特别点心</p>
							<a href="product/p" class="view">查看全部</a>
						</div>
						<a href="product/p"><img src="<%=path %>/images/product/p1.png" alt="Image" style="float:right;height:222px"/></a>
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2><a href="home">人物肖像</a></h2>
							<p>人物肖像</p>
							<a href="product/p" class="view">查看全部</a>
						</div>
						<a href="product/p"><img src="<%=path %>/images/product/p2.png" alt="Image" style="float:right;height:222px"/></a>
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2><a href="home">生日蛋糕</a></h2>
							<p>生日蛋糕</p>
							<a href="product/p" class="view">查看全部</a>
						</div>
						<a href="product/p"><img src="<%=path %>/images/product/p3.png" alt="Image" style="float:right;height:222px"/></a>
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2><a href="home">包包</a></h2>
							<p>包包</p>
							<a href="product/p" class="view">查看全部</a>
						</div>
						<a href="product/p"><img src="<%=path %>/images/product/p4.png" alt="Image" style="float:right;height:222px"/></a>
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2><a href="home">婚庆礼桌</a></h2>
							<p>婚庆礼桌</p>
							<a href="product/p" class="view">查看全部</a>
						</div>
						<a href="product/p"><img src="<%=path %>/images/product/p5.png" alt="Image" style="float:right;height:222px"/></a>
					</div>
				</li>
				<li>
					<div>
						<div>
							<h2><a href="home">店长美眉</a></h2>
							<p>3333</p>
							<a href="product/p" class="view">查看全部</a>
						</div>
						<a href="product/p"><img src="<%=path %>/images/product/p6.png" alt="Image" style="float:right;height:222px"/></a>
					</div>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>