<%@page import="com.etc.repair.util.CookieUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>百度糯米商户中心</title>
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/normalize-css-pkg__7094b92.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/lbc-base-pkg__78af025.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/login-package__61dab3d.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/lbc-overlay-pkg__0fc0082.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/jquery-ui-resizable-pkg__ea1de83.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/jquery-form-validator-pkg__bb6d5f3.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/jquery-ui-pkg__7165df7.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/jquery-ui-dialog-pkg__7e24435.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/jquery-ui-pbox-pkg__0ba53e0.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/lbc-datatables-pkg__0603c0d.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/lbc-tooltip-pkg__e2a69df.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/lbc-select2-pkg__bdb004c.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/lbc-tabs-pkg__209ca68.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/jquery-ui-datepicker-pkg__dc5cf96.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/lbc-datepicker-pkg__eb47669.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/jquery-ui-daterange-pkg__f235954.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/lbc-page-pkg__4fc5da8.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/lbc-webuploader-pkg__7eaf0fa.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/webuploader-pkg__2e740e2.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/lbc-frame-pkg__1ae4ecc.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/lbc-slide-pkg__433605f.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/slogin/lbc-verification-code-pkg__5dfacfb.css">
<script type="text/javascript" src="/phoneRepair/js/jquery-1.11.3.min.js"></script>
</head>
<body>
	<header class="header-box-background">
		<section class="header-box">
			<hgroup class="logo-box">
				<div class="nuomi-logo">
					<img src="/phoneRepair/img/logo.png" width="50px" height="50px" style="margin-top:10px">
				</div>
				<h2 class="merchant-logo">
					<a href="#">咻一修</a>
				</h2>
			</hgroup>
		</section>
	</header>
	
	<section class="login-content-box">

		<div class="left-shadow"></div>
		<div class="right-shadow"></div>
		<!--<![endif]-->
		<div class="add-area">
			<div class="carousel fade" style="width: 1440px; height: 428px;">
				<!-- Indicators -->
				<ul class="carousel-indicators" style="left: 693px;">
					<li data-slide-to="0" class="active"></li>
					<li data-slide-to="1" class=""></li>
					<li data-slide-to="2" class=""></li>
				</ul>


				<div class="carousel-inner">
					<div class="item active"
						style="width: 1440px; height: 428px; display: block;">
						<a href="#"> <img src="/phoneRepair/img/slogin/ad4__cd7bfed.jpg"
							id="login-ad1">
						</a>
					</div>
					<div class="item"
						style="width: 1440px; height: 428px; display: block;">
						<a href="#" target="_blank"> <img
							src="/phoneRepair/img/slogin/ad1__6e2dd73.gif" id="login-ad2">
						</a>
					</div>
					<div class="item"
						style="width: 1440px; height: 428px; display: block;">
						<a href="#" target="_blank"> <img
							src="/phoneRepair/img/slogin/ad3__48cdca1.gif" id="login-ad3">
						</a>
					</div>
				</div>

				<!-- Controls -->
				<a class="left carousel-control" style="display: none;"> <span
					class="glyphicon glyphicon-chevron-left"></span>
				</a> <a class="right carousel-control" style="display: none;"> <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
		<div class="login-box">
			<div id="login" class="login-area">
				<ul class="login-tab">
					<li><a class="login-tab-head cur" href="#login-acccount">账号登录</a></li>
					<!-- <li><a class="login-tab-head" href="#login-phone">手机号登录</a></li> -->
				</ul>
				<div id="login-acccount" class="login-tab-cnt uc-common-login"
					style="display: block;">

					<div id="common-login"
						class="login uc-common-login-small new-account-login"
						style="padding-top: 30px;">
						<div class="login-shadow"></div>
						<span class="watermark"></span>
						<form id="uc-login" action="/phoneRepair/store?method=login" method="post">
							<!-- 判断cookie中是否有自动登录的用户名密码 -->
							<%
							Cookie [] cookies = request.getCookies();
							String username = CookieUtil.getCookie(cookies,"username");
							String password = CookieUtil.getCookie(cookies,"password");
    						%>
							<div class="login-info">
								<p id="login-error" class="error"></p>
								<div class="account">
									<span></span> <label class="input-label name-pwd-label">用户名</label>
									<input id="susername" name="susername"
										autocomplete="off" placeholder="用户名" tabindex="1"
										maxlength="100" type="text" value="<%=username %>">
								</div>
								<p id="account-error" class="error"></p>
								<div class="password">
									<span></span>
									<div id="uc-safe-pwd-input" class="safe-input">
										<label class="input-label name-pwd-label">密码</label> <input
											name="spassword" id="spassword" autocomplete="off"
											placeholder="密码" tabindex="2"
											style="box-sizing: border-box; width: 100%; height: 100%; padding-left: 0;"
											type="password" value=<%=password %>>
									</div>
								</div>
								<p id="password-error" class="error"></p>
								<div class="token new-token"></div>
								<p id="token-error" class="error"></p>
							</div>
							<div class="login-action">
								<div id="is-auto-login-container" class="is-auto-login">
									<label for="is-auto-login" style="display: none;">30天内免登录</label>
									<label class="checkbox"><input id="is-auto-login"
										name="isAutoLogin" checked="checked" value="1" type="checkbox">
										<span class="icon"></span> 记住账户</label>
									<div class="fr">
										<a href="#"
											target="_blank">忘记密码</a>
									</div>
								</div>
								<input id="submit-form" class="submit" value="登  录"
									type="submit">
								<div class="other">
									<div class="fl">
										<div class="protocol">
											<a href="#"
												target="_blank">同意并接受商户协议</a>
										</div>
									</div>
									<div class="fr">
										<a
											href="/phoneRepair/jsp/sregist.jsp"
											target="_blank">免费入驻</a>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div id="login-phone" class="login-tab-cnt" style="display: none;">
					<form class="login-phone-form">
						<p class="error-phone error"></p>
						<div class="phone-account">
							<span></span> <label class="input-label name-pwd-label">手机号</label>
							<input id="phone-number" placeholder="手机号" maxlength="11"
								type="text">
						</div>
						<p class="error-img-verify-code error"></p>
						<div class="img-verify-code">
							<label class="input-label ">验证码</label> <input
								class="img-verify-code-input" placeholder="验证码" maxlength="4"
								type="text"> <img class="verify-img"
								src="/phoneRepair/img/slogin/1506300324235.png">
						</div>
						<p class="error-verify-code error"></p>
						<div class="phone-code">
							<label class="input-label ">输入短信验证码</label> <input
								class="verify-code" placeholder="输入短信验证码" maxlength="6"
								type="text"> <input class="verify-btn" value="获取验证码"
								loadtype="button" type="button">
						</div>
						<div class="login-link" style="margin-bottom: 15px;">
							<div class="fl">
								<label class="checkbox"><input id="is-auto-login-phone"
									name="isAutoLogin" value="1" type="checkbox">
									<span class="icon"></span> 记住账户 </label>
							</div>
							<div class="fr" style="margin-top: 5px;">
								<a href="#"
									target="_blank">忘记密码</a>
							</div>
						</div>
						<input type="submit" class="submit-btn-phone" value="登录"/>
						<div class="login-link">
							<div class="#" target="_blank">同意并接受商户协议</a>
							</div>
							<div class="fr">
								<a
									href="#"
									target="_blank">免费入驻</a>
							</div>
						</div>
					</form>
					<div
						style="position: absolute; left: -1px; bottom: -1px; z-index: 0; width: 0px; height: 0px; overflow: hidden; visibility: hidden; display:;">
						<iframe name="phone_iframe" src="/phoneRepair/img/slogin/v3Jump_002.htm"
							style="width: 0px; height: 0px; visibility: hidden; display: none;"></iframe>
					</div>
					<div
						style="position: absolute; left: -1px; bottom: -1px; z-index: 0; width: 0px; height: 0px; overflow: hidden; visibility: hidden; display:;">
						<iframe name="uc-login-iframe" src="/phoneRepair/img/slogin/v3Jump_002.htm"
							style="width: 0px; height: 0px; visibility: hidden; display: none;"></iframe>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer class="footer-box-background">
		<div class="footer-bd">
			<ul class="footer-help">
				<li><a class="first" href="javascript:void(0);">
						<h4>电话验证</h4> <span>400-028-0088</span>
				</a></li>
				<li class="divide"></li>
				<li><a class="second" href="javascript:void(0);">
						<h4>商家咨询( 9:00-22:00 )</h4> <span>4006-028-111</span>
				</a></li>
				<li class="divide"></li>
				<li><a class="third" href="javascript:void(0);">
						<h4>商家入驻热线( 9:00-18:00 )</h4> <span>4009-208-258</span>
				</a></li>
				<li class="divide"></li>
				<li><a class="last" href="javascript:void(0);">
						<h4>廉政邮箱</h4> <span>BDNM_jiancha@baidu.com</span>
				</a></li>
			</ul>
		</div>
		<div class="footer-ft">
			<p class="link">
				<a href="#" target="_blank">关于糯米</a> <b>|</b>
				<a href="#" target="_blank">市场合作</a> <b>|</b>
				<a href="#" target="_blank">商家后台手机版</a> <b>|</b> <a
					href="#" target="_blank">常见问题</a>
			</p>

			<p class="copyright">
				<span title="SJSWT39-170.opi.com">©</span> 2017
				&nbsp;京ICP证030173号&nbsp;京公网安备11010802014106号&nbsp;工商注册号110108002734659
			</p>
		</div>
	</footer>



	<div class="" id="account-info-dialog" style="display: none;">
		<div class="alert alert-warning" role="alert">此手机号绑定多个账号，请选择账号登录</div>
		<div class="account-info-list"></div>
	</div>
	<div class="" id="ztc-info-dialog" style="display: none;">
		<div class="account-info-list"></div>
	</div>
	<div id="unbind-account-dialog" style="display: none;">
		<h3>手机号暂未绑定任何账号，不能直接登录</h3>
		<button class="btn btn-major-min bind-account" type="button">绑定已有账号</button>
		<button class="btn btn-major-min register" type="button">去注册</button>
	</div>
	
</body>
<script type="text/javascript">
	//页面加载完毕
	$(function(){
		//判断用户名,密码不能为空
		$("#susername").blur(function(){
			if($("#susername").val()==""){
				$("#account-error").text("用户名不能为空");
			}else{
				$("#account-error").text("");
			}
		});
		$("#spassword").mouseout(function(){
			if($("#spassword").val()==""){
				$("#password-error").text("密码不能为空");
			}else{
				$("#password-error").text("");
			}
		});
		//表单提交
		$("#uc-login").submit(function(){
			if($("#susername").val()==""){
				$("#account-error").text("用户名不能为空");
				return false;
			}
			if($("#spassword").val()==""){
				$("#password-error").text("密码不能为空");
				return false;
			}
			return true; 
		});
	});
</script>
</html>
