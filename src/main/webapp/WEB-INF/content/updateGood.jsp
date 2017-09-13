<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "ht
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>书籍修改</title>
</head>
<body>
<body >
	
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h1><font><font >
					书籍修改
				</h1>
			</div>
			<nav class="navbar navbar-default" role="navigation"></nav>
	<div class="col-md-2">
	</div>
	<form action="${pageContext.request.contextPath }/updateGood" method="post" enctype="multipart/form-data">
	<input type="hidden" name=id value="${requestScope.good.id }">
	<table width="100%" height="90%" border="0" cellpadding="5" cellspacing="0" class="main_tabbor">
	  <!-- 数据展示区 -->
	  <tr valign="top">
	    <td height="20">
		  <table class="hovertable" border="1">
		    <tr class="main_trbg_tit" align="center">
		      <th>图片1</th>
		       <th>图片2</th>		
			  <th>编号</th>
			  <th>书名</th>
			  <th>介绍</th>
			  <th>价格</th>
			  <th></th>
			</tr>
			<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
				<td>
					
					<input type="file"  name="pictureFile"/> 
					
				</td>
					<td>
					
					<input type="file"  name="pictureFile1"/> 
					
				</td>
			  <td><input type="text" name="good_id" value="${requestScope.good.good_id }"></td>
			  <td><input type="text" name="good_name" value="${requestScope.good.good_name }"></td>
			  <td><input type="text" name="good_introduce" value="${requestScope.good.good_introduce}"></td>
			  <td><input type="text" name="good_price" value="${requestScope.good.good_price }"></td>
			  
			  
			  <td><input type="submit" value="更新书籍"></td>
			</tr>
		  </table>
		</td>
	  </tr>
	</table>
	
</form>
</div></div></div>
</body>
</html>