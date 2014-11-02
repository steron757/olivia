<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
</style>
<title></title>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/carousel/demo.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/css/carousel/style.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/css/carousel/jquery.jscrollpane.css" media="all" />
<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow&v1' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Coustard:900' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Rochester' rel='stylesheet' type='text/css' />

</head>
<body>
	<div id="header">
		<div>
			<div class="section">
				<a href="home"><img src="<%=path %>/images/wedding-cupcakes-small.jpg" alt="Image"></a>
			</div>
		</div>
	</div>
		<div class="container">
			<h1>Circular Content Carousel
			<span>with jQuery</span>
				<img style='width: 40px;float: right;margin-right: 170px;cursor: pointer;' 
					title="返回" src='<%=path%>/images/back.png' onclick="javascript:history.go(-1)"/>
			</h1>
			<div id="ca-container" class="ca-container">
				<div class="ca-wrapper">
				<s:iterator var="img" value="#request.imageList">
					<div class="ca-item ca-item-1">
						<div class="ca-item-main">
							<div class="ca-icon">
								<img style='width:280px' src='<%=path%>/<s:property value="#img.path"/>'/>
							</div>
							<h4>
								<span class="ca-quote">&ldquo;</span>
								<span><s:property value="#img.briefDescription"/></span>
							</h4>
								<a href="#" class="ca-more">more...</a>
						</div>
						<div class="ca-content-wrapper">
							<div class="ca-content">
								<h6>TODO</h6>
								<a href="#" class="ca-close">close</a>
								<div class="ca-content-text">
									<s:property value="#img.description"/>
								</div>
								<ul>
									<li><a href="#">Read more</a></li>
									<li><a href="#">Share this</a></li>
									<li><a href="#">Become a member</a></li>
									<li><a href="#">Donate</a></li>
								</ul>
							</div>
						</div>
					</div>
				</s:iterator>
				</div>
			</div>
			<h5>Quotes by Mohandas Gandhi</h5>
		</div>
		<script type="text/javascript" src="<%=path %>/js/jquery.easing.1.3.js"></script>
		<!-- the jScrollPane script -->
		<script type="text/javascript" src="<%=path %>/js/jquery.mousewheel.js"></script>
		<script type="text/javascript" src="<%=path %>/js/jquery.contentcarousel.js"></script>
		<script type="text/javascript">
			$('#ca-container').contentcarousel();
			
		</script>
</body>
</html>