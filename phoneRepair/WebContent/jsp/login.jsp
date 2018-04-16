<%@page import="com.etc.repair.util.CookieUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>登录</title>
<script type="text/javascript" src="../js/jquery-1.11.3.min.js">

</script>

<link href="../css/login/ec.css" rel="stylesheet" type="text/css"> 
<link href="../css/login/common_002.css" rel="stylesheet" type="text/css"> 
<link href="../css/login/dialog.css" rel="stylesheet" type="text/css"> 
<link href="../css/login/dialogEMUIV6.css" rel="stylesheet" type="text/css"> 
<link href="../css/login/zh-cn.css" rel="stylesheet" type="text/css"> 
<link href="../css/login/common.css" rel="stylesheet" type="text/css"> 
<script type="text/javascript">var localHttps="https://hwid1.vmall.com/CAS";var currentSiteID="1";</script>
<body class="login themeName-red">
<div>
<!-- 头部  -->
<div class="customer-header">
	<div class="head_center">
			    <div class="main-logo adHeadPicContainer">
					<img src="../img/logo.png" width=50px height=50px class="adHeadPic">
				</div>
				<div class="website-name" style="color:#999;">
					<span class="logo_line"></span>
					<b style="font-size: 18px;margin-top: -2px;float: left;color:#cccccc;">|</b>
					<b style="font-size: 18px;margin-top: -1px;float: left; margin-left:18px;color:#333333">咻一修</b>
				</div>
	</div>	
</div>
<!--登录 -->
<div class="login_bg">
	<div class="g">
		<div style="background-image: url('./login/5.jpg');" class="login_content_bg"></div>
			<div class="login-area login-right login-area-box"> 
					<div class="h">
						<span class="loginTitle actived loginTitle-left" data-type="account">帐号登录</span>
					</div>
						<div class="b-account">
							<div class="login-form-marginTop">
								<div class="form-edit-area">
								<form action="/phoneRepair/user?method=login" method="post" id="form">
									<table cellspacing="0" cellpadding="0" border="0">
										<tbody>
										<%
											Cookie [] cookie = request.getCookies();
											String name1 = "";
											String pass1 = "";
											if(cookie != null){
												name1 = CookieUtil.getCookie(cookie,"username");
												pass1 = CookieUtil.getCookie(cookie, "password");
											}
										
										
										%>
											<tr class="user-input-tr">
												<td>
												<label class="lb_opacity_Class" style="display: block; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 0px;" for="login_userName">
												<div style="border: medium none; background: transparent none repeat scroll 0% 0%; cursor: text; margin: 2px; color: rgb(204, 204, 204);"  class="text vam"></div>
												</label>
												<input autocomplete="off" class="text vam" id="login_userName" name="userAccount" maxlength="50" validator="validator11506302243740" style="z-index: 1;" type="text" value="${cookie.username.value }" placeholder="请输入手机号码 "></td>
											</tr>
											<tr><td><div id="msg_username" style="display:block;width:100px;height:20px;color:red;"></div></td></tr>
											
											<tr class="user-input-tr">
												<td>
												<label class="lb_opacity_Class" style="display: block; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 0px;" for="login_password">
												<div style="border: medium none; background: transparent none repeat scroll 0% 0%; cursor: text; margin: 2px; color: rgb(204, 204, 204);" class="text vam"></div>
												</label>
												<input id="login_password" autocomplete="off" class="text vam" name="password" maxlength="32" validator="validator21506302243741" style="z-index: 1;" type="password" value="${cookie.password.value }" placeholder="请输入密码"/>
												</td>
											</tr>
											<tr><td><div id="msg_login_password" style="display:block;width:100px;height:20px;color:red;"></div></td></tr>
											
											<tr class="user-input-tr">
												<td>
												<label class="lb_opacity_Class" style="display: block; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 0px;" for="login_userName">
												<div style="border: medium none; background: transparent none repeat scroll 0% 0%; cursor: text; margin: 2px; color: rgb(204, 204, 204);"  class="text vam"></div>
												</label>
												<input autocomplete="off" class="text vam" id="login_msg" name="msg" maxlength="50" validator="validator11506302243740" style="z-index: 1;width:50%;float:left" type="text" placeholder="请输入验证码 ">
												<img src="/phoneRepair/code" id="msg_picture" style="width:49%;"/>
												</td>
											</tr>
							                <tr><td><div id="msg_login_msg" style="display:block;width:100px;height:20px;color:red;"></div></td></tr>
											
											<tr>
												<td class="mt-checkbox">
													<input class="checkbox vam" id="remember_name" name="remember_name" value="ok"  type="checkbox"><label class="vam" for="remember_name">记住帐号</label>
													<div id="remeberTip"></div>
												</td>
											</tr>
											<tr>
												<td>
													<div style="margin-bottom:0px;"><span class="vam error" id="login_msg1" style="display:block"></span></div>
													<input class="button-login" id="btnLogin" value="登录" type="submit"><div id="msg_login"></div>
													<img class="load" src="login/loading3.gif">
												</td>
											</tr>
										</tbody>
									</table>
									</form>
									<div style="width:150px;height:20px;"></div>
									<div style="display:block;width:150px;height:50px;float:right;">
									<a href="/phoneRepair/jsp/regist.jsp" style="color:red;">还没有账号？去注册</a></div>
								</div>
							</div>
						</div>
				</div>
			</div>	
		</div>
	</div>
<div>
<!-- 底部  -->

	<div class="wp ft">
				<p>Copyright @ 2011-2017  版权所有   违者必究</p>
				<p></p>	
	</div>
</div>
<div id="layer">
	<div class="mc"></div>
</div>

<div id="selectCountryCodeDiv">

</div>
<div class="loginmask" style="display: none;">
		<div>
			<span>登录中...</span>
		</div>
</div>
</body>
</html>

<script type="text/javascript">
	$(function(){
		$("#msg_picture").click(function(){
			$("#msg_picture").attr({src:"/phoneRepair/code?id="+Math.random()});
		});
		/* function changCode(img){
			img.src="/phoneRepair/code?id="+Math.random();
		} */
		$("#form").submit(function(){
			var username = $("#login_userName");
			var password = $("#login_password");
			var msg = $("#login_msg");
			if(username.val()==""){
				$("#msg_username").text("用户名不能为空!");
				return false;
			}
			if(password.val()==""){
				$("#msg_login_password").text("密码不能为空！");
				return false;
			}
			if(msg.val()==""){
				$("#msg_login_msg").text("验证码不能为空！");
				return false;
			}
		});
		 
		$("#login_userName").blur(function(){
			var username = $("#login_userName");
			if(username.val()==""){
				$("#msg_username").text("用户名不能为空!");
			}else{
				$("#msg_username").text("");
			}
		});
		$("#login_password").blur(function(){
			var password = $("#login_password");
			if(password.val()==""){
				$("#msg_login_password").text("密码不能为空！");
			}else{
				$("#msg_login_password").text("");
			}
		});
		$("#login_msg").mouseout(function(){
			var msg = $("#login_msg").val();
			//alert(msg);
			//向后台发送要处理的数据
			$.ajax({
				   url: "/phoneRepair/user",//目标地址
				   data: "method=getCode&msg="+msg, //传输的数据
				   type: "POST",//请求方式
				   success: function(data){
				     if(data==1){
				    	 $("#msg_login_msg").text("");
				     }else if(data==0){
				    	 $("#msg_login_msg").text("验证码错误!");
				     }
				   }
		 	});
		});
		
	});
	
</script>