<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>首页</title>

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
        	<li class="active"><a href="index"><font  >首页</font></a></li>
            <li><a href="showGoods">书籍列表</a></li>
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

<div class="col-md-8">
					<div class="carousel slide" id="carousel-90178">
						<ol class="carousel-indicators">
							<li class="active" data-slide-to="0" data-target="#carousel-90178">
							</li>
							<li data-slide-to="1" data-target="#carousel-90178">
							</li>
							<li data-slide-to="2" data-target="#carousel-90178">
							</li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img alt="旋转木马首饰" style="width:100%" src="img/index/index1.jpg">
								<div class="carousel-caption">
									
								</div>
							</div>
							<div class="item">
								<img alt="转盘自举二" style="width:100%" src="img/index/index2.jpg">
								<div class="carousel-caption">
									
								</div>
							</div>
							<div class="item">
								<img alt="旋转木马引导第三" style="width:100%" src="img/index/index3.jpg">
								<div class="carousel-caption">
									
									
								</div>
							</div>
						</div> <a class="left carousel-control" href="#carousel-90178" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-90178" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
					<div class="row">
						<div class="col-md-4">
							<div class="thumbnail">
								<img alt="引导缩略图第一" src="img/index/1001.jpg">
								<div class="caption">
									<h3><font><font>
										《小王子》
									</font></font></h3>
									<p><font><font>
										《小王子》是法国作家安托万·德·圣·埃克苏佩里于1942年写成的著名儿童文学短篇小说。本书的主人公是来自外星球的小王子。
									</font></font></p>
									<p>
										<a class="btn btn-primary" href="${pageContext.request.contextPath }/showCollect?user_id=${sessionScope.user.user_id }&user_name=${sessionScope.user.user_name }&good_name=${requestScope.good.good_name }&good_price=${requestScope.good.good_price}&good_id=${requestScope.good.good_id }&good_introduce=${requestScope.good.good_introduce}"><font><font>收藏</font></font></a> <a class="btn" href="#"><font><font>详情</font></font></a>
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="thumbnail">
								<img alt="引导缩略图二" src="img/index/2001.jpg">
								<div class="caption">
									<h3><font><font>
										《海上灵光》摄影随笔集
									</font></font></h3>
									<p><font><font>
										许嵩镜头下的西方文明古国希腊 + 国际时尚杂志《FIGARO》摄影团队镜头下的行者许嵩，两相结合而成一部全方位的旅行视觉日记。
									</font></font></p>
									<p>
										<a class="btn btn-primary" href="${pageContext.request.contextPath }/showCollect?user_id=${sessionScope.user.user_id }&user_name=${sessionScope.user.user_name }&good_name=${requestScope.good.good_name }&good_price=${requestScope.good.good_price}&good_id=${requestScope.good.good_id }&good_introduce=${requestScope.good.good_introduce}"><font><font>收藏</font></font></a> <a class="btn" href="#"><font><font>详情</font></font></a>
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="thumbnail">
								<img alt="引导缩略图第三" src="img/index/3001.jpg">
								<div class="caption">
									<h3><font><font>
										《三体》
									</font></font></h3>
									<p><font><font>
										《三体》是刘慈欣创作的系列长篇科幻小说，由《三体》、《三体Ⅱ·黑暗森林》、《三体Ⅲ·死神永生》组成，第一部于2006年5月起在《科幻世界》杂志上连载，第二部于2008年5月首次出版，第三部则于2010年11月出版。
									</font></font></p>
									<p>
										<a class="btn btn-primary" href="${pageContext.request.contextPath }/showCollect?user_id=${sessionScope.user.user_id }&user_name=${sessionScope.user.user_name }&good_name=${requestScope.good.good_name }&good_price=${requestScope.good.good_price}&good_id=${requestScope.good.good_id }&good_introduce=${requestScope.good.good_introduce}"><font><font>收藏</font></font></a> <a class="btn" href="#"><font><font>详情</font></font></a>
									</p>
								</div>
							</div>
						</div>
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

    <script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/scripts.js"></script>
  </body>
</html>