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

<script>  
  
var aData =["一星","两星","三星","四星","五星"];    
    
window.onload=function(){    
    var oDiv = document.getElementById("rank");    
    var aLi = oDiv.getElementsByTagName("li");    
    var oP = oDiv.getElementsByTagName("p")[0];    
    var i =0;    
    for(i=0;i<aLi.length;i++){    
        aLi[i].index = i;    
            aLi[i].onmouseover = function(){    
            oP.style.display = "block";    
            oP.innerHTML=aData[this.index];    
            for(i=0; i<=this.index;i++){    
                aLi[i].className="active";    
            }    
        };    
        aLi[i].onmouseout = function(){    
            oP.style.display = "";    
            for(i=0; i<aLi.length; i++){    
                aLi[i].className="";    
            }    
        };    
        aLi[i].onclick=function(){ 
        	document.getElementById("aaa").value=this.index+1;
            alert(this.index +1);    
        };    
    }    
    
};    
</script>
<style type="text/css">       
 *{margin: 0;padding: 0;}       
 .pingfen{ width: 135px; margin:10px auto; height:20px; position: relative;}       
 .pingfen ul{height:20px; margin-bottom: 10px;}       
 .pingfen li{ width: 20px; float: left; height: 20px; cursor: pointer; background:    url(star.png) no-repeat 0 0; list-style: none;}      
  .pingfen .active{background: url(star.png) no-repeat 0 -28px;}     
   .pingfen p{ position: absolute; top:24px; left: 0px; width: 134px; height: 28px;                    
   background: #fff; line-height: 28px; text-align: center; border:1px solid #333;             
    display:none;}  </style>  
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
        	<li><a href="${pageContext.request.contextPath }/index"><font color="black" >首页</font></a></li>
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
			   
    
	<form action="${pageContext.request.contextPath }/addChat"  >
	
	评分：<input type="text" readonly="readonly" id="aaa" name="grade">
	<div id="rank" class="pingfen">    
   		<ul >    
        	<li>★</li></br>    
        	<li>★★</li></br>    
        	<li>★★★</li></br>    
        	<li>★★★★</li></br>    
        	<li>★★★★★</li></br>    
    	</ul> 
    	<p>加载中</p>
    	
	</div>  
  
		建议：<textarea name="user_chat" style="width:200px;height:80px;"></textarea>
		<input type="hidden" name="user_id" value="${sessionScope.user.user_id }">	
		<input type="submit" value="提交">	
		
	</form>
	
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