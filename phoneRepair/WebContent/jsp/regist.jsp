<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0266)https://hwid1.vmall.com/CAS/portal/userRegister/regbyphone.html?reqClientType=26&loginChannel=26000000&countryCode=cn&loginUrl=https%3A%2F%2Fhwid1.vmall.com%2FCAS%2Fportal%2Flogin.html&service=https%3A%2F%2Fwww.vmall.com%2Faccount%2Fcaslogin&lang=zh-cn&themeName=red -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>注册_咻一修帐号</title>
<link
	href="/https://hwid1.vmall.com/CAS/up/common/images/default/hwfavicon.ico"
	type="image/x-icon" rel="shortcut icon">
<link href="/phoneRepair/css/regist/dialog.css" rel="stylesheet"
	type="text/css">
<link href="/phoneRepair/css/regist/common.css" rel="stylesheet"
	type="text/css">
<link href="/phoneRepair/css/regist/zh-cn_css.css" rel="stylesheet"
	type="text/css">
<style type="text/css">
:root .footer>#box[style="width:100%;height:100%;position:fixed;top:0"]
	{
	display: none !important;
}
</style>
<script type="text/javascript">
	var localHttps = "https://hwid1.vmall.com/CAS";
	var currentSiteID = "1";
</script>
<script type="text/javascript" src="../js/jquery-1.11.3.min.js">
	
</script>
<style>
@font-face {
	font-family: uc-nexus-iconfont;
	src:
		url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.woff)
		format('woff'),
		url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.ttf)
		format('truetype')
}
</style>
</head>

