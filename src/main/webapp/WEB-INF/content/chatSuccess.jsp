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
<jsp:useBean id="now" class="java.util.Date" scope="page"/>
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
            <li><a href="${pageContext.request.contextPath }/showGoods">所有商品</a></li>
            <li class="active"><a href="${pageContext.request.contextPath }/cart?user_id=${sessionScope.user.user_id }">查看购物车</a></li>
			<li><a href="${pageContext.request.contextPath }/goCollect?user_id=${sessionScope.user.user_id }">查看收藏夹</a></li>
			<li><a href="${pageContext.request.contextPath }/insertOrder?user_id=${sessionScope.user.user_id }">我的订单</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    其他
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="${pageContext.request.contextPath }/change">密码修改</a></li>
                    <li><a href="${pageContext.request.contextPath }/register">账户注册</a></li>
                    <li><a href="${pageContext.request.contextPath }/find">找回密码</a></li>
                    <li class="divider"></li>
                    <li><a href="#">联系客服</a></li>
                    <li class="divider"></li>
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
				
<font >${requestScope.chatSuccess }</font>
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
							 
							<address>
								 <strong><font><font>Twitter的，公司</font></font></strong><br><font><font>。795 Folsom Ave，Suite 600 </font></font><br><font><font>San Francisco，CA 94107 </font></font><br> <abbr title="电话"><font><font>P :(</font></font></abbr><font><font> 123）456-7890
							</font></font></address>
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