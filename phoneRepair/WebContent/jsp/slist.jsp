<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"><link rel="stylesheet" type="text/css" href="/phoneRepair/css/list/style1503546983737.css">
        <title>我的店铺</title>
        <meta charset="utf-8">
		<link rel="shortcut icon" href="http://www.caobao.com/Public/Home/images/coins/logoIcon.png">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="chrome=1,IE=Edge">
		<meta name="Keywords" content="手机维修,平板维修,苹果手机维修,草包网">
		<meta name="Description" content="国内专业的手机维修、平板维修平台，以地区和官方在线报价并为客户提供快速上门维修、到店维修、邮寄维修服务。手机维修、平板维修首选草包网，统一真实报价、安全可靠、原厂配件。">
		<meta name="baidu-site-verification" content="2x3g9fsDlz">
		<meta name="applicable-device" content="pc">
		<link rel="stylesheet" type="text/css" href="/phoneRepair/css/list/same.css">
		<link rel="stylesheet" type="text/css" href="/phoneRepair/css/list/xcConfirm.css">
		<link rel="stylesheet" type="text/css" href="/phoneRepair/admin/lib/bootstrap/css/bootstrap.css">
		<!-- <link rel="stylesheet" href="/Public/Home/css/header.css" /> -->
        <!-- 自定义CSS文件 部分 -->
		
    <link rel="stylesheet" href="/phoneRepair/css/list/index.css">

		<!-- 自定义CSS文件 结束 -->
		
		<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
		<script src="/phoneRepair/img/list/jquery-1.htm"></script>
		<script src="/phoneRepair/img/list/html5shiv.js"></script>
		
		<!-- 自定义顶部js文件 部分 -->
		
	<script type="text/javascript" src="/phoneRepair/img/list/jquery_002.js"></script>
	<script type="text/javascript" src="/phoneRepair/img/list/jquery.js"></script>
	<script type="text/javascript" src="/phoneRepair/img/list/jquery.htm"></script>

		<!-- 自定义顶部js文件 结束 -->
		
	<style type="text/css">.amap-container{cursor:url(http://webapi.amap.com/theme/v1.3/openhand.cur),default;}.amap-drag{cursor:url(http://webapi.amap.com/theme/v1.3/closedhand.cur),default;}</style></head>
	<script type="text/javascript" src="/phoneRepair/jquery-easyui-1.3.2/jquery-1.8.0.min.js"></script>
	<!-- easyui的js文件，建议使用版本自带jquery文件 --> 
	<script type="text/javascript" src="/phoneRepair/jquery-easyui-1.3.2/jquery.easyui.min.js"></script>
	<!-- easyui的js文件 -->
	<script type="text/javascript" src="/phoneRepair/jquery-easyui-1.3.2/locale/easyui-lang-zh_CN.js"></script>
	<link rel="stylesheet" type="text/css" href="/phoneRepair/jquery-easyui-1.3.2/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="/phoneRepair/jquery-easyui-1.3.2/themes/icon.css">
	
	<body>
		<!-- 头部部分 开始 -->
		<link rel="stylesheet" type="text/css"
				href="/phoneRepair/css/list/widget-user.css">
<div class="header" style="margin-top: 10px;">
	<div class="header-out">
		<div class="header_top wrap" style="height: 60px">
			<!--logo展示-->
			<img src="/phoneRepair/img/logo.png" width="50px" height="50px"
				style="margin-top: 0px;" /> &nbsp;<font size="5">咻一修</font>
				<a href="/phoneRepair/store?method=slistShow&sid=${store.sid }&currPage=1&pageSize=5"> &nbsp <font size="4">首页</font></a> 
			<div class="tabnav">
				<ul class="tabbd">
				<c:if test="${empty store }">
					<!-- <li class="by"><a href="/buy/cart.html"><i class="buycar"></i><span>(0)</span></a></li> -->
					<li class="login tabbdli" style="margin-top: 15px"><a
						rel="nofollow" href="/phoneRepair/jsp/slogin.jsp">登录</a></li>
					<li class="line tabbdli" style="margin-top: 15px">|</li>
					<!--<li><a rel="nofollow" href="/users/regist.html">注册</a></li>-->
					<li class="tabbdli" style="margin-top: 15px"><a rel="nofollow"
						href="/phoneRepair/jsp/sregist.jsp">注册</a></li>
				</c:if>
				<c:if test="${!empty store }">
					<!-- <li class="by"><a href="/buy/cart.html"><i class="buycar"></i><span>(0)</span></a></li> -->
					<li class="login tabbdli" style="margin-top: 15px"><a
						rel="nofollow" href="/phoneRepair/jsp/slogin.jsp">${store.susername }</a></li>
					<li class="line tabbdli" style="margin-top: 15px">|</li>
					<!--<li><a rel="nofollow" href="/users/regist.html">注册</a></li>-->
					<li class="tabbdli" style="margin-top: 15px"><a rel="nofollow"
						href="/phoneRepair/store?method=outLogin">退出</a></li>
				</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>
		<!-- 头部部分 结束 -->
		
		<!-- 主体部分 开始 -->
	<!-- table的js样式 -->
	<script type="text/javascript">
			function altRows(id){
				if(document.getElementsByTagName){  
					
					var table = document.getElementById(id);  
					var rows = table.getElementsByTagName("tr"); 
					 
					for(i = 0; i < rows.length; i++){          
						if(i % 2 == 0){
							rows[i].className = "evenrowcolor";
						}else{
							rows[i].className = "oddrowcolor";
						}      
					}
				}
			}
			
			window.onload=function(){
				altRows('alternatecolor');
			}
</script>
<!-- table的CSS样式 -->
<style type="text/css">
table.altrowstable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #a9c6c9;
	border-collapse: collapse;
	margin:auto;
}
table.altrowstable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
	width:300px;
}
table.altrowstable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
	text-align: center;
}
.oddrowcolor{
	background-color:#d4e3e5;
}
.evenrowcolor{
	background-color:#c3dde0;
}
</style>
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
      .button {
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
      .button:hover,
      .button:active {
        background-position: 0 -15px;
        border-color: #ccc #ccc #b5b5b5;
      }
      .button:active {
        background-color: #dadada;
        border-color: #b5b5b5;
        background-image: none;
        box-shadow: inset 0 3px 5px rgba(0,0,0,.15);
      }
      .button:focus,
      input[type=text]:focus,
      input[type=password]:focus {
        outline: none;
        border-color: #51a7e8;
        box-shadow: inset 0 1px 2px rgba(0,0,0,.075), 0 0 5px rgba(81,167,232,.5);
      }
</style>
    <div class="con">
        <!-- 店主页面 -->
        <div class="repair_store wrap">
        <form action="/phoneRepair/store?method=slistSearch&currPage=1&pageSize=5" id="form" method="post">
            <div class="nav_bar clearfix"> 
            		<c:if test="${empty time}">
            		<input type="text" id="time" name="time"  class="easyui-datebox"/>
            		</c:if>
            		<c:if test="${!empty time}">
            		<input type="text" id="time" name="time"  class="easyui-datebox" value=${time } />
            		</c:if>
            		<c:if test="${empty number}">
					<input type="text" id="number" name="number" style="margin-top:40px;margin-left:10px;width:250px;" placeholder="请输入手机号码"/>
    				</c:if>
    				<c:if test="${!empty number}">
					<input type="text" id="number" name="number" style="margin-top:40px;margin-left:10px;width:250px;" placeholder="请输入手机号码" value=${number } />
    				</c:if>
    				<input class="button" type="submit" value="Search" style="margin-top:30px;">
            </div>
            	
            		<table class="altrowstable" id="alternatecolor" style="margin-top:30px;">
						<tr>
							<th>顾客名称</th><th>联系电话</th><th>维修时间</th>
						</tr>
						<c:forEach var="list1" items="${list }">
						<tr>
							<!-- user=1说明是商家,为0说明是用户 -->
							<td><a href="/phoneRepair/order?method=showOrder&oid=${list1[3]}&flag=1">${list1[0] }</a></td><td>${list1[1] }</td><td>${list1[2] }</td>
						</tr>
						</c:forEach>
					</table>
		</form>
		</div>
	</div> 
	<c:if test="${empty time&& empty number }">
		<div class="pagination" style="margin-left:500px;">
    <ul>
        <li><a href="/phoneRepair/store?method=slistShow&currPage=1&pageSize=5&sid=${store.sid }">首&nbsp;&nbsp;&nbsp;页</a></li>
        <c:if test="${pageBean.currPage!=1 }">
        <li><a href="/phoneRepair/store?method=slistShow&currPage=${pageBean.currPage-1 }&pageSize=5&sid=${store.sid }">上一页</a></li>
        </c:if>
        <c:if test="${pageBean.currPage==1 }">
        <li><a href="/phoneRepair/store?method=slistShow&currPage=1&pageSize=5&sid=${store.sid }">上一页</a></li>
        </c:if>
        <li><a href="/phoneRepair/store?method=slistShow&currPage=${pageBean.currPage }&pageSize=5&sid=${store.sid }">第&nbsp;${pageBean.currPage }&nbsp;页</a></li>
        <c:if test="${pageBean.currPage != pageBean.totalPage }">
        <li><a href="/phoneRepair/store?method=slistShow&currPage=${pageBean.currPage+1 }&pageSize=5&sid=${store.sid }">下一页</a></li>
        </c:if>
        <c:if test="${pageBean.currPage == pageBean.totalPage }">
        <li><a href="/phoneRepair/store?method=slistShow&currPage=${pageBean.totalPage }&pageSize=5&sid=${store.sid }">下一页</a></li>
        </c:if>
        <li><a href="/phoneRepair/store?method=slistShow&currPage=${pageBean.totalPage }&pageSize=5&sid=${store.sid }">尾&nbsp;&nbsp;&nbsp;页</a></li>
    </ul>
</div>	
</c:if>
<c:if test="${!empty time|| !empty number }">
		<div class="pagination" style="margin-left:500px;">
    <ul>
        <li><a href="/phoneRepair/store?method=slistSearch&currPage=1&pageSize=5&time=${time }&number=${number}">首&nbsp;&nbsp;&nbsp;页</a></li>
        <c:if test="${pageBean.currPage!=1 }">
        <li><a href="/phoneRepair/store?method=slistSearch&currPage=${pageBean.currPage-1 }&pageSize=5&sid=${store.sid }&time=${time }&number=${number}">上一页</a></li>
        </c:if>
        <c:if test="${pageBean.currPage==1 }">
        <li><a href="/phoneRepair/store?method=slistSearch&currPage=1&pageSize=5&sid=${store.sid }&time=${time }&number=${number}">上一页</a></li>
        </c:if>
        <li><a href="/phoneRepair/store?method=slistSearch&currPage=${pageBean.currPage }&pageSize=5&sid=${store.sid }&time=${time }&number=${number}">第&nbsp;${pageBean.currPage }&nbsp;页</a></li>
        <c:if test="${pageBean.currPage != pageBean.totalPage }">
        <li><a href="/phoneRepair/store?method=slistSearch&currPage=${pageBean.currPage+1 }&pageSize=5&sid=${store.sid }&time=${time }&number=${number}">下一页</a></li>
        </c:if>
        <c:if test="${pageBean.currPage == pageBean.totalPage }">
        <li><a href="/phoneRepair/store?method=slistSearch&currPage=${pageBean.totalPage }&pageSize=5&sid=${store.sid }&time=${time }&number=${number}">下一页</a></li>
        </c:if>
        <li><a href="/phoneRepair/store?method=slistSearch&currPage=${pageBean.totalPage }&pageSize=5&sid=${store.sid }&time=${time }&number=${number}">尾&nbsp;&nbsp;&nbsp;页</a></li>
    </ul>
</div>	
</c:if>		
<!-- 页脚部分 开始 -->
<link rel="stylesheet" type="text/css" href="/phoneRepair/css/list/footer.css">

<!--页脚 开始-->
<div class="FF"  style="position:absolute;left:0;bottom:0;">
	<div class="footer wrap">
		<!-- 友情链接 -->
		<div class="frdLink wrap">
			<dl class="clearfix frdLink">
				<dd>
					友情链接：
					<a href="http://www.caobao.com/" target="_blank">手机维修</a><a href="http://bbs.eastsea.com.cn/" target="_blank">东海论坛</a><a href="http://www.rootbbs.com/" target="_blank">机轩手机维修论坛</a><a href="http://www.caobao.com/video/" target="_blank">手机维修视频</a><a href="http://www.szlande.com/" target="_blank">兰德手机培训</a><a href="http://news.aitaocui.cn/" target="_blank">翡翠</a><a href="http://www.shuajizhushou.cn/" target="_blank">刷机助手</a><a href="http://www.juyouhuishou.com/" target="_blank">手机回收网</a><a href="http://bbs.caobao.com/" target="_blank">手机维修论坛</a><a href="http://bbs.cnmo.com/" target="_blank">手机中国</a><a href="http://www.159shouji.com/" target="_blank">手机批发</a><a href="http://mobile.qudong.com/" target="_blank">手机资讯</a><a href="http://www.veryol.com/" target="_blank">非常在线</a><a href="http://www.shouji10086.com/" target="_blank">性价比高的手机</a><a href="http://www.lifesense.com/" target="_blank">智能手环</a><a href="http://www.360zhuti.com/" target="_blank">360安卓主题</a>					<a href="http://www.caobao.com/link/links.html" target="_blank" alt="草包友链" title="草包友链">友链申请</a>
				</dd>
			</dl>
		</div>		<div class="row-fluids safeInfo">
			
			<a rel="nofollow" target="_blank" href="http://www.cyberpolice.cn/wfjb/"><img src="/phoneRepair/img/list/cyberpolice.jpg" alt="公共信息安全网络监察" height="34"></a>
			<a rel="nofollow" key="56777671efbfb07fa5f91f9e" logo_size="124x47" logo_type="business" href="http://www.anquan.org/authenticate/cert/?site=www.caobao.com&amp;at=business" target="_blank"><img src="/phoneRepair/img/list/hy_124x47.png" alt="安全联盟认证" style="border: none;" height="34"></a>
			<a rel="nofollow" target="_blank" id="_pingansec_bottomimagelarge_shiming" href="http://si.trustutn.org/info?sn=868170109026620625771&amp;certType=1"><img src="/phoneRepair/img/list/bottom_large_img.png" height="34"></a>
		</div>
		<div class="row-fluids">
			<p class="CR">Copyright @ 2010-2017 咻一修网络科技有限公司 版权所有 违者必究 </p>
		</div>
	</div>
</div>
<!--页脚 结束-->        <!-- 页脚部分 结束 -->  
		
		<!-- 侧边栏 开始 -->  
		<link rel="stylesheet" type="text/css" href="/phoneRepair/css/list/sidebar.css">

<!--侧栏 开始-->
<div class="cb_sidebar">
	<span class="open"></span>
	<div class="cb_sidebar_bg"></div>
	<div class="cb_sidebar_tabs">
		<ul>
			<li class="cbwlogo">
				<a href="http://www.caobao.com/" title="草包网">
					<i></i>
				</a>
			</li>
			<li class="cart">
				<a href="http://www.caobao.com/buy/cart.html" title="购物车">
					<span class="cart_num">0</span>
					<i></i>
					<p class="icon-text">购物车</p>
				</a>
			</li>
			<li class="linekefu open_kefu">
				<a href="javascript:void(0);" title="在线客服">
					<i></i>
					<p class="icon-text">客服</p>
				</a>
			</li>
			<li class="weixin">
				<a href="javascript:void(0);" title="关注微信">
					<img src="/phoneRepair/img/list/erweima.jpg" alt="" class="erweima_">
					<i></i>
					<p class="icon-text">微信</p>
				</a>
			</li>
			<li class="app">
				<a href="javascript:void(0);" title="APP下载">
					<i></i>
					<p style="width:17px;" class="icon-text">APP</p>
					<div class="clearfix" id="App_code">
						<div class="android-code app-code">
							<img src="/phoneRepair/img/list/Android.png">
							<p>Android下载</p>
						</div>
						<div class="iphone-code app-code">
							<img src="/phoneRepair/img/list/ios.png">
							<p>IOS下载</p>
						</div>
						<em></em>
					</div>
				</a>
			</li>
			<li class="weibo">
				<a href="http://weibo.com/u/5394332979" target="_blank" title="关注微博">
					<i></i>
					<p class="icon-text">微博</p>
				</a>
			</li>
		</ul>
	</div>
	<div class="scrollUp">
		<a href="javascript:void(0);" title="返回顶部">
			<i></i>
		</a>
	</div>
</div>
<!--侧栏 结束-->
</body></html>