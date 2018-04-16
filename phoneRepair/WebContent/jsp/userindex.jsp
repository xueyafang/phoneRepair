<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户中心- 咻一修</title>

<link rel="shortcut icon" href="/phoneRepair/img/logo.png">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="chrome=1,IE=Edge">
<meta name="Keywords" content="">
<meta name="Description" content="">
<meta name="baidu-site-verification" content="2x3g9fsDlz">
<meta name="applicable-device" content="pc">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/userindex/same.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/userindex/xcConfirm.css">
<!-- <link rel="stylesheet" href="/Public/Home/css/header.css" /> -->
<!-- 自定义CSS文件 部分 -->

<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/userindex/users-same.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/userindex/users-index.css">

<!-- 自定义CSS文件 结束 -->

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/list_jss/html5shiv.min.js"></script>

<!-- 自定义顶部js文件 部分 -->



<!-- 自定义顶部js文件 结束 -->

<style type="text/css">
:root .footer>#box[style="width:100%;height:100%;position:fixed;top:0"]
	{
	display: none !important;
}
</style>
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
<body>
	<!-- 头部部分 开始 -->
	<div class="header">
		<div class="header-out">
			<div class="header_top wrap">
				<link rel="stylesheet" type="text/css"
					href="/phoneRepair/css/userindex/widget-user.css">
				<div class="tabnav">
					<ul class="tabbd">
						<!-- <li class="by"><a href="/buy/cart.html"><i class="buycar"></i><span>(0)</span></a></li> -->
						<li class="tabbdli user-name"><a rel="nofollow"
							href="/phoneRepair/jsp/userindex.jsp">${user.name}<img
								src="/phoneRepair/img/headimg.jpg"
								onerror="javascript:this.src=&#39;/Public/User/default.jpg&#39;;">
						</a>
							<div class="drop-down"
								style="display: none; height: 48px; padding-top: 0px; margin-top: 0px; padding-bottom: 0px; margin-bottom: 0px;">
								<div class="all-drop-down">
									<p class="logout">
										<a rel="nofollow" href="/phoneRepair/user?menthod=outLogin"
											class="logout_a">退出登录</a>
									</p>
								</div>

							</div></li>
					</ul>
				</div>
				<script type="text/javascript">
					$(".quote-notice").hover(function() {
						var _this = $(this);
						var type = _this.attr('data-type');
					}, function() {
						$(this).find(".notice-list").stop().slideUp(300);
					});
					$(".user-name").hover(function() {
						var _this = $(this);
						_this.find(".drop-down").stop().slideDown(300);
					}, function() {
						var _this = $(this);
						_this.find(".drop-down").stop().slideUp(300);
					});
				</script>

			</div>
		</div>

		<!-- 头部部分 结束 -->

		<!-- 主体部分 开始 -->

		<div class="con wrap clearfix">

			<!-- 菜单 开始 -->
			<link rel="stylesheet" type="text/css"
				href="/phoneRepair/css/userindex/users-menu.css">

			<!--菜单 开始-->
			<div class="con-left">
				<div class="con-l-t">
					<a><img src="/phoneRepair/img/headimg.jpg"
						onerror="javascript:this.src=&#39;/Public/User/default.jpg&#39;;"
						title="点击编辑头像"></a>
					<p class="name">${user.name }
						<span class="novip">VIP</span>
					</p>
				</div>
				<div class="con-l-b">
					<ul class="level2">
						<li class="levelitem open">
							<h3 class="clearfix">
								<a>用户中心</a>
								<p>
									<span></span>
								</p>
							</h3>
							<ul class="level3">
								<li><a href="/phoneRepair/jsp/userinfo.jsp">个人信息</a></li>
								<li><a
									href="/phoneRepair/order?method=showOrders&uid=${user.uid }&currPage=1&pageSize=3">我的订单</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			<!--菜单 结束-->


			</script>
			<!-- 菜单 结束 -->

			<div class="con-right">
				<div class="con-r clearfix">
					<div class="con-r-l">
						<p class="time">
							<span class="account">帐号：${user.username}</span>
						</p>
						<p class="money">
							账户积分：<span>${user.score }</span>
						</p>
					</div>
					<div class="con-r-r">
						<span><a href="http://www.caobao.com/index/joins.html">维修店申请加盟</a></span>
					</div>
				</div>
			</div>
		</div>

		<!-- 主体部分 结束 -->


		<!-- 页脚部分 开始 -->
		<link rel="stylesheet" type="text/css"
			href="/phoneRepair/css/userindex/footer.css">

		<!--页脚 开始-->
		<div class="FF">
			<div class="footer wrap">
				<div class="row-fluids clearfix">
					<div class="span7">
						<h3>故障分类：</h3>
						<ul class="clearfix">
							<li class="nLi">
								<h4>屏幕</h4>
								<ol>
									<li><a target="_blank"
										href="http://www.caobao.com/fault/1.html" title="屏碎 显示正常">屏碎
											显示正常</a></li>
									<li><a target="_blank"
										href="http://www.caobao.com/fault/2.html" title="手机屏幕失灵">手机屏幕失灵</a></li>
								</ol>
							</li>
							<li class="nLi">
								<h4>电池/充电/开机</h4>
								<ol>
									<li><a target="_blank"
										href="http://www.caobao.com/fault/3.html" title="续航时间不足">续航时间不足</a></li>
									<li><a target="_blank"
										href="http://www.caobao.com/fault/7.html" title="手机不能开机">手机不能开机</a></li>
									<li><a target="_blank"
										href="http://www.caobao.com/fault/8.html" title="不充电不联机">不充电不联机</a></li>
								</ol>
							</li>
							<li class="nLi">
								<h4>按键</h4>
								<ol>
									<li><a target="_blank"
										href="http://www.caobao.com/fault/4.html" title="按开机键不能开机">按开机键不能开机</a></li>
									<li><a target="_blank"
										href="http://www.caobao.com/fault/9.html" title="手机HOME键失灵">手机HOME键失灵</a></li>
								</ol>
							</li>
							<li class="nLi">
								<h4>声音/震动</h4>
								<ol>
									<li><a target="_blank"
										href="http://www.caobao.com/fault/5.html" title="手机听筒没有声音">手机听筒没有声音</a></li>
									<li><a target="_blank"
										href="http://www.caobao.com/fault/6.html" title="播放音乐没有声音">播放音乐没有声音</a></li>
									<li><a target="_blank"
										href="http://www.caobao.com/fault/10.html" title="无法调节音量大小">无法调节音量大小</a></li>
								</ol>
							</li>
							<li class="nLi">
								<h4>拍照/录像</h4>
								<ol>
									<li><a target="_blank"
										href="http://www.caobao.com/fault/11.html" title="切换前摄像头黑屏">切换前摄像头黑屏</a></li>
									<li><a target="_blank"
										href="http://www.caobao.com/fault/12.html" title="手机拍照模糊不清">手机拍照模糊不清</a></li>
								</ol>
							</li>
							<li class="nLi">
								<h4>外壳/边框</h4>
								<ol>
									<li><a target="_blank"
										href="http://www.caobao.com/fault/14.html" title="后壳磨损变形">后壳磨损变形</a></li>
									<li><a target="_blank"
										href="http://www.caobao.com/fault/15.html" title="手机中框变形">手机中框变形</a></li>
								</ol>
							</li>
							<li class="nLi">
								<h4>进水/主板</h4>
								<ol>
									<li><a target="_blank"
										href="http://www.caobao.com/fault/13.html" title="手机进水">手机进水</a></li>
								</ol>
							</li>
						</ul>
					</div>
					<!-- span7 -->
					<div class="span30">
						<dl class="clearfix">
							<dt class="img fl"></dt>
							<dd class="fl">
								<h4>客服热线</h4>
								<p class="tel">400-850-6838</p>
								<p class="supp">仅收市话费用</p>
								<p class="workTime">(周一至周日 9:00-18:00)</p>
							</dd>
						</dl>
					</div>
					<!-- <div class="span20"> -->
					<!-- <span class="masterLogin"><a rel="nofollow" href="/system/login.html" target="_blank">维修店登录&gt</a></span> -->
					<!-- </div> -->
				</div>
				<!-- row-fluids -->
				<div class="row-fluids safeInfo">
					<a rel="nofollow" target="_blank"
						href="http://61.144.227.239:9002/"><img
						src="./用户中心- 草包网_files/sznet110.jpg.下载" height="34"
						alt="深圳网络警察报警平台"></a> <a rel="nofollow" target="_blank"
						href="http://www.cyberpolice.cn/wfjb/"><img
						src="./用户中心- 草包网_files/cyberpolice.jpg.下载" height="34"
						alt="公共信息安全网络监察"></a> <a rel="nofollow"
						key="56777671efbfb07fa5f91f9e" logo_size="124x47"
						logo_type="business"
						href="http://www.anquan.org/authenticate/cert/?site=www.caobao.com&amp;at=business"
						target="_blank"><img src="./用户中心- 草包网_files/hy_124x47.png.下载"
						alt="安全联盟认证" height="34" style="border: none;"></a> <a
						rel="nofollow" target="_blank"
						id="_pingansec_bottomimagelarge_shiming"
						href="http://si.trustutn.org/info?sn=868170109026620625771&amp;certType=1"><img
						src="./用户中心- 草包网_files/bottom_large_img.png.下载" height="34"></a>
				</div>
				<div class="row-fluids">
					<p class="CR">Copyright © 2016 深圳草包网络科技有限公司 版权所有
						粤ICP备15009083号-1</p>
				</div>
			</div>
		</div>


		<!-- 全局js文件 -->
		<script type="text/javascript" src="./用户中心- 草包网_files/common.js.下载"></script>
		<script type="text/javascript" src="./用户中心- 草包网_files/xcConfirm.js.下载"></script>


		<!-- js文件部分 开始 -->



		<!-- js文件部分 结束 -->


		<!-- 底部JS执行区域 开始 -->

		<script type="text/javascript">
			$('.con')
					.delegate(
							'.pre_page',
							'click',
							function() {
								var _this = $(this);
								var page = _this.parent('.pagenum').attr(
										'data-page');
								page--;
								if (page == 0) {
									_this.hide();
								}
								_this.siblings('.next_page').show();
								$
										.post(
												"/Users/loadPageVirtual",
												{
													'page' : page
												},
												function(d) {
													var data = JSON.parse(d);
													if (data == '' || !data) {
														return false;
													} else {
														var html = '';
														for (var a = 0; a < data.length; a++) {
															html += '<li class="clearfix">';
															html += '	<span class="first">';
															if (data[a]['event'] == 1) {
																html += '		<span class="shopping">购物</span>';
															} else if (data[a]['event'] == 2) {
																html += '		<span class="repair">维修</span>';
															} else if (data[a]['event'] == 3) {
																html += '		<span class="recovery">回收</span>';
															} else if (data[a]['event'] == 4) {
																html += '		<span class="offer">报价</span>';
															} else if (data[a]['event'] == 5) {
																html += '		<span class="comment">评价</span>';
															} else if (data[a]['event'] == 6) {
																html += '		<span class="return">返还</span>';
															} else if (data[a]['event'] == 7) {
																html += '		<span class="bbs">论坛</span>';
															} else if (data[a]['event'] == 8) {
																html += '		<span class="recharge">充值</span>';
															}
															html += '	</span>';
															html += '	<span class="two">';
															if (data[a]['type'] == 1) {
																html += '			<span class="in">+'
																		+ data[a]['val']
																		+ '</span>';
															} else {
																html += '			<span class="out">-'
																		+ data[a]['val']
																		+ '</span>';
															}
															html += '	</span>';
															html += '	<span class="three">'
																	+ data[a]['surplus']
																	+ '</span>';
															html += '	<span class="four">'
																	+ data[a]['create_time']
																	+ '</span>';
															html += '	<span class="five">';
															if (data[a]['event'] == 7) {
																if (data[a]['sn'] == -5) {
																	html += '取消投票';
																} else if (data[a]['sn'] == -4) {
																	html += '取消采纳';
																} else if (data[a]['sn'] == -3) {
																	html += '删除评论';
																} else if (data[a]['sn'] == -2) {
																	html += '删除回复';
																} else if (data[a]['sn'] == -1) {
																	html += '删除发布';
																} else if (data[a]['sn'] == 1) {
																	html += '发布';
																} else if (data[a]['sn'] == 2) {
																	html += '回复';
																} else if (data[a]['sn'] == 3) {
																	html += '写评论';
																} else if (data[a]['sn'] == 4) {
																	html += '采纳';
																} else if (data[a]['sn'] == 5) {
																	html += '投票';
																}
															} else {
																html += '订单编号:'
																		+ data[a]['sn'];
															}
															html += '	</span>';
															html += '</li>';
														}
														_this
																.parent(
																		'.pagenum')
																.attr(
																		'data-page',
																		page);
														_this.siblings('.num')
																.find('.page')
																.text(page + 1);
														_this
																.parent(
																		'.pagenum')
																.siblings(
																		'.cbd-detail')
																.find(
																		"ul.ul_bd li")
																.remove();
														_this
																.parent(
																		'.pagenum')
																.siblings(
																		'.cbd-detail')
																.find(
																		"ul.ul_bd")
																.append(html);
													}
												});
							})
					.delegate(
							'.next_page',
							'click',
							function() {
								var _this = $(this);
								var page = _this.parent('.pagenum').attr(
										'data-page');
								var pagecount = _this.siblings('.num').find(
										'.pagecount').text();
								page++;
								if ((page + 1) >= pagecount) {
									_this.hide();
								}
								_this.siblings('.pre_page').show();
								$
										.post(
												"/Users/loadPageVirtual",
												{
													'page' : page
												},
												function(d) {
													var data = JSON.parse(d);
													if (data == '' || !data) {
														return false;
													} else {
														var html = '';
														for (var a = 0; a < data.length; a++) {
															html += '<li class="clearfix">';
															html += '	<span class="first">';
															if (data[a]['event'] == 1) {
																html += '		<span class="shopping">购物</span>';
															} else if (data[a]['event'] == 2) {
																html += '		<span class="repair">维修</span>';
															} else if (data[a]['event'] == 3) {
																html += '		<span class="recovery">回收</span>';
															} else if (data[a]['event'] == 4) {
																html += '		<span class="offer">报价</span>';
															} else if (data[a]['event'] == 5) {
																html += '		<span class="comment">评价</span>';
															} else if (data[a]['event'] == 6) {
																html += '		<span class="return">返还</span>';
															} else if (data[a]['event'] == 7) {
																html += '		<span class="bbs">论坛</span>';
															} else if (data[a]['event'] == 8) {
																html += '		<span class="recharge">充值</span>';
															}
															html += '	</span>';
															html += '	<span class="two">';
															if (data[a]['type'] == 1) {
																html += '			<span class="in">+'
																		+ data[a]['val']
																		+ '</span>';
															} else {
																html += '			<span class="out">-'
																		+ data[a]['val']
																		+ '</span>';
															}
															html += '	</span>';
															html += '	<span class="three">'
																	+ data[a]['surplus']
																	+ '</span>';
															html += '	<span class="four">'
																	+ data[a]['create_time']
																	+ '</span>';
															html += '	<span class="five">';
															if (data[a]['event'] == 7) {
																if (data[a]['sn'] == -5) {
																	html += '取消投票';
																} else if (data[a]['sn'] == -4) {
																	html += '取消采纳';
																} else if (data[a]['sn'] == -3) {
																	html += '删除评论';
																} else if (data[a]['sn'] == -2) {
																	html += '删除回复';
																} else if (data[a]['sn'] == -1) {
																	html += '删除发布';
																} else if (data[a]['sn'] == 1) {
																	html += '发布';
																} else if (data[a]['sn'] == 2) {
																	html += '回复';
																} else if (data[a]['sn'] == 3) {
																	html += '写评论';
																} else if (data[a]['sn'] == 4) {
																	html += '采纳';
																} else if (data[a]['sn'] == 5) {
																	html += '投票';
																}
															} else {
																html += '订单编号:'
																		+ data[a]['sn'];
															}
															html += '	</span>';
															html += '</li>';
														}
														_this
																.parents(
																		'.pagenum')
																.attr(
																		'data-page',
																		page);
														_this.siblings('.num')
																.find('.page')
																.text(page + 1);
														_this
																.parents(
																		'.pagenum')
																.siblings(
																		'.cbd-detail')
																.find(
																		"ul.ul_bd li")
																.remove();
														_this
																.parents(
																		'.pagenum')
																.siblings(
																		'.cbd-detail')
																.find(
																		"ul.ul_bd")
																.append(html);
													}
												});
							});
		</script>

		<!-- 底部JS执行区域 结束 -->
		<script>	
			var _APP_        = "";
			var _PUBLIC_     = "/Public";
			var _CONTROLLER_ = "/Users";
			var _URL_        = "http://www.caobao.com";
			var _USERS_      = "40009";
		</script>


		<div></div>
</body>
</html>