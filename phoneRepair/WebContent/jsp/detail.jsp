<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zh-CN">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/detail/d1/style1503546983737.css">
<script type="text/javascript" src="/phoneRepair/js/jquery-1.11.3.min.js"></script>
<style type="text/css">
.amap-indoor-map .label-canvas {
	position: absolute;
	top: 0;
	left: 0
}

.amap-indoor-map .highlight-image-con * {
	pointer-events: none
}

.amap-indoormap-floorbar-control {
	position: absolute;
	margin: auto 0;
	bottom: 165px;
	right: 12px;
	width: 35px;
	text-align: center;
	line-height: 1.3em;
	overflow: hidden;
	padding: 0 2px
}

.amap-indoormap-floorbar-control .panel-box {
	background-color: rgba(255, 255, 255, .9);
	border-radius: 3px;
	border: 1px solid #ccc
}

.amap-indoormap-floorbar-control .select-dock {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	box-sizing: border-box;
	height: 30px;
	border: solid #4196ff;
	border-width: 0 2px;
	border-radius: 2px;
	pointer-events: none;
	background: linear-gradient(to bottom, #f6f8f9 0, #e5ebee 50%, #d7dee3 51%, #f5f7f9
		100%)
}

.amap-indoor-map .transition {
	transition: opacity .2s
}

,
.amap-indoormap-floorbar-control .transition {
	transition: top .2s, margin-top .2s
}

.amap-indoormap-floorbar-control .select-dock:after,
	.amap-indoormap-floorbar-control .select-dock:before {
	content: "";
	position: absolute;
	width: 0;
	height: 0;
	left: 0;
	top: 10px;
	border: solid transparent;
	border-width: 4px;
	border-left-color: #4196ff
}

.amap-indoormap-floorbar-control .select-dock:after {
	right: 0;
	left: auto;
	border-left-color: transparent;
	border-right-color: #4196ff
}

.amap-indoormap-floorbar-control.is-mobile {
	width: 37px
}

.amap-indoormap-floorbar-control.is-mobile .floor-btn {
	height: 35px;
	line-height: 35px
}

.amap-indoormap-floorbar-control.is-mobile .select-dock {
	height: 35px;
	top: 36px
}

.amap-indoormap-floorbar-control.is-mobile .select-dock:after,
	.amap-indoormap-floorbar-control.is-mobile .select-dock:before {
	top: 13px
}

.amap-indoormap-floorbar-control.is-mobile .floor-list-box {
	height: 105px
}

.amap-indoormap-floorbar-control .floor-list-item .floor-btn {
	color: #555;
	font-family: "Times New Roman", sans-serif, "Microsoft Yahei";
	font-size: 16px
}

.amap-indoormap-floorbar-control .floor-list-item.selected .floor-btn {
	color: #000
}

.amap-indoormap-floorbar-control .floor-btn {
	height: 28px;
	line-height: 28px;
	overflow: hidden;
	cursor: pointer;
	position: relative;
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none
}

.amap-indoormap-floorbar-control .floor-btn:hover {
	background-color: rgba(221, 221, 221, .4)
}

.amap-indoormap-floorbar-control .floor-minus,
	.amap-indoormap-floorbar-control .floor-plus {
	position: relative;
	text-indent: -1000em
}

.amap-indoormap-floorbar-control .floor-minus:after,
	.amap-indoormap-floorbar-control .floor-plus:after {
	content: "";
	position: absolute;
	margin: auto;
	top: 9px;
	left: 0;
	right: 0;
	width: 0;
	height: 0;
	border: solid transparent;
	border-width: 10px 8px;
	border-top-color: #777
}

.amap-indoormap-floorbar-control .floor-minus.disabled,
	.amap-indoormap-floorbar-control .floor-plus.disabled {
	opacity: .3
}

.amap-indoormap-floorbar-control .floor-plus:after {
	border-bottom-color: #777;
	border-top-color: transparent;
	top: -3px
}

.amap-indoormap-floorbar-control .floor-list-box {
	max-height: 153px;
	position: relative;
	overflow-y: hidden
}

.amap-indoormap-floorbar-control .floor-list {
	margin: 0;
	padding: 0;
	list-style: none
}

.amap-indoormap-floorbar-control .floor-list-item {
	position: relative
}

.amap-indoormap-floorbar-control .floor-btn.disabled,
	.amap-indoormap-floorbar-control .floor-btn.disabled *,
	.amap-indoormap-floorbar-control.with-indrm-loader * {
	-webkit-pointer-events: none !important;
	pointer-events: none !important
}

.amap-indoormap-floorbar-control .with-indrm-loader .floor-nonas {
	opacity: .5
}

