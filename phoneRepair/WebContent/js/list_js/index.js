/* 
* @Author: Marte
* @Date:   2016-04-07 11:30:07
* @Last Modified by:   Marte
* @Last Modified time: 2016-06-27 16:37:48
*/

// banner图适应小屏
bannerAuto();
$(window).on("resize",function(){
	bannerAuto();
});
function bannerAuto(){
	var slideBox = $("#slideBoxs"),
		slideBoxImg = slideBox.find("ul li img");
	var screenWidth = document.body.clientWidth,
		slideImgWidth = slideBoxImg.width();
	slideBox.width(screenWidth);
	if(screenWidth < slideImgWidth){
		slideBoxImg.css({'margin-left': (screenWidth - slideImgWidth) +'px'});
	}
};

// 商品切换
var num = 0;
var ani_left = $("#index_pro").width();
var hd_ul = $("#index_pro ul");
$(".store").delegate('span.right', 'click', function(event) {
	num++;
	if(num>3){
		num=1
		hd_ul.css("left",0)
	}
	hd_ul.stop().animate({"left":-ani_left*num},500)
}).delegate('span.left', 'click', function(event) {
	num--;
	if(num<0){
		num=2
		hd_ul.css("left",-ani_left*3)
	}
	hd_ul.stop().animate({"left":-ani_left*num},500)
});

// 快捷栏目
var cur = 23;
$(".con").delegate('.Slst', 'mouseenter', function(event) {
	$(this)
		.children(".extend")
		.stop()
		.fadeIn(300)
		.css("z-index",cur++);
}).delegate('.service .Slst', 'mouseleave', function(event) {
	$(this).children(".extend").stop().fadeOut(300);
}).delegate('.map_icon', 'click', function(event) {      // 打开店铺地图
	var _this = $(this);
	var xy = _this.attr('data-deg').split(",");
	shopPosition(xy[0], xy[1]);
	$(".dark").fadeTo(500,0.35);
	$('.bigbox').slideDown(250);
})
// Banner 幻灯片
jQuery(".slideBox").slide({mainCell:".bd ul",effect:"fold",autoPlay:true},3500);

// 消息列表
$(".news-links ul li").click(function(event) {
	var myindex = $(this).index();
	$(this).addClass('current').siblings().removeClass('current');
	$(".skillbd:eq("+myindex+")").addClass('current').siblings().removeClass('current');
});

// 维修店
$(".nav_bar").on("mouseenter","dd",function(){
	var _this = $(this);
	var myindex = _this.index()-1;
	_this.addClass('current').siblings().removeClass('current');
	$(".store_lst:eq("+myindex+")").addClass('current').siblings().removeClass('current');
}).on("click","#moreCity",function(){
	var _this = $(this);
	if(_this.text() == "更多"){
		_this.siblings("dl").stop().animate({"height":"100%"},300);
		_this.html("收起<i class='icon-arrow'></i>").children("i").css({
			"width":"12px",
			"height":"9px",
			"background-position":"-95px -514px"
		});
	}else if(_this.text() == "收起"){
		_this.siblings("dl").stop().animate({"height":"36px"},300);
		_this.html("更多<i class='icon-arrow'></i>").children("i").css({
			"width":"12px",
			"height":"7px",
			"background-position":"-109px -514px"
		});
	};
});


