<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8" />
<title>Contact Us - Cake Delights Web Template</title>
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
		<div>
			<h1>联系我们</h1>
			<div id="visitshop">
				<div>
					<p><span>Sweets from the heart</span> Treat your loveones</p>
					 <a href="" class="visit">visit the shop</a>
				</div>
			</div>
			<s:actionmessage/>
			<form action="user_leaveMsg" method="post">
				<p>如果您有需要欢迎给我们留言.</p>
				<input type="hidden" name="uid" value="<%=Math.random()%>">
				<input type="text" maxlength="30" name="username" value="Name" autocomplete="off" class="textcontact" onfocus="if (value =='Name'){value ='';}" onblur="if (value ==''){value='Name';}"/>
				<input type="text" maxlength="30" name="email" value="E-mail"autocomplete="off"  class="textcontact" onfocus="if (value =='E-mail'){value ='';}" onblur="if (value ==''){value='E-mail';}"/>
				<input type="text" maxlength="30" name="subject" value="Subject"autocomplete="off"  class="textcontact" onfocus="if (value =='Subject'){value ='';}" onblur="if (value ==''){value='Subject';}"/>
				<textarea name="content" id="content" cols="30" rows="10"></textarea>
				<input type="submit" value="" class="submit" style="cursor: pointer;"/>
			</form>
		</div>
	</div>
</body>
</html>