.amap-indoor-map-moverf-marker {
	color: #555;
	background-color: #FFFEEF;
	border: 1px solid #7E7E7E;
	padding: 3px 6px;
	font-size: 12px;
	white-space: nowrap;
	display: inline-block;
	position: absolute;
	top: 1em;
	left: 1.2em
}

.amap-indoormap-floorbar-control .amap-indrm-loader {
	-moz-animation: amap-indrm-loader 1.25s infinite linear;
	-webkit-animation: amap-indrm-loader 1.25s infinite linear;
	animation: amap-indrm-loader 1.25s infinite linear;
	border: 2px solid #91A3D8;
	border-right-color: transparent;
	box-sizing: border-box;
	display: inline-block;
	overflow: hidden;
	text-indent: -9999px;
	width: 13px;
	height: 13px;
	border-radius: 7px;
	position: absolute;
	margin: auto;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0
}

@
-moz-keyframes amap-indrm-loader { 0%{
	-moz-transform: rotate(0);
	transform: rotate(0)
}

100%{
-moz-transform
:rotate(360deg)
;transform
:rotate(360deg)
}
}
@
-webkit-keyframes amap-indrm-loader { 0%{
	-webkit-transform: rotate(0);
	transform: rotate(0)
}

100%{
-webkit-transform
:rotate(360deg)
;transform
:rotate(360deg)
}
}
@
keyframes amap-indrm-loader { 0%{
	-moz-transform: rotate(0);
	-ms-transform: rotate(0);
	-webkit-transform: rotate(0);
	transform: rotate(0)
}
100%{
-moz-transform
:rotate(360deg)
;-ms-transform
:rotate(360deg)
;-webkit-transform
:rotate(360deg)
;transform
:rotate(360deg)
}
}
</style>
<title>${store.sname}</title>
<meta charset="utf-8">
<link rel="shortcut icon"
	href="http://www.caobao.com/Public/Home/images/coins/logoIcon.png">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="chrome=1,IE=Edge">
<meta name="applicable-device" content="pc">
<link rel="stylesheet" type="text/css" href="/phoneRepair/css/detail/d1/same.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/detail/d1/shop-header.css">
<link rel="stylesheet" type="text/css"
	href="/phoneRepair/css/detail/d1/xcConfirm.css">
<!-- 自定义CSS文件 部分 -->

<link rel="stylesheet" href="/phoneRepair/css/detail/d1/repairer.css">

<!-- 自定义CSS文件 结束 -->

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script
	src="Apple%20%E7%BB%B4%E4%BF%AE%E7%BB%B4%E4%BF%AE%E5%BA%97_Apple%20%E7%BB%B4%E4%BF%AE%E7%BB%B4%E4%BF%AE%E7%82%B9-%20%E8%8D%89%E5%8C%85%E7%BD%91_files/jquery-1.js"></script>
<!-- 自定义顶部js文件 部分 -->



<!-- 自定义顶部js文件 结束 -->