<body class="reg themeName-red">


	<!-- 头部  -->

	<div class="head-background">
		<div class="head_center">


			<div class="main-logo adHeadPicContainer" style="width: 43px">
				<img src="/phoneRepair/img/logo.png" width="50px" height="50px"
					class="wihteBgPic">
			</div>
			<div class="website-name" style="color: #fff;">
				<b
					style="font-size: 18px; margin-top: -3px; float: left; color: #cccccc;">|</b>
				<b
					style="font-size: 18px; margin-top: -1px; float: left; margin-left: 18px; color: #ffffff">咻一修</b>
			</div>


		</div>
	</div>


	<div class="wp1 relative">
		<div class="register-content" id="registerForm"
			style="padding-top: 30px;">
			<div class="reg-tab clearFix" style="visibility: visible;">

				<a class="phone-wrap l sel" href="javascript:void(0)"
					onclick="gotoRegisterByPhoneLink()"> <i class="phone-icon"></i>
					<span id="tabPhone" class="tab-phone" style="width: 66px;">手机号</span>
				</a>
			</div>
			<div class="login r">
				已有咻一修帐号 <a href="/phoneRepair/jsp/login.jsp" class="login-a"
					title="登录">登录</a><span class="ar-eg-opposite">&gt;</span>
			</div>

			<form action="/phoneRepair/user?method=regist" method="post"
				id="form">
				<div class="reg-detail">
					<!-- 选择国家开始 -->

					<div class="input-container" id="chooseCountry">
						<div class="l input-left">国家</div>


						<div class="input-content" style="margin-left: 123px;">
							<div class="node-input ddrop-EMU5" id="selectCountryImg">
								<input type="hidden" value="1-cn"><span
									class="select-text ar-eg">中国</span><span class="suffix"
									style="color: rgb(0, 0, 0);"></span>
								<div class="select-ico select-ico-gray"></div>
								<ul class="dpmenu-EMU5 dpmenu-EMUI5-down"
									style="display: none; width: 297px; max-width: 281px;">
									<div class="flow-top"></div>
									<li data-other="undefined" data-value="1-cn">中国</li>
								</ul>
							</div>
							<div id="selectedCountry" style="display: none;">中国</div>


						</div>
					</div>

					<!--手机号码 -->

					<div class="input-container" id="phoneInputDiv-box">
						<div class="l input-left">
							<input id="countryCode" type="hidden" name="" autocomplete="off"
								value="0086">
							<div id="input_languageCode" class="ddrop-EMU5">
								<input type="hidden" value="0086"> <span
									class="select-text ar-eg">+86(中国)</span> <span class="suffix"
									style="color: rgb(0, 0, 0);"></span>
								<div class="select-ico select-ico-gray"></div>
								<ul class="dpmenu-EMU5 dpmenu-EMUI5-down"
									style="display: none; width: 136px;">
									<div class="flow-top"></div>
									<li data-other="undefined" data-value="0086">+86(中国)</li>
								</ul>
							</div>
						</div>

						<div class="r input-right"></div>

						<div class="input-content">

							<label class="lb_opacity_Class"
								style="display: block; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 10px;"
								for="username"></label>
							<div
								style="border: none; cursor: text; margin: 8px 0px 0px -15px; color: rgb(204, 204, 204); background: transparent;"
								tabindex="-1" class="text">
								<input id="username" placeholder="请输入电话号码" class="text"
									type="text" name="username" maxlength="50" tabindex="1"
									autocomplete="off" validator="validator11506300243018"
									style="z-index: 1;" />
							</div>

						</div>

					</div>
					<div id="msg_phone" class="error-tips-EMUI5"></div>


					<div class="input-container" id="errName">
						<div class="l input-left">姓名</div>

						<div class="input-content">
							<label class="lb_opacity_Class"
								style="display: block; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 0px;"
								for="name"><div
									style="border: none; cursor: text; margin: 2px; color: rgb(204, 204, 204); background: transparent;"
									tabindex="-1" class="text"></div></label> <input
								type="text" autocomplete="off" class="text"
								id="name" name="name" maxlength="32" tabindex="4"
								validator="validator21506300243018"
								style="z-index: 1;" placeholder="请输入姓名" />
						</div>
					</div>
					<div id="msg_name" class="error-tips-EMUI5"></div>



					<div class="input-container" id="errRandomCode-box">
						<div class="l input-left">图形验证码</div>

						<div class="r input-right">
							<img style="height: 43px; width: 90px" alt="验证码"
								src="/phoneRepair/code" onclick="chgRandomCodeForReset(this);">
							<b id="authCodeRight" class="r" datavalue="false"></b>
						</div>
						<div class="input-content">
							<label class="lb_opacity_Class"
								style="display: block; position: absolute; cursor: text; float: left; z-index: 1; padding-left: 0px; padding-top: 20px;"
								for="randomCode">
								<div
									style="border: none; cursor: text; margin: 2px; color: rgb(204, 204, 204); background: transparent;"
									tabindex="-2" class="text"></div>
							</label> <input id="randomCode" tabindex="2" class="text" type="text"
								name="formBean.randomCode" autocomplete="off"
								validator="validator51506300243029" style="z-index: 1;"
								placeholder="请输入验证码">
						</div>

					</div>

					<div id="randomCode_msg" class="error-tips-EMUI5"></div>


					<div class="input-container" id="errpassword-box">
						<div class="l input-left">密码</div>

						<div class="input-content">
							<label class="lb_opacity_Class"
								style="display: block; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 0px;"
								for="password"><div
									style="border: none; cursor: text; margin: 2px; color: rgb(204, 204, 204); background: transparent;"
									tabindex="-1" class="pwd-input text"></div></label> <input
								type="password" autocomplete="off" class="pwd-input text"
								id="password" name="pwd" maxlength="32" tabindex="4"
								onkeyup="onPwdKeyUp(this)" validator="validator21506300243018"
								style="z-index: 1;" placeholder="请输入密码" />
						</div>
					</div>
					<div id="msg_password" class="error-tips-EMUI5"></div>


					<div class="input-container " id="confirmpwdDiv-box">
						<div class="l input-left">确认密码</div>


						<div class="input-content">
							<label class="lb_opacity_Class"
								style="display: block; position: absolute; cursor: text; float: left; z-index: 2; padding-left: 0px; padding-top: 0px;"
								for="confirmPwd"><div
									style="border: none; cursor: text; margin: 2px; color: rgb(204, 204, 204); background: transparent;"
									tabindex="-1" class="text vam"></div> </label> <input id="confirmPwd"
								type="password" autocomplete="off" class="text vam"
								name="checkPwd" maxlength="32" tabindex="5"
								validator="validator31506300243019" style="z-index: 1;"
								placeholder="请确认密码" />
						</div>
					</div>
					<div id="msg_checkPassword" class="error-tips-EMUI5"></div>

					<div class="set-password">

						<!-- 提示信息 -->
						<div class="pwd-info">

							<div id="pwdLength" class="gray-tips-EMUI5 color66">
								密码至少8个字符（不超过32个）</div>

						</div>
						<div id="pwd-tips" class="normal-tips-EMUI5 color66">
							勿使用其他帐号的密码。</div>
					</div>
				</div>

				<!-- 按钮 -->
				<div class="reg-btn" align="center">
					<input type="submit" class="btn btn-reg sel" id="btnSubmit"
						name="submit" value="注册">
					<div id="register_msg" style="position: relative; left: 26%;"></div>
				</div>
		</div>
		</form>
	</div>

	<div class="box-shadow"></div>
	<input type="hidden" id="countryRegion" value="1-cn">
	<div id="selectCountryCodeDiv"></div>
	<div id="notCurrentSiteWarning"></div>


	<!-- 底部  -->

	<style>
