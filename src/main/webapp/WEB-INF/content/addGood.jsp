<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加书籍</title>
</head>
<body>


<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h1><font><font >
					书籍管理
				</h1>
			</div>
			
			<nav class="navbar navbar-default" role="navigation"></nav></div></div></div>
<form action="${pageContext.request.contextPath }/addGoods" method="post" enctype="multipart/form-data">
		<table width="100%" height="90%" border="0" cellpadding="5" cellspacing="0" class="main_tabbor">
		<!-- 数据展示区 -->
			<tr valign="top">
				<td height="20">
					<table class="hovertable">
						<tr >
							<th>图片1</th>
							<th>图片2</th>
							<th>编号</th>
			  				<th>书名</th>
			  				<th>介绍</th>
			  				<th>价格</th>
							<th></th>
						</tr >
						<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
						  <td><input type="file" name="picture"></td>
						  <td><input type="file" name="picture1"></td>
						  <td><input type="text" name="good_id"></td>
						  <td><input type="text" name="good_name"></td>
						  <td><input type="text" name="good_introduce"></td>
						  <td><input type="text" name="good_price"></td>
						  <td><input type="submit" value="添加"></td>
						</tr>
				  </table>
			</td>
		  </tr>
		</table>
	</form>
	
</body>
</html>