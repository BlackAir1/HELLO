<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>价格</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">
<script language='javascript'>
function dl(good_count)
{
	if (good_count=="")
	{alert('数量不能为空');
	document.from.good_count.focus();
	window.document.location.href="goodPrice";
	return false;}
}
</script>
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
				<h1><font><font color="black">
					当当书城</font></font>
				</h1>
			</div>
			<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
   
    <div>
        <ul class="nav navbar-nav">
        	<li><a href="${pageContext.request.contextPath }/index"><font >首页</font></a></li>
            <li class="active"><a href="${pageContext.request.contextPath }/showGoods">书籍列表</a></li>
            <li><a href="${pageContext.request.contextPath }/cart?user_id=${sessionScope.user.user_id }">购物车</a></li>
			<li><a href="${pageContext.request.contextPath }/goCollect?user_id=${sessionScope.user.user_id }">收藏夹</a></li>
			<li><a href="${pageContext.request.contextPath }/insertOrder?user_id=${sessionScope.user.user_id }">订单</a></li>
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
					
							
				<div class="col-md-1">
				</div>
				<div class="col-md-4">
					<img src="${pageContext.request.contextPath }/./img/good/all/${requestScope.good.good_image}" width=400 height=500/>
					<img src="${pageContext.request.contextPath }/./img/good/all/${requestScope.good.good_image1}" width=400 height=500/>
				</div>
				<div class="col-md-1">
				</div>
				<div class="col-md-4">
				
				<h1 align="left" ><font  ><strong>${requestScope.good.good_name }</strong></font></h1>
				<h2>详情</h2>${requestScope.good.good_introduce}
				<h3>单价</h3>￥<font color="red" size="60">${requestScope.good.good_price }</font>
				<form action="${pageContext.request.contextPath }/addCart">
				<font >${requestScope.notNull }</font><br>
				数量：<input type="text" name="good_count" >
				<input type="hidden" name="user_id" value="${sessionScope.user.user_id }">
				<input type="hidden" name="user_name" value="${sessionScope.user.user_name }">
				<input type="hidden" name="good_name" value="${requestScope.good.good_name }">
				<input type="hidden" name="good_price" value="${requestScope.good.good_price}">
				<input type="hidden" name="good_id" value="${requestScope.good.good_id }">
				<input type="hidden" name="good_total" value="${requestScope.good.good_price}">
				
				<input type="submit" value="加入购物车" onClick="javascript:return dl(good_count.value);">
				
				</form>
				<a href="${pageContext.request.contextPath }/showCollect?user_id=${sessionScope.user.user_id }&user_name=${sessionScope.user.user_name }&good_name=${requestScope.good.good_name }&good_price=${requestScope.good.good_price}&good_id=${requestScope.good.good_id }&good_introduce=${requestScope.good.good_introduce}">加入收藏夹</a>

				</div>	
				<div class="col-md-2">
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