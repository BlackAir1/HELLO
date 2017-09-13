<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>登录界面</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
   
    
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.js"></script>
    <script type="text/javascript">
  	$(document).ready(function(){
		if($.cookie("rmbUser")=="true"){
			$("#checkbox").attr("checked",true);
			$("#loginname").val($.cookie("name"));
			$("#password").val($.cookie("pwd"));
			
		}
		
	});

	function Save(){
		if($("#checkbox:checked").length==1){
			var str_loginname=$("#loginname").val();
			var str_password=$("#password").val();
			$.cookie("rmbUser","true",{expires:7});
			$.cookie("name",str_loginname,{expires:7});
			$.cookie("pwd",str_password,{expires:7});
		}else{
			$.cookie("rmbUser","false",{expires:-1});
			$.cookie("name","",{expires:-1});
			$.cookie("pwd","",{expires:-1});
		}
		
	};
	</script>

  </head>
  <body>
	<div id="web_bg" class="ground"> 
	<img style="position:fixed;" src="img/login/background.jpg" height="100%" width="100%" /> 
	</div>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h1 style="text-align:center"><font><font color="black">
				当当书城</font></font>
				</h1>
			</div>
			<div class="row">
				<div class="col-md-4">
				</div>
				

<div class=" col-md-4 ">
<font >${requestScope.changeMessage }</font>
<font >${requestScope.success }</font>
<font >${requestScope.message }</font>
	<div class="pos"></div>
			<h3 align="center"> 用户登录</h3>	
					<form class="form-horizontal" role="form" action="login" method="post">
						<div class="form-group">
							 
							<label for="user_num" class="col-sm-2 control-label"><font><font>
								账号
							</font></font></label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="loginname" name="user_num1" placeholder="请输入账号">
							</div>
						</div>
						<div class="form-group">
							 
							<label for="user_password"  class="col-sm-2 control-label"><font><font>
								 密码						</font></font></label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="password" name="user_password1"  placeholder="请输入密码">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									 
									<label>
										<input type="checkbox" id="checkbox" name="remember_password"><font><font> 记住密码
									</font></font></label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								 
								<input type="submit" class="btn btn-default" onclick="Save()" value="登录	"><font><font>
									
								</font></font>
	<div class="col-sm-offset-5 col-sm-9"><h5 ><font ><a href="register" >
注册账号</a><a href="find" >
忘记密码
	</a><a href="change" >修改密码</a><br>用户登录<a href="managerLogin1" >管理员登录</a></font></h5></div>					</div>
						</div>
					</form>
					<div class="row">
						<div class="col-md-6">
						</div>
						<div class="col-md-6">
						</div>
					</div>
				</div>
				<div class="col-md-4">
				</div>
			</div>
		</div>
	</div>
</div>

    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>