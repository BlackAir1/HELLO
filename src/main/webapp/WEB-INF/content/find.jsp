<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>找回密码</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
  <body>
  


<div id="web_bg" class="ground"> 
<img style="position:fixed;" src="img/register/background.jpg" height="100%" width="100%" /> 

  </div>


    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h1 align="center">
					找回密码
				</h1>
			</div>
			<div class="row">
				<div class="col-md-4">
				</div>
				<div class="col-md-4">
					<form class="form-horizontal" role="form" action="findPassword" >
						<div class="form-group">
							 
							<label for="user_num3" class="col-sm-2 control-label"><font><font>
								账号

							</font></font></label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="user_num3" name="user_num" placeholder="请输入账号">
								<font >${requestScope.numwrong }</font>
							</div>
						</div>					
<div class="form-group">							 
							<label for="user_phone3" class="col-sm-2 control-label"><font><font>
								邮箱
							</font></font></label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="user_phone3" name="user_phone" placeholder="请输邮箱">
							</div>
						</div>


					






<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								 
								<button type="submit" class="btn btn-default but"><font><font>
									找回								</font></font></button>
									<a href="login1">返回登陆界面</a>	
									<font color="red">${requestScope.findFail }</font>
									<font color="red">${requestScope.findpwd.user_password }</font>	
									<font color="red">${requestScope.message }</font>
									

									
							</div>
						</div>
					</form>
				</div>
				<div class="col-md-4">
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