<style type="text/css">
.amap-container {
	cursor: url(http://webapi.amap.com/theme/v1.3/openhand.cur), default;
}

.amap-drag {
	cursor: url(http://webapi.amap.com/theme/v1.3/closedhand.cur), default;
}
</style>
</head>
<body>
	<link href="/phoneRepair/css/detail/d1/jiathis_share.css" rel="stylesheet"
		type="text/css">
	<iframe style="position: fixed; display: none; opacity: 0;"
		frameborder="0"></iframe>
	<div class="jiathis_style"
		style="position: absolute; z-index: 1000000000; display: none; top: 50%; left: 50%; overflow: auto;"></div>
	<div class="jiathis_style"
		style="position: absolute; z-index: 1000000000; display: none; overflow: auto;"></div>
	<iframe style="display: none;"
		src="Apple%20%E7%BB%B4%E4%BF%AE%E7%BB%B4%E4%BF%AE%E5%BA%97_Apple%20%E7%BB%B4%E4%BF%AE%E7%BB%B4%E4%BF%AE%E7%82%B9-%20%E8%8D%89%E5%8C%85%E7%BD%91_files/jiathis_utility.html"
		frameborder="0"></iframe>
	<!-- 头部部分 开始 -->
	<%@include file="header.jsp" %>
	<!-- 头部部分 结束 --> 


	<!-- 主体部分 开始 -->

	<div class="con">
		<!-- 分页 -->
		<div class="tcdPageCode"></div>
		<!-- 店铺名 -->
		<div class="shop-name clearfix wrap">
			<!--<div class="shop-img">
			<img src="/Public/User/" onerror="javascript:this.src='/Public/Home/images/2016/picc.png';" alt="Apple 维修" />
		</div>-->
			<input type="hidden" id="sid" value=${store.sid } />
			<div class="shop-main">
				<h2>${store.sname}</h2>
				<div class="shop-level">
					<b><img src="/phoneRepair/img/detail/rankicon1.png" title="2级"
						alt="2级" width="16"></b><b><img
						src="/phoneRepair/img/detail/rankicon1.png" title="2级" alt="2级"
						width="16"></b>
				</div>
			</div>
			<div class="share"></div>
		</div>

		<!-- 店铺信息 -->
		<div class="shop-news-bg">
			<div class="shop-news">
				<div class="shop-news-con wrap clearfix">
					<div class="shop-introduce clearfix">
						<div class="shop-introduce-con">
							<div class="introduce-left">
								<div class="sever-way">
									<span>服务方式：</span>进店维修
								</div>
								<div class="sever-time">
									<span>营业时间：</span>
								${store.stime}
								</div>
								<div class="phone">
									<span>联系方式：</span><em
										style="font-style: italic; font-size: 16px;">${store.susername}</em>
								</div>
								<div class="address-detial">
									<span>详细地址：</span>${store.saddress}
								</div>
								<c:if test="${empty user }">
									<form action="/phoneRepair/jsp/login.jsp" method="post">
										<div>
											<c:if test="${empty user }">
												<input type="hidden" id="user" value=0 />
											</c:if>
											<c:if test="${!empty user }">
												<input type="hidden" id="user" value=1 />
											</c:if>
											<input type="submit"  value="到店去" style="background-color:#40bb8c;cursor:pointer;width:100px;height:30px;"/>
										</div>
									</form>
								</c:if>
								<c:if test="${!empty user }">
									<form action="/phoneRepair/order?method=insertOrder&sid=${store.sid }&uid=${user.uid}" method="post">
										<div>
											<c:if test="${empty user }">
												<input type="hidden" id="user" value=0 />
											</c:if>
											<c:if test="${!empty user }">
												<input type="hidden" id="user" value=1 />
											</c:if>
											<input type="submit"  value="到店去" style="background-color:#40bb8c;cursor:pointer;width:100px;height:30px;"/>
										</div>
									</form>
								</c:if>
							</div>
							<div class="erweima">
								<img src="/phoneRepair/img/detail/qrcode_1832.jpg" alt="扫码关注"
									title="扫码关注">
								<p>关注本店 优惠多多</p>
							</div>
							<div class="shop-img-big">
								<img src="/phoneRepair/img/detail/picc.jpg"
									onerror="javascript:this.src='/phoneRepair/img/detail/picc.jpg';"
									alt="Apple 维修">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--店铺详情 -->
		<div class="bottom clearfix wrap">
			<div class="bottom-left">
				<div class="navbar">
					<ul class="clearfix">

						<li>店铺详情</li>
					</ul>
				</div>

				<!-- 店铺详情 -->
				<div>
					<a class="noCont"><h2>${store.sdesc}</h2></a>
				</div>
				<!-- 评价 -->
				<div class="eva-lst">
					<div class="eva-title clearfix">
						<span class="user-eva">用户评价</span><span class="more-eva"><a
							href="/phoneRepair/store?method=getComment&sid=${store.sid}">更多&gt;</a></span>
					</div>
					<div class="comment">
					</div>
				</div>
			</div>
			<!-- 侧栏 -->
			<div class="bottom-right">
				<div class="notic">
					<p class="tit">
						<i></i>本店公告
					</p>
					<div class="content">暂无公告！</div>
					<div class="report">举报店铺</div>
				</div>

			</div>
		</div>
	</div>
	<!-- 友情链接 -->
	<div class="links clearfix wrap">
		友情链接： <a href="http://www.caobao.com/">草包网</a> <a
			href="http://www.caobao.com/repair/select.html">手机维修</a> <a
			href="http://www.caobao.com/recovery/select.html">手机回收</a> <a
			href="http://www.caobao.com/video/">维修视频</a> <a
			href="http://bbs.caobao.com/wenda.html">问题与解答</a> <a
			href="http://bbs.caobao.com/jiqiao.html">技巧分享</a> <a
			href="http://www.caobao.com/news_list/2.html">数码资讯</a> <a
			href="http://www.caobao.com/index/special.html">合作加盟</a>
	</div>
	</div>
	<form id="collect" action="/repair/collect.html" method="post">
		<input name="model" value="" type="hidden"> <input
			name="color" value="" type="hidden"> <input name="fault"
			value="" type="hidden"> <input name="way" value="1"
			type="hidden"> <input name="server" value="1832"
			type="hidden">
	</form>
	<!-- 举报 开始 -->
	<div class="posF" id="report">
		<div class="bg"></div>
		<div class="box500">
			<div class="hd posR">
				<p>我要举报</p>
				<span class="posA off">&nbsp;</span>
			</div>
			<div class="bd">
				<form id="doreport" action="/repairer/report.html" method="post">
					<input name="user_id" value="" type="hidden"> <input
						name="report_id" value="1832" type="hidden">
					<dl class="clearfix">
						<dt>
							<span>*</span>举报内容：
						</dt>
						<dd>
							<div class="clearfix report-con">
								<div class="report-item">
									<label for="report_1"><input id="report_1"
										name="content" value="1" type="radio"><span>临时加价</span></label>
								</div>
								<div class="report-item">
									<label for="report_2"><input id="report_2"
										name="content" value="2" type="radio"><span>服务态度差</span></label>
								</div>
								<div class="report-item">
									<label for="report_3"><input id="report_3"
										name="content" value="3" type="radio"><span>服务不专业</span></label>
								</div>
								<div class="report-item">
									<label for="report_4"><input id="report_4"
										name="content" value="4" type="radio"><span>拒绝退款</span></label>
								</div>
								<div class="report-item">
									<label for="report_5"><input id="report_5"
										name="content" value="5" type="radio"><span>问题复现，拒绝售后</span></label>
								</div>
								<div class="report-item">
									<label for="report_6"><input id="report_6"
										name="content" value="6" type="radio"><span>商家不营业</span></label>
								</div>
								<div class="report-item">
									<label for="report_7"><input id="report_7"
										name="content" value="7" type="radio"><span>不提供服务</span></label>
								</div>
							</div>
						</dd>
					</dl>
					<dl class="clearfix">
						<dt>
							<span>*</span>问题描述：
						</dt>
						<dd>
							<textarea name="description" maxlength="80"
								placeholder="请简要说明您遇到的问题！"></textarea>
						</dd>
					</dl>
					<dl class="clearfix">
						<dt>
							<span>*</span>图形验证：
						</dt>
						<dd>
							<input name="imgCode" placeholder="请输入右侧的图形上的文字!" type="text">
							<img
								src="Apple%20%E7%BB%B4%E4%BF%AE%E7%BB%B4%E4%BF%AE%E5%BA%97_Apple%20%E7%BB%B4%E4%BF%AE%E7%BB%B4%E4%BF%AE%E7%82%B9-%20%E8%8D%89%E5%8C%85%E7%BD%91_files/getarithverify.png"
								class="code-img"
								onclick="this.src='/index/getarithverify.html?' + Math.random()"
								alt="点击刷新" title="点击刷新">
						</dd>
					</dl>
					<dl class="clearfix">
						<dt>&nbsp;</dt>
						<dd>
							<button type="button" class="off">取消</button>
							<button type="button" class="submit">提交</button>
						</dd>
					</dl>
				</form>
			</div>
		</div>
	</div>
	<!-- 举报 结束 -->

	<!-- 主体部分 结束 -->


	<!-- 页脚部分 开始 -->
	<link rel="stylesheet" type="text/css"
		href="/phoneRepair/css/detail/d1/footer.css">

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

			<div class="row-fluids">
				<p class="CR">Copyright © 咻一修</p>
			</div>
		</div>
	</div>
	<!--页脚 结束-->
	<!-- 页脚部分 结束 -->


	<!-- 侧边栏 开始 -->
	<link rel="stylesheet" type="text/css"
		href="/phoneRepair/css/detail/d1/sidebar.css">

	<!--侧栏 开始-->
	<div class="cb_sidebar" style="top: 57px;">
		<span class="open"></span>
		<div class="cb_sidebar_bg" style="display: none;"></div>
		<div class="cb_sidebar_tabs">
			<ul>

				<li class="linekefu open_kefu" style="display: none;"><a
					href="javascript:void(0);" title="在线客服"> <i></i>
						<p class="icon-text">客服</p>
				</a></li>
			</ul>
		</div>
		<div class="scrollUp">
			<a href="javascript:void(0);" title="返回顶部"> <i></i>
			</a>
		</div>
	</div>
	<!--侧栏 结束-->
<script type="text/javascript">
	$(function(){
		var sid = $("#sid").val();
		//页面加载,获取所有评论
		$.ajax({
			url:"/phoneRepair/comment",
			data: "method=getComments&sid="+sid,
			dataType:"json",
			error:function(){
				alert("ajax出错");
			},
			success:function(data){
				//alert("111");
				var usernameList = new Array();
				var commentList = new Array();
				$.each(data,function(i,dad){
					if(i%2!=0){
						usernameList.push(dad);
					}else{
						commentList.push(dad);
					}
				}); 
				$.each(usernameList,function(j,udad){
					$('.comment').append("<div style='margin:0px;width:748px;border:1px solid #b6e1d1'><span>用户:"+udad+"</span><div>"+commentList[j]+"</div></div>");
				})
				
			}
			
		});
	});
</script>


</body>
</html>

	

