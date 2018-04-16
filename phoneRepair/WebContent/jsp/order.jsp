<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="Cache-Control" content="no-transform ">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>确认订单</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="copyright" content="">
<script type="text/javascript"
	src="/phoneRepair/js/jquery-1.11.3.min.js"></script>
<link href="/phoneRepair/css/order/index.css-460c13b0.css"
	rel="stylesheet" type="text/css">

<link href="/phoneRepair/css/order/index.css-76f73d82.css"
	rel="stylesheet" type="text/css">

</head>
<body class="media_screen_1200">
	<div class="mgj_rightbar" data-ptp="_sidebar"></div>
	<div id="body_wrap">
		<div id="process_bar">
			<!-- uid和sid -->
			<input type="hidden" id="uid" value="${list[10] }" /> <input
				type="hidden" id="sid" value="${list[11] }" /> <input type="hidden"
				id="username" value="${list[12] }" />
			<div class="g-header clearfix">
				<div class="g-header-in wrap clearfix">
					<c:if test="${flag==0 }">
						<%@include file="header.jsp"%>
					</c:if>
					<c:if test="${flag==1 }">
						<link rel="stylesheet" type="text/css"
							href="/phoneRepair/css/list/widget-user.css">
						<div class="header" style="margin-top: 10px;">
							<div class="header-out">
								<div class="header_top wrap" style="height: 60px">
									<!--logo展示-->
									<img src="/phoneRepair/img/logo.png" width="50px" height="50px"
										style="margin-top: 0px;" /> &nbsp;<font size="5">咻一修</font> <a
										href="/phoneRepair/store?method=slistShow&sid=${store.sid }&currPage=1&pageSize=5">
										&nbsp <font size="4">首页</font>
									</a>
									<div class="tabnav">
										<ul class="tabbd">
											<c:if test="${empty store }">
												<!-- <li class="by"><a href="/buy/cart.html"><i class="buycar"></i><span>(0)</span></a></li> -->
												<li class="login tabbdli" style="margin-top: 15px"><a
													rel="nofollow" href="/phoneRepair/jsp/slogin.jsp">登录</a></li>
												<li class="line tabbdli" style="margin-top: 15px">|</li>
												<!--<li><a rel="nofollow" href="/users/regist.html">注册</a></li>-->
												<li class="tabbdli" style="margin-top: 15px"><a
													rel="nofollow" href="/phoneRepair/jsp/sregist.jsp">注册</a></li>
											</c:if>
											<c:if test="${!empty store }">
												<!-- <li class="by"><a href="/buy/cart.html"><i class="buycar"></i><span>(0)</span></a></li> -->
												<li class="login tabbdli" style="margin-top: 15px"><a
													rel="nofollow" href="/phoneRepair/jsp/slogin.jsp">${store.susername }</a></li>
												<li class="line tabbdli" style="margin-top: 15px">|</li>
												<!--<li><a rel="nofollow" href="/users/regist.html">注册</a></li>-->
												<li class="tabbdli" style="margin-top: 15px"><a
													rel="nofollow" href="/phoneRepair/store?method=outLogin">退出</a></li>
											</c:if>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</c:if>
				</div>
			</div>
		</div>

		<div id="pay_info">
			<div class="g-wrap wrap">
				<div class="cart_wrap">
					<!-- 页面内容 -->
					<div class="cart_page_wrap pt0">
						<h2 class="cart_stit pt10">订单信息</h2>
						<!-- 身份认证 -->
						<!-- 身份认证end -->
						<form id="orderForm" method="POST"
							onkeydown="if(event.keycode==13) return false;">
							<!-- orderForm -->
							<!-- 表格 -->
							<table class="cart_table" id="orderTable">
								<thead>
									<tr>
										<th class="cart_table_goods_wrap">故障</th>
										<th class="cart_table_goodsinfo_wrap">订单时间</th>
										<th width="80">单价(元)</th>
										<c:if test="${flag==0 }">
											<th class="cart_table_goodscut_wrap">优惠</th>
										</c:if>
										<c:if test="${flag==1 &&!empty list[4] }">
											<th class="cart_table_goodsctrl_wrap">小计(元)</th>
										</c:if>
										<c:if test="${flag==0 }">
											<th class="cart_table_goodsctrl_wrap">小计(元)</th>
										</c:if>
									</tr>
								</thead>
								<tbody>
									<!--店铺-->
									<tr data-shopid="1172jnw8">
										<td colspan="6" class="cart_group_head"><label for=""
											class="cart_lightgray">店铺：</label><a
											href="http://s.meilishuo.com/1172jnw8" target="_blank"
											class="cart_hoverline">${list[0] }</a> <label for=""
											class="cart_lightgray">用户：</label><a
											href="http://s.meilishuo.com/1172jnw8" target="_blank"
											class="cart_hoverline">${list[1] }</a> <label for=""
											class="cart_lightgray">订单号：</label><a
											href="http://s.meilishuo.com/1172jnw8" target="_blank"
											class="cart_hoverline">${list[2] }</a></td>
									</tr>
									<!--商品 遍历-->
									<tr class="tr_checked item4shop1172jnw8" data-stockid="1hq1py2">
										<td class="cart_table_goods_wrap">
											<!-- 商品 --> <a
											href="http://item.meilishuo.com/detail/1h6nywa"
											target="_blank" class="cart_goods_img"> <img
												class="cartImgTip" src="${list[3] }" width="78" height="78"
												alt="2017 新款百搭中腰a字裙打底裙立体花朵半身裙">
										</a> <!-- 故障 --> <c:if test="${empty list[4] && flag==0 }">
												<a href="#" target="_blank"
													class="cart_goods_t cart_hoverline"
													style="text-decoration: none;"
													title="2017 新款百搭中腰a字裙打底裙立体花朵半身裙">等待维修师鉴定</a>
											</c:if> <c:if test="${!empty list[4]}">
												<a href="#" target="_blank"
													class="cart_goods_t cart_hoverline"
													title="2017 新款百搭中腰a字裙打底裙立体花朵半身裙">${list[4] }</a>
											</c:if> <!-- 商家打开订单页面,如果价格未定,且买家未付款时,可更改故障 --> <c:if
												test="${empty list[4] && flag==1 && list[8]==0}">
												<input type="text" id="fault" placeholder="请输入故障(例如:华为屏坏)"
													style="margin-left: 20px; width: 200px;" />
												<br />
												<span id="faultSpan" style="margin-left: 20px; color: red;"></span>
											</c:if>
										</td>
										<td>
											<p class="cart_lh20">${list[5] }</p>
										</td>
										<td class="cart_alcenter">
											<!-- 单价 --> <c:if test="${list[6]==0 && flag==0 }">
												<p class="cart_bold cart_itemUnit">价格未定</p>
											</c:if> <c:if test="${list[6]!=0 }">
												<p class="cart_bold cart_itemUnit">${list[6] }</p>
											</c:if> <c:if test="${list[6]==0 && flag==1 && list[8]==0}">
												<input type="text" id="price" placeholder="请输入价格(如:100.5)"
													style="margin-left: 20px; width: 200px;" />
												<br />
												<span id="priceSpan"
													style="margin-left: -110px !important; color: red"></span>
											</c:if>
										</td>
										<c:if test="${flag==0}">
											<td class="cart_alcenter">
												<!-- 优惠 -->
												<p class="cart_bold cart_itemUnit">${list[7]/100 }</p>
											</td>
										</c:if>
										<td class="cart_alcenter">
											<!-- 小计 --> <c:if test="${list[6]==0 && flag==0}">
												<p class="cart_font16 item_sum itemSum">价格未定</p>
											</c:if> <c:if test="${list[6]!=0 && flag==0}">
												<p class="cart_font16 item_sum itemSum">${list[6]-list[7]/100 }</p>
											</c:if> <c:if test="${list[6]!=0 && flag==1}">
												<p class="cart_font16 item_sum itemSum">${list[6] }</p>
											</c:if>
										</td>
									</tr>
									<!--备注：-->

									<!--合计-->
									<c:if test="${flag==0 }">
										<tr class="tr_checked">
											<td colspan="6" class="pl10 pr20 cart_largepding">
												<div
													class="cart_table_disduce cart_lightgray cart_font16 fr">
													合计：
													<div class="tax-compliance-wrapper">
														<img
															src="/phoneRepair/img/order/170831_8cik5cdae7egkl9j8fihhikb0dee1_30x30.png"
															class="tax-compliance-tips" alt="">
														<div class="tax-compliance-content">该订单中如有任何商品及店铺优惠，均是按照美丽优选平台活动规则提供给用户的平台补贴，不返不退。</div>
													</div>
													<c:if test="${list[6]!=0 }">
														<span class="cart_red cart_bold cart_money shopSum"
															data-groupid="1087045390_135_2">${list[6]-list[7]/100 }</span>
														<input type="hidden" class="shoppro" value="-1" name="">
													</c:if>
													<c:if test="${list[6]==0 }">
														<span class="cart_red cart_bold cart_money shopSum"
															data-groupid="1087045390_135_2">未定</span>
														<input type="hidden" class="shoppro" value="-1" name="">
													</c:if>
												</div>
											</td>
										</tr>
									</c:if>
								</tbody>
							</table>
						</form>
					</div>
				</div>
				<!-- oid -->
				<input type="hidden" value="${list[2] }" id="oid" />
				<!-- footer显示价格 -->
				<div>
					<div class="cart_paybar">
						<!-- 用户未付款,有确定价格,让它可以付款 -->
						<c:if test="${list[6]!=0 && flag==0 && list[8]==0}">
							<a href="#" id="pay" class="cart_surebtn fr">确认并付款 </a>
							<span
								class="cart_paybar_info_cost cart_red cart_bold cart_font26 cart_money fr goodsSum">${list[6]-list[7]/100 }</span>
							<div class="cart_paybar_info cart_pregray fr">
								<!-- 这里的商品不会变动，后端自己算出来就好了 -->
								共有 <span class="cart_red goodsNum">1</span> 件商品，总计：
							</div>
						</c:if>
						<!-- 用户未付款且没有确定的价格,不能付款 -->
						<c:if test="${flag==0 && list[8]==0 && list[9]==0}">
							<a href="#" class="cart_surebtn fr" style="background: #ccc;"
								id="nopay">确认并付款 </a>
							<span
								class="cart_paybar_info_cost cart_red cart_bold cart_font26 cart_money fr goodsSum">未定</span>
							<div class="cart_paybar_info cart_pregray fr">
								<!-- 这里的商品不会变动，后端自己算出来就好了 -->
								共有 <span class="cart_red goodsNum">1</span> 件商品，总计：
							</div>
						</c:if>
						<!-- 用户付款成功的时候查看订单 -->
						<c:if test="${flag==0 && list[8]==1 && list[9]==1}">
							<a href="#" class="cart_surebtn fr"
								style="background-color: red;">已付款 </a>
							<span
								class="cart_paybar_info_cost cart_red cart_bold cart_font26 cart_money fr goodsSum">${list[6]-list[7]/100 }</span>
							<div class="cart_paybar_info cart_pregray fr">
								<!-- 这里的商品不会变动，后端自己算出来就好了 -->
								共有 <span class="cart_red goodsNum">1</span> 件商品，总计：
							</div>
						</c:if>
						<c:if test="${list[8]==0 && flag==1 &&list[9]==0}">
							<a href="#" id="repairComplete" class="cart_surebtn fr">维修完成</a>
						</c:if>
						<c:if test="${list[9]==1 && flag==1 &&list[8]==0}">
							<a href="#" id="repairComplete" class="cart_surebtn fr">未收款</a>
						</c:if>
						<c:if test="${list[8]==1 && flag==1 &&list[9]==1}">
							<a href="#" id="repairComplete" class="cart_surebtn fr"
								style="background-color: red;">收款成功</a>
						</c:if>
					</div>
				</div>
			</div>
		</div>
		<form action="#" method="post" id="compForm">
			<input type="hidden" name="postdata" id="preData" value="1hq1py2,1">
			<input type="hidden" name="ptp" id="prePtp"
				value="1.__item_detail.0.0.N4XqbIg"> <input type="hidden"
				name="ptp" id="preStockPtp"
				value="{&quot;1hq1py2&quot;:&quot;1.zfrD1b.preferitem_mls.3.OkTO1zy&quot;}">
		</form>

		<script type="text/javascript">
			var ISFASTBUY = false;
		</script>



	</div>

	<div class="g-footer">
		<p title="mofa015027">
			<a href="#" target="_blank">咻一修</a> © 2017 Meilishuo.com,All Rights
			Reserved.
		</p>
	</div>

	<div class="sogoutip"
		style="z-index: 2147483645; visibility: hidden; display: none;"></div>
	<div class="sogoubottom" id="sougou_bottom" style="display: none;"></div>
	<div id="ext_stophi" style="z-index: 2147483647;">
		<div class="extnoticebg"></div>
	</div>
	<div id="ext_overlay" class="ext_overlayBG"
		style="display: none; z-index: 2147483646;"></div>
