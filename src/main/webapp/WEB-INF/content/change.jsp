<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>修改密码</title>

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
					密码修改
				</h1>
			</div>
			<div class="row">
				<div class="col-md-4">
				</div>
				<div class="col-md-4">
					<form class="form-horizontal" role="form" action="changepwd" method="post">
						<div class="form-group">
							 
							<label for="user_name2" class="col-sm-2 control-label"><font><font>
								账号

							</font></font></label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="user_num2" name="user_num2" placeholder="请输入账号">
							</div>
						</div>
						

<div class="form-group">
							 
							<label for="user_password2" class="col-sm-2 control-label"><font><font>
								密码
							</font></font></label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="user_password2" name="user_password2" placeholder="请输入密码号">
							</div>
						</div>
						

<div class="form-group">
							 
							<label for="user_newpwd" class="col-sm-2 control-label"><font><font>
								输入新密码
							</font></font></label>
							
							<div class="col-sm-10">
								<input type="password" class="form-control" id="user_newpwd" name="user_newpwd" placeholder="请输入新密码">
								<font >${requestScope.cpwdwrong }</font>
							</div>
						</div>
	

<div class="form-group">
							 
							


					






<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								 
								<button type="submit" class="btn btn-default but"><font><font>
									修改								</font></font></button>
	<a href="login1">返回登陆界面</a>	<font>${requestScope.changeFail }</font>					</div>
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