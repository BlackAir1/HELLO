<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>书籍管理</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
  <body>
  	<div id="web_bg" class="ground"> 
	<img style="position:fixed;" src="img/login/background.jpg" height="100%" width="100%" /> 
	</div>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h1><font><font >
					书籍管理</font></font><small><font><font>Good Manage</font></font></small>
				</h1>
			</div>
			<nav class="navbar navbar-default" role="navigation">

		<table class="hovertable">
		<tr>
		
		<th>图片</th><th>编号</th><th>书名</th><th>介绍</th><th>价格</th><th>操作</th>
		</tr>
	<c:forEach items="${requestScope.good_list }" var="good">
		<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
			<td><img src="img/good/all/${good.good_image }" height="100"></td>
			<td>${good.good_id }</td>
			<td>${good.good_name }</td>
			<td>${good.good_introduce }</td>
			<td>${good.good_price }</a></td>
			<td width="120px">&nbsp&nbsp&nbsp<a href="${pageContext.request.contextPath }/deleteGoods/${good.good_id }">删除</a> &nbsp&nbsp&nbsp<a href="${pageContext.request.contextPath }/goUpdateGoods/${good.good_id }">修改</a></td>
		</tr>
		
	</c:forEach>
	<a href="login1">返回登录页面</a><br>
	<a href="addGood">添加书籍</a>
<h2>${requestScope.message }</h2>
</table>
</nav>
</div></div></div>
</body>
</html>