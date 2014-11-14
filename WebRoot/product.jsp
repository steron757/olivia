<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

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
				<a href="home"><img src="<%=path %>/images/tiramisu.png" alt="Image"/></a>
			</div>
		</div>
	</div>
	<div id="content">
		<div>
			<h1>糕点屋</h1>
			<ul>
				<s:iterator value="#request.productList" var="p">
				<li>
					<div>
						<div>
							<h2><a href="product/p?pid=<s:property value="#p.id"/>"><s:property value="#p.title"/></a></h2>
							<p><s:property value="#p.introduction"/></p>
							<a href="product/p?pid=<s:property value="#p.id"/>" class="view">查看全部</a>
						</div>
						<a href="product/p?pid=<s:property value="#p.id"/>">
						<img src="<%=path %>/<s:property value="#p.cover"/>" alt="Image" style="float:right;height:222px;width: 222px"/>
						</a>
					</div>
				</li>
				</s:iterator>
			</ul>
		</div>
	</div>
</body>
</html>