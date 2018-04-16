/* 
* @Author: Marte
* @Date:   2016-03-04 16:41:17
* @Last Modified by:   Marte
* @Last Modified time: 2016-05-11 17:08:25
*/
// 维修下单页面
$(".select dd").mouseenter(function(event) {
	$(this).addClass('current').siblings("dd").removeClass('current');
}).mouseleave(function(event) {
    $(this).removeClass('current');
});

$(".Breadcrumbs-backArrow").click(function(){    // 维修/回收流程返回上一页
	history.back(-1);
});
//关闭弹出层
$(".off").click(function(){
	$(".dark").fadeOut(500);
	$(this).parents(".posF").slideUp(300);
});
//退出登录
$(".logout").click(function(){
	var txt=  "您确定要退出吗？";
	var option = {
		title: "提示",
		btn: parseInt("0011",2),
		onOk: function(){
			window.location.href = _APP_+"/users/logout.html"; 
		}
	}
	window.wxc.xcConfirm(txt, "custom", option);
});

// JavaScript添加更改URL参数  
function changeParam(data, url){
	if(!url){
		url=window.location.href;
	}
	for(var i = 0;i < data.length;i++){
		var reg = new RegExp("(^|)"+ data[i][0] +"=([^&]*)(|$)");
		var tmp = data[i][0] + "=" + data[i][1];
		if(url.match(reg) != null){
			url= url.replace(eval(reg),tmp);
		}else{
			if(url.match("[\?]")){
				url= url + "&" + tmp;
			}else{
				url= url + "?" + tmp;
			}
		}	
	}
	location.href=url;
}

// 打开客服窗口
$(".open_kefu").click(function(event) {
	var iUrl    = 'http://chat8.live800.com/live800/chatClient/chatbox.jsp?companyID=674053&configID=150194&jid=2017829186';
	// 商桥 var iUrl    = 'http://p.qiao.baidu.com/cps/chat?siteId=6995029&userId=10589340';
	var iWidth  = 750; // 弹出窗口的宽度;
	var iHeight = 615; // 弹出窗口的高度;
	var iTop    = (window.screen.availHeight-30-iHeight)/2; // 获得窗口的垂直位置;
	var iLeft   = (window.screen.availWidth-10-iWidth)/2;   // 获得窗口的水平位置;
	window.open (iUrl,'','height='+iHeight+',width='+iWidth+',top='+iTop+',left='+iLeft);
});










