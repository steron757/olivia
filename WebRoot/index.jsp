<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>Cake Delights Web Template</title>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script>
	$(function(){
		$.fn.snow({
			minSize: 5,		//雪花的最小尺寸
			maxSize: 50, 	//雪花的最大尺寸
			newOn: 300		//雪花出现的频率 这个数值越小雪花越多
		});
	});
	function changeHomeImg(order) {
		for(var i=1;i<=9;i++){
			$("#homeimage"+i).fadeOut(500);
			$("#imgli"+i).removeClass("selected");
		}
		$("#imgli"+order).addClass("selected");
		setTimeout(function(){
			$("#homeimage"+order).fadeIn("slow");
		},400);
	}
	
</script>
</head>
<body>
	<div id="header">
		<div>
			<div id="section">
				<ul>
					<li id="imgli1"><a href="javascript:void(0)" onclick="changeHomeImg('1')">芝士蛋糕</a></li>
					<li id="imgli2"><a href="javascript:void(0)" onclick="changeHomeImg('2')">海绵蛋糕</a></li>
					<li id="imgli3"><a href="javascript:void(0)" onclick="changeHomeImg('3')">奶油蛋糕</a></li>
					<li class="selected" id="imgli4"><a href="javascript:void(0)" onclick="changeHomeImg('4')">层状蛋糕</a></li>
					<li id="imgli5"><a href="javascript:void(0)" onclick="changeHomeImg('5')">片状蛋糕</a></li>
					<li id="imgli6"><a href="javascript:void(0)" onclick="changeHomeImg('6')">杯形状蛋糕</a></li>
					<li id="imgli7"><a href="javascript:void(0)" onclick="changeHomeImg('7')">翻糖蛋糕</a></li>
					<li id="imgli8"><a href="javascript:void(0)" onclick="changeHomeImg('8')">瑞士卷</a></li>
					<li id="imgli9"><a href="javascript:void(0)" onclick="changeHomeImg('9')">其他甜点</a></li>
				</ul>
				<a href="index.jsp">
					<img id="homeimage1" name="homeimage" src="<%=path %>/images/home/home_cheesecake.jpg"style="display: none;"/>
					<img id="homeimage2" name="homeimage" src="<%=path %>/images/home/home_spongecake.jpg"style="display: none;"/>
					<img id="homeimage3" name="homeimage" src="<%=path %>/images/home/home_buttercake.jpg"style="display: none;"/>
					<img id="homeimage4" name="homeimage" src="<%=path %>/images/home/wedding-cupcakes-large.jpg"/>
					<img id="homeimage5" name="homeimage" src="<%=path %>/images/home/home_sheetcake.jpg"style="display: none;"/>
					<img id="homeimage6" name="homeimage" src="<%=path %>/images/home/home_cupcake.jpg" style="display: none;"/>
					<img id="homeimage7" name="homeimage" src="<%=path %>/images/home/home_fondant.jpg" style="display: none;"/>
					<img id="homeimage8" name="homeimage" src="<%=path %>/images/home/home_swissroll.jpg" style="display: none;"/>
					<img id="homeimage9" name="homeimage" src="<%=path %>/images/home/home_others.jpg" style="display: none;"/>
				</a>
			</div>
		</div>
	</div>
	<div id="content">
		<div class="home">
			<div class="aside">
				<h1>欢迎来到Olivia蛋糕屋</h1>
				<p>糕点是以各种原料，如面粉，黄油，起酥油，发酵粉或鸡蛋制成的烘焙食品的名称。小蛋糕，馅饼和甜等烘焙食品被称为“点心”。 </p>
				<p>糕点也可指从这样的烘焙食品是由面团。油酥面团铺开薄，并作为烘焙食品基地。常见的糕点美食，包括馅饼，馅饼和乳蛋饼。 
				<p>糕点面包，从由具有较高的脂肪含量，这有助于片状或易碎的质地区别。一个好的糕点是光线和通风和脂肪，但足够牢固，能够支撑填充的重量。当进行shortcrust糕点，必须小心混合脂肪和添加面粉前彻底。 <a href="index.jsp" class="readmore">阅读更多</a></p>
			</div>
			<div class="section">
				<div>
					<h2>提拉米苏的故事</h2>
					<p>提拉米苏，Tiramisu，在意大利文里，有 “ 带我走 ”
						的含义，带走的不只是美味，还有爱和幸福。关于提拉米苏的由来，有一个温馨的故事：二战时期，一个意大利士兵要出征了，
						可是家里已经什么也没有了，爱他的妻子为了给他准备干粮，把家里所有能吃的饼干、面包全做进了一个糕点里，那个糕点就叫提拉米苏。
						每当这个士兵在战场上吃到提拉米苏就会想起他的家，想起家中心爱的人。</p>
				</div>
				<ul>
					<li class="first">
						<a href="index.jsp"><img src="<%=path %>/images/cake.jpg" alt="Image" /></a>
					</li>
					<li>
						<a href="index.jsp"><img src="<%=path %>/images/burgercake.jpg" alt="Image" /></a>
					</li>
					<li>
						<a href="index.jsp"><img src="<%=path %>/images/cupcake.jpg" alt="Image" /></a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>