<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>购物车</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">


  </head>
  <body>
  	<div id="web_bg" class="ground"> 
	<img style="position:fixed;" src="img/login/background.jpg" height="100%" width="100%" /> 
	</div>
 当前在线人数：
		<c:out value="${applicationScope.count }"></c:out>
欢迎${sessionScope.user.user_name }访问<br>
<font color="red">${requestScope.deleteSuccess }</font>
    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h1><font><font color="black">
				当当书城</font></font>
				</h1>
			</div>
			<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
   
    <div>
        <ul class="nav navbar-nav">
        	<li><a href="${pageContext.request.contextPath }/index"><font >首页</font></a></li>
            <li><a href="${pageContext.request.contextPath }/showGoods">书籍列表</a></li>
            <li><a href="${pageContext.request.contextPath }/cart?user_id=${sessionScope.user.user_id }">购物车</a></li>
			<li><a href="${pageContext.request.contextPath }/goCollect?user_id=${sessionScope.user.user_id }">收藏夹</a></li>
			<li  class="active"><a href="${pageContext.request.contextPath }/insertOrder?user_id=${sessionScope.user.user_id }">订单</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    其他
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="${pageContext.request.contextPath }/change">密码修改</a></li>
                    <li><a href="${pageContext.request.contextPath }/register">账户注册</a></li>
                    <li><a href="${pageContext.request.contextPath }/find">找回密码</a></li>
                    
                    <li><a href="${pageContext.request.contextPath }/login1">退出登录</a></li>
                </ul>
            </li>
        </ul>
    </div>
    </div>
</nav>
<div class="row">			
				<div class="col-md-2">
				</div>
							
	<div class="col-md-8">
				
<table class="hovertable">
<tr>
<th>订单编号</th><th>用户编号</th><th width="10%">用户姓名</th><th width="25%">订单时间 </th><th width="10%">订单总金额</th><th>星级</th><th>反馈</th><th>图片</th><th align="center" width="25%">操作</th>
</tr>

<c:forEach items="${requestScope.list_order }" var="order">

<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
 <td>${order.id}</td>
 <td>${order.user_id}</td>
 <td>${order.user_name}</td>
 <td>${order.order_time}</td>
 <td>${order.order_sum }</td>
 <td>${order.grade}</td>
 <td>${order.user_chat }</td>
 <td></td>
 <td width="120px">&nbsp&nbsp&nbsp<a href="${pageContext.request.contextPath }/deleteOrder?id=${order.id}"">取消订单</a> &nbsp&nbsp&nbsp
</tr>

</c:forEach>

<tr heigth="120px">
<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
<td><a href="${pageContext.request.contextPath }/chat">评价</a></td>
</tr>
</table>
</div>
			</div>
			<div class="row">
				<div class="col-md-4">
				</div>
				<div class="col-md-4">
				</div>
				<div class="col-md-4">
					<div class="row">
						<div class="col-md-8">
						</div>
						<div class="col-md-4">
							 
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

    <script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/scripts.js"></script>
  </body>
</html>