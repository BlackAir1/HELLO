<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>注册</title>

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
					账号注册
				</h1>
			</div>
			<div class="row">
				<div class="col-md-4">
				</div>
				<div class="col-md-4">
					<form class="form-horizontal" role="form" action="regist" method="post">
						<div class="form-group">
							 
							<label for="user_num" class="col-sm-2 control-label"><font><font>
								账号

							</font></font></label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="user_num" name="user_num" placeholder="请输入账号">
								<font >${requestScope.numwrong }</font>
							</div>
						</div>
						

<div class="form-group">
							 
							<label for="user_password" class="col-sm-2 control-label"><font><font>
								密码
							</font></font></label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="user_password" name="user_password" placeholder="请输入密码">
								<font >${requestScope.pwdwrong }</font>
							</div>
						</div>
						

<div class="form-group">
							 
							<label for="inputPassword4" class="col-sm-2 control-label"><font><font>
								再次输入密码
							</font></font></label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword4" name="user_secondpassword" placeholder="请再次确认密码">
								<font >${requestScope.spwdwrong }</font>
							</div>
						</div>
	

<div class="form-group">
							 
							<label for="user_name" class="col-sm-2 control-label"><font><font>
								姓名

							</font></font></label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="user_name" name="user_name" placeholder="请输入姓名">
								
							</div>
						</div>

<div class="form-group">
							 
							<label for="user_sex" class="col-sm-2 control-label"><font><font>
								性别

							</font></font></label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="user_sex" name="user_sex" placeholder="请输入性别">
								<font color="red">${requestScope.sexwrong }</font>
							</div>
						</div>
<div class="form-group">
							 
							<label for="user_phone" class="col-sm-2 control-label"><font><font>
								邮箱

							</font></font></label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="user_phone" name="user_phone" placeholder="请输入邮箱">
							</div>
						</div>


					






<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								 
								<button type="submit" class="btn btn-default but"><font><font>
									注册								</font></font></button>
	<a href="login1">返回登陆界面</a>						</div>
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