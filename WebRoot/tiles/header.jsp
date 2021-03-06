<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String index = String.valueOf(request.getAttribute("index") == null ? 1 : request.getAttribute("index"));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<script type="text/javascript" src="<%=path %>/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path %>/css/style.css" />
<script type="text/javascript"src="<%=path %>/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="<%=path %>/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/jq.snow.js"></script>
<%--<script src="<%=path %>/bootstrap/js/bootstrap.min.js"></script>--%>
<title></title>
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
<body onload="load('<%=index%>')">
		<div>
			<div>
				<div id="logo">
					<a href="home"><img src="<%=path %>/images/logo.gif" alt="Logo"/></a>
				</div>
				<div>
					<div>
						<a href="admin/login.jsp" target="blank">管理入口</a>
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
				<li id="nav1" class="current"><a href="home">首页</a></li>
				<li id="nav2"><a href="products">糕点屋</a></li>
				<li id="nav3"><a href="about">关于我们</a></li>
				<li id="nav4"><a href="service">服务</a></li>
				<li id="nav5"><a href="blog">博客</a></li>
				<li id="nav6"><a href="contact">联系我们</a></li>
			</ul>
		</div>
	</body>
<script type="text/javascript">
	function load(t){
		for(var i=1;i<=6;i++){
			if(parseInt(t)==i)
				continue;
			document.getElementById("nav"+i).className="";
		}
		document.getElementById("nav"+t).className="current";
	}
</script>
</html>