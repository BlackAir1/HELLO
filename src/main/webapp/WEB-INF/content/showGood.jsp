<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>书籍列表</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
  <body>
  	<div id="web_bg" class="ground"> 
	<img style="position:fixed;" src="img/login/background.jpg" height="100%" width="100%" /> 
	</div>
 当前在线人数：
		<c:out value="${applicationScope.count }"></c:out>
欢迎${sessionScope.user.user_name }访问
    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h1><font><font >
				当当书城</font></font>
				</h1>
			</div>
			<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
   
    <div>
        <ul class="nav navbar-nav">
        	<li><a href="index"><font  >首页</font></a></li>
            <li class="active"><a href="showGoods">书籍列表</a></li>
            <li><a href="cart?user_id=${sessionScope.user.user_id }">购物车</a></li>
            <li><a href="goCollect?user_id=${sessionScope.user.user_id }">收藏夹</a></li>
			<li><a href="insertOrder?user_id=${sessionScope.user.user_id }">订单</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    其他
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="change">密码修改</a></li>
                    <li><a href="register">账户注册</a></li>
                    <li><a href="find">找回密码</a></li>
                    
                    <li><a href="login1">退出登录</a></li>
                </ul>
            </li>
        </ul>
    </div>
    </div>
</nav>
			<div class="row">
		




<div class="col-md-8" >
					
					<div class="row">
						<div class="row">
		<div class="col-xs-12">
		<c:forEach items="${requestScope.good_list }" var="good">
		<div class="row">
		
						<div class="col-md-4">
						
							<div class="thumbnail">
								<img alt="引导缩略图第一" src="img/good/all/${good.good_image }" height="100">
								<div class="caption">
									<h3><font><font>
										<a href="${pageContext.request.contextPath }/goGoodPrice/${good.good_name }">${good.good_name }</a>
									</font></font></h3>
								</div>
							</div>
						</div>
		</div>
		
		</c:forEach>

						
						
					</div>
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

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>