</body>
<script type="text/javascript">
	$(function() {
		var sid = $("#sid").val();
		var username = $("#username").val();
		//1.当用户点击灰色按钮时
		$("#nopay").click(function() {
			alert("价格未定,无法支付!");
		});
		var oid = $("#oid").val();
		//2.当用户点击付款时
		$("#pay")
				.click(
						function() {
							//将order中ustate改为1,则为付款成功
							$
									.ajax({
										url : "/phoneRepair/order",
										data : "method=pay&oid=" + oid,
										dataType : "json",
										async : false,
										error : function() {
											alert("ajax出错");
										},
										success : function(data) {
											if (data != 0) {
												alert("付款成功!");
												var comment = prompt("请输入您的评论",
														"");
												//如果输入评论
												if (comment != null
														&& comment != "") {
													//alert("评论好了");
													window.location.href = "/phoneRepair/comment?method=saveComment&sid="
															+ sid
															+ "&username="
															+ username
															+ "&comment="
															+ comment;
												} else {
													//没有输入评论则跳到首页
													window.location.href = "/phoneRepair/jsp/index.jsp";
												}

											} else {
												alert("付款失败!");
											}
										}

									});

						});
		//3.当商家点击维修完成时
		$("#repairComplete")
				.click(
						function() {
							//判断故障框和价格框是否为空
							var fault = $("#fault").val();
							if (fault.trim() == "") {
								$("#faultSpan").text("故障不能为空!");
								return false;
							}
							var price = $("#price").val();
							if (price.trim() == "") {
								$("#priceSpan").text("价格不能为空!");
								return false;
							}
							$
									.ajax({
										url : "/phoneRepair/order",
										data : "method=repairComplete&oid="
												+ oid + "&fault=" + fault
												+ "&price=" + price,
										dataType : "json",
										async : false,
										error : function() {
											alert("ajax出错");
										},
										success : function(data) {
											if (data != 0) {
												alert("等待用户付款!");
												window.location.href = "/phoneRepair/order?method=showOrder&oid="
														+ oid + "&flag=1";
												//$("#pay").attr("href","/phoneRepair/order?method=showOrder&oid="+oid+"&flag=1");
											}
										}

									});
						});

	});
</script>
</html>