.selectCountryImg {
	display: block;
	width: 30px;
	height: 30px;
	background:
		url("https://hwid1.vmall.com/CAS/up/rss_12/css/mobile/standard_rss/images/down.png?UP_CAS_2.5.3.300")
		no-repeat;
	background-position-y: 12px;
}
</style>
	<div class="wp1 ft">
		<div class="reg-content">
			<p class="footer">

				<a id="foot_EULA" class="rule" target="_blank">用户协议</a> <em
					class="foot_em">|</em> <a id="foot_privacy" class="rule"
					target="_blank">隐私政策</a> <a><em style="font-style: normal">|</em>
				</a><a style="padding: 0 10px;" target="blank">常见问题</a>
			</p>

			<p class="footer">Copyright&nbsp;©&nbsp;咻一修</p>

		</div>
	</div>
	</div>
</body>
<script type="text/javascript">
	function chgRandomCodeForReset(img) {
		img.src = "/phoneRepair/code?id=" + Math.random();
	}
	$(function() {
		var flag = false;
		/*校验*/
		//1.账号为手机号,账号不能重复
		$("#username").blur(function() {
			var username = "#username";
			if (!(/^1[3|4|5|7|8][0-9]{9}$/.test($("#username").val()))) {
				//alert(111);
				$("#username").val("");
				$("#msg_phone").text("请您输入正确的手机号");
				$("#phoneInputDiv-box").addClass("input-error-EMUI5");
				$("#msg_phone").css({
					display : "block"
				});
				flag = false;
			} else {
				//去判断账号唯一
				$.ajax({
					url : "/phoneRepair/user",
					data : {
						method : "isExistUser",
						username : username.val(),
					},
					error : function() {
					},
					success : function(data) {
						//如果存在账号
						if (data == 1) {
							$("#msg_phone").text("该手机号已被注册");
							$("#msg_phone").css({
								display : "block"
							});
							$("#msg_phone").css("color", "red");
							$("#username").val("");
							flag = false;
						}
						//如果不存在该账号
						if (data == 0) {
							$("#msg_phone").text("");
							$("#msg_phone").css({
								display : "none"
							});
							flag = true;
						}
					}

				});
			}
		});
	//用户名不能为空
		var name = $("#name");
		$("#name").blur(function(){
			if(name.val().trim()==""){
			$("#msg_name").text("姓名不能为空");	
			$("#errName").addClass("input-error-EMUI5");
			$("msg_name").css({
				display : "block"
			});
			$("#msg_name").css("color","red");
			flag = false;
			}else{
				$("#msg_name").text("");
				$("#msg_name").css({
					display : "none"
				});
				flag = true;
			}
		}); 
		//2.密码不能少于8位
		var password = $("#password");
		$("#password").blur(function() {
			if (!(/^\w{8,}$/.test(password.val()))) {
				$("#msg_password").text("密码不能小于8位");
				$("#errpassword-box").addClass("input-error-EMUI5");
				$("#msg_password").css({
					display : "block"
				});
				$("#msg_password").css("color", "red");
				$("#errpassword-box").removeClass("input-error-EMUI5");
				flag = false;
			} else {
				$("#msg_password").text("");
				$("#msg_password").css({
					display : "none"
				});
				flag = true;
			}
		});
		//3.确认密码
		
		$("#confirmPwd").blur(function() {
			if ($("#password").val() != $("#confirmPwd").val()) {
				$("#msg_checkPassword").text("两次密码不一致");
				$("#confirmpwdDiv-box").addClass("input-error-EMUI5");
				$("#msg_checkPassword").css({
					display : "block"
				});
				$("#msg_checkPassword").css("color", "red");
				flag = false;
			} else {
				$("#msg_checkPassword").text("");
				$("#msg_checkPassword").css({
					display : "none"
				});
				$("#errpassword-box").removeClass("input-error-EMUI5");
				flag = true;
			}
		});

		//4.验证码
		
		$("#randomCode").mouseout(
				function() {
					var msg1 = $("#randomCode").val();
					$.ajax({
						url : "/phoneRepair/user",
						data : {
							method : "getCode",
							msg:msg1
						},
						error : function() {
						},
						success : function(data) {
							if (data==1) {
								//验证码成功
								$("#randomCode_msg").text("");
								$("#randomCode_msg").css({
									display : "none"
								});
								$("#errRandomCode-box").removeClass("input-error-EMUI5");
								flag = true;
							} else {
								//验证码失败
								$("#randomCode_msg").text("验证码错误");
								$("#errRandomCode-box").addClass("input-error-EMUI5");
								$("#randomCode_msg").css({
									display : "block"
								});
								$("#randomCode_msg").css("color", "red");
								flag = false;
							}
						}

					});

				});
		//表单校验
		$("#form").submit(function() {
			//alert("111");
			var username = $("#username");
			if (!(/^1[3|4|5|7|8][0-9]{9}$/.test(username.val()))) {
				username.val("");
				$("#msg_phone").text("请您输入正确的手机号");
				$("#msg_phone").css("color", "red");
				$("#msg_phone").css({
					display : "block"
				});
				
				return false;
			}
			//用户名不能为空
			var name = $("#name");
			if(name.val().trim()==""){
				$("#msg_name").text("姓名不能为空");
				$("#msg_name").css("color","red");
				$("#msg_name").css({
					display : "block"
				});
				return false;
			}
			//2.密码不能少于8位
			var password = $("#password");
			if (!(/^\w{8,}$/.test(password.val()))) {
				$("#msg_password").text("密码不能小于8位");
				$("#msg_password").css("color", "red");
				$("#msg_password").css({
					display : "block"
				});
				
				return false;
			}

			//3.确认密码
			var repwd = $("#confirmPwd");
			if ($("#password").val() != repwd.val()) {//
				$("#msg_checkPassword").text("两次密码不一致");
				$("#msg_checkPassword").css("color", "red");
				repwd.val("");
				$("#msg_checkPassword").css({
					display : "block"
				});
				return false;
			}
			//4.验证码
			var code = $("#randomCode");
			if ($("#randomCode").val().length == 0) {
				$("#randomCode_msg").text("验证码不能为空");
				$("#randomCode_msg").css("color", "red");
				$("#randomCode_msg").css({
					display : "block"
				});
				
				return false;
			}else{
				$("#randomCode_msg").text("");
			}
		});

	});
</script>

</html>
