<%@page import="com.etc.repair.vo.Store"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>店铺</title>
<meta charset="utf-8">
<link rel="shortcut icon"
	href="http://www.caobao.com/Public/Home/images/coins/logoIcon.png">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="chrome=1,IE=Edge">
<meta name="Keywords" content="北京市朝阳区维修点,朝阳区哪里有维修店">
<meta name="Description"
	content="草包网授权北京市朝阳区数百家维修点，查找朝阳区附近哪里有专业修的维修店最全面，价格最真实，安全有保障的维修服务，尽在草包网。">
<meta name="baidu-site-verification" content="2x3g9fsDlz">
<meta name="applicable-device" content="pc">
<link rel="stylesheet" type="text/css" href="/phoneRepair/css/list/same.css">
<link rel="stylesheet" type="text/css" href="/phoneRepair/css/list/xcConfirm.css">
<!-- <link rel="stylesheet" href="/Public/Home/css/header.css" /> -->
<!-- 自定义CSS文件 部分 -->

<link rel="stylesheet" href="/phoneRepair/css/list/repairer-list.css">
<style type="text/css">
	select{  
                width:auto;  
                height:30px;  
                appearance:none;  
                -moz-appearance:none;  
                -webkit-appearance:none;  
                background: url("images/select.png") no-repeat right center;  
                font-size:16px;  
                font-family:Microsoft YaHei;  
                 
            }  
    label[for=search] {
        display: block;
        text-align: left;
      }
      #search label {
        font-weight: 200;
        padding: 5px 0;
      }
      #search input[type=text] {
        font-size: 18px;
        width: 705px;
      }
      #search .button {
        padding: 10px;
        width: 90px;
      }
      .searchButton {
        position: relative;
        display: inline-block;
        margin: 0;
        padding: 8px 15px;
        font-size: 13px;
        font-weight: bold;
        color: #333;
        text-shadow: 0 1px 0 rgba(255,255,255,0.9);
        white-space: nowrap;
        background-color: #eaeaea;
        background-image: -moz-linear-gradient(#fafafa, #eaeaea);
        background-image: -webkit-linear-gradient(#fafafa, #eaeaea);
        background-image: linear-gradient(#fafafa, #eaeaea);
        background-repeat: repeat-x;
        border-radius: 3px;
        border: 1px solid #ddd;
        border-bottom-color: #c5c5c5;
        box-shadow: 0 1px 3px rgba(0,0,0,.05);
        vertical-align: middle;
        cursor: pointer;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        -webkit-touch-callout: none;
        -webkit-user-select: none;
        -khtml-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        -webkit-appearance: none;
      }
      .searchButton:hover,
      .searchButton:active {
        background-position: 0 -15px;
        border-color: #ccc #ccc #b5b5b5;
      }
      .searchButton:active {
        background-color: #dadada;
        border-color: #b5b5b5;
        background-image: none;
        box-shadow: inset 0 3px 5px rgba(0,0,0,.15);
      }
      .searchButton:focus,
      input[type=text]:focus,
      input[type=password]:focus {
        outline: none;
        border-color: #51a7e8;
        box-shadow: inset 0 1px 2px rgba(0,0,0,.075), 0 0 5px rgba(81,167,232,.5);
      }
</style>
<!-- 自定义CSS文件 结束 -->

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="/phoneRepair/img/list/jquery-1.js"></script>
<script src="/phoneRepair/img/list/html5shiv.js"></script>
<script src="/phoneRepair/js/jquery-1.11.3.min.js"></script>
<!-- 自定义顶部js文件 部分 -->



<!-- 自定义顶部js文件 结束 -->

</head>
<body>
	<!-- 头部部分 开始 -->
	
	<%@include file="header.jsp" %>
	
	<!-- 头部部分 结束 -->
	<% request.getSession().setAttribute("url", "list.jsp"); %>
	<!-- 主体部分 开始 -->
	
	
	<div class="con wrap">
		<div style="margin-left:110px;margin-top:35px;">
				<form action="/phoneRepair/store?method=search&currPage=1&pageSize=5" id="form" method="post">
					<input type="hidden" value="${province }" id="pro"/>
					<select id="province" name="province">
						<option selected="selected" <c:if test="${province=='请选择省份' }">selected="selected"</c:if>>请选择省份</option>
					</select>
					<input type="hidden" value="${city }" id="ci"/>
					<select id="city" name="city">
						<option selected="selected" <c:if test="${province=='请选择城市' }">selected="selected"</c:if>>请选择城市</option>
					</select>
					<input type="text" name="search" style="margin-left:20px;width:300px;" placeholder="请输入您手机的故障" value="${search }"/>
    				<input class="searchButton" type="submit" value="Search">
				</form>
			</div>
		<div class="con_bottom clearfix"
			style="margin-left: 100px; margin-top: 50px;">
			<div class="con_left">
				<div class="left_middle">
					<ul id="storeList">
					<c:forEach var="store" items="${pageBean.list }">
						<li>
							<div class="tit">
								<img src="/phoneRepair/img/list/store.png" class="ordinary-store"><strong><a
									href="http://www.caobao.com/repairer/965.html"
									title="乐乐达北京市朝阳服务中心">${store.sname }</a></strong> <b><img
									src="/phoneRepair/img/list/rankicon2.png" title="1级" alt="1级" width="16"></b>
							</div>
							<div class="bd clearfix">
								<div class="pic">
									<a href="http://www.caobao.com/repairer/965.html"
										title="乐乐达北京市朝阳服务中心"><img
										src="${store.spic }"
										onerror="javascript:this.src='/Public/Home/images/2016/picc.png';"
										alt="${store.sname }"></a>
								</div>
								<div class="fr">
									<p>
										<span class="Authentication">认证</span>
										<!--<span class="custemers">售后</span>
									<span class="guarantee">担保</span>-->
									</p>
									<p>
										
										<span>主修：</span>${store.smajor }
									</p>
									<p>
										<span>地址：</span>${store.saddress }
									</p>
									
									<a class="button"
										href="/phoneRepair/store?method=searchBySid&sid=${store.sid }"
										title="${store.sname }">进入店铺</a>
								</div>
							</div>
						</li>
					</c:forEach>
					
					
					</ul>
				</div>
				<div class="pagenum">
				<c:if test="${pageBean.currPage!=1 }">
					<span class="pre_page"> <a href="/phoneRepair/store?method=search&currPage=${pageBean.currPage-1 }&pageSize=${pageBean.pageSize }&province=${province }&city=${city}&search=${search}">&lt;&lt;上一页</a>
					</span> 
				</c:if>
					
					<span class="num">${pageBean.currPage }/${pageBean.totalPage }页 共 ${pageBean.totalCount } 个记录</span> 
				<c:if test="${pageBean.currPage != pageBean.totalPage }">	
					<span class="next_page">
						<a href="/phoneRepair/store?method=search&currPage=${pageBean.currPage+1 }&pageSize=${pageBean.pageSize }&province=${province }&city=${city}&search=${search}">下一页&gt;&gt;</a>
					</span>
				</c:if>
				</div>
			</div>
		</div>
	</div>

	<!-- 主体部分 结束 -->


	<!-- 页脚部分 开始 -->
	<link rel="stylesheet" type="text/css" href="/phoneRepair/css/list/footer.css">

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
							<p class="tel">400-888-8888</p>
							<p class="supp">仅收市话费用</p>
							<p class="workTime">(周一至周日 9:00-18:00)</p>
						</dd>
					</dl>
				</div>
			</div>
			<!-- row-fluids -->
			<div class="row-fluids safeInfo">

				<a rel="nofollow" target="_blank"
					href="http://www.cyberpolice.cn/wfjb/"><img
					src="/phoneRepair/img/list/cyberpolice.jpg" alt="公共信息安全网络监察" height="34"></a>
				<a rel="nofollow" key="56777671efbfb07fa5f91f9e" logo_size="124x47"
					logo_type="business"
					href="http://www.anquan.org/authenticate/cert/?site=www.caobao.com&amp;at=business"
					target="_blank"><img src="/phoneRepair/img/list/hy_124x47.png"
					alt="安全联盟认证" style="border: none;" height="34"></a> <a
					rel="nofollow" target="_blank"
					id="_pingansec_bottomimagelarge_shiming"
					href="http://si.trustutn.org/info?sn=868170109026620625771&amp;certType=1"><img
					src="/phoneRepair/img/list/bottom_large_img.png" height="34"></a>
			</div>
			<div class="row-fluids">
				<p class="CR">Copyright @ 2010-2017 咻一修网络科技有限公司 版权所有 违者必究</p>
			</div>
		</div>
	</div>
	<!--页脚 结束-->
	<!-- 页脚部分 结束 -->
</body>
<script type="text/javascript">
$(function(){
	//一、通过ajax获取数据库中的省市
	//1.加载省份
	//alert($("#pro").val());
	var pro = $("#pro").val();
	var provinceArr = new Array();
	$.ajax({
		url:"/phoneRepair/city",
		data: "method=getProvince",
		async:false,
		error:function(){
			alert("ajax加载失败");
		},
		success:function(data){
			provinceArr = data.split(",");
			for(var i=0;i<provinceArr.length;i++){
				//alert(provinceArr[i]);
				if(pro==provinceArr[i]){
					var $option = $("<option selected='selected'>"+provinceArr[i]+"</option>");
				}else{
					var $option = $("<option>"+provinceArr[i]+"</option>");
				}
				
				$("#province").append($option);
			}
		}
			
	}); 
	var cityArr = new Array();
	var ci = $("#ci").val();
	//省份没有变的时候
	$("#city")[0].length = 1;
	var index = $("#province")[0].selectedIndex;
	//alert(index);
	$.ajax({
		url:"/phoneRepair/city",
		data: "method=getCity&provinceId="+index,
		async:false,
		error:function(){
		},
		success:function(data){
			cityArr = data.split(",");
			if(cityArr.length!=1){
				for(var j=0;j<cityArr.length;j++){
					if(ci==cityArr[j]){
						var $option = $("<option selected='selected'>"+cityArr[j]+"</option>");
					}else{
						var $option = $("<option>"+cityArr[j]+"</option>");
					}
					$("#city").append($option);
				}
			}
		}
		
	}); 
	
	//2.加载城市
	$("#province").change(function(){
		$("#city")[0].length = 1;
		var index = this.selectedIndex;
		//alert(index);
		$.ajax({
			url:"/phoneRepair/city",
			data: "method=getCity&provinceId="+index,
			async:false,
			error:function(){
			},
			success:function(data){
				cityArr = data.split(",");
				for(var j=0;j<cityArr.length;j++){
					if(ci==cityArr[j]){
						var $option = $("<option selected='selected'>"+cityArr[j]+"</option>");
					}else{
						var $option = $("<option>"+cityArr[j]+"</option>");
					}
					$("#city").append($option);
				}
			}
			
		});
		
		
	}); 
	
	
});
</script>
</html>