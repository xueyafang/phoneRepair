/* 
* @Author: Marte
* @Date:   2016-03-23 10:58:46
* @Last Modified by:   Marte
* @Last Modified time: 2016-05-31 09:51:50
*/
var mapObj;
function mapInit () {
	mapObj = new AMap.Map('map');    //默认定位：初始化加载地图时，center及level属性缺省，地图默认显示用户所在城市范围
};

// 浏览器定位
var geolocation;
function getCurrentPosition () {
	mapObj.plugin('AMap.Geolocation', function () {
		geolocation = new AMap.Geolocation({
			enableHighAccuracy: true,//是否使用高精度定位，默认:true
			timeout: 10000,          //超过10秒后停止定位，默认：无穷大
			maximumAge: 10000,       //定位结果缓存0毫秒，默认：0
			convert: true,           //自动偏移坐标，偏移后的坐标为高德坐标，默认：true
			showButton: false,       //显示定位按钮，默认：true
			buttonPosition: 'LB',    //定位按钮停靠位置，默认：'LB'，左下角
			buttonOffset: new AMap.Pixel(10, 20),//定位按钮与设置的停靠位置的偏移量，默认：Pixel(10, 20)
			showMarker: true,        //定位成功后在定位到的位置显示点标记，默认：true
			showCircle: true,        //定位成功后用圆圈表示定位精度范围，默认：true
			panToLocation: true,     //定位成功后将定位到的位置作为地图中心点，默认：true
			zoomToAccuracy:false     //定位成功后调整地图视野范围使定位位置及精度范围视野内可见，默认：false
		});
		//mapObj.addControl(geolocation);
		geolocation.getCurrentPosition();
		AMap.event.addListener(geolocation, 'complete', onComplete);//返回定位信息
		AMap.event.addListener(geolocation, 'error', onError);      //返回定位出错信息
	});
};
function watchPosition () {    //监控当前位置并获取当前位置信息
	geolocation.watchPosition();
};
function onComplete (data) {   //解析定位结果
	$("input[name=lng]").val(data.position.getLng());
	$("input[name=lat]").val(data.position.getLat());
	var lnglatXY = [data.position.getLng(), data.position.getLat()]; //已知点坐标
	geocoder(lnglatXY);
};
function onError (data) {    //解析定位错误信息
	var str = '定位失败,错误信息：';
	switch(data.info) {
		case 'PERMISSION_DENIED':
			str += '浏览器阻止了定位操作';
			break;
		case 'POSITION_UNAVAILBLE':
			str += '无法获得当前位置';
			break;
		case 'TIMEOUT':
			str += '定位超时';
			break;
		default:
			str += '未知错误';
			break;
	}
	alert(str);
};

// 手动定位
function againPosition () {
	var againObj = new AMap.Map("mapBx", {
		resizeEnable: true,
		zoom: 18
	});
	var lngX = $("input[name=lng]").val();
	var latY = $("input[name=lat]").val();
	againObj.setCenter(new AMap.LngLat(lngX, latY));
	var marker = new AMap.Marker({
		position: againObj.getCenter(),
		draggable: true,
		cursor: 'move',
		raiseOnDrag: true
	});
	marker.setMap(againObj);
	AMap.event.addListener(marker, 'dragend', function(e){
		var point = marker.getPosition(); // 重新获取点坐标
		$("input[name=lng]").val(point.getLng());
		$("input[name=lat]").val(point.getLat());
	});
};

// 店铺位置地图 点标记
function shopPosition (lngX, latY) {
	var shopObj = new AMap.Map("mapBx", {
		resizeEnable: true,
		zoom: 18
	});
	shopObj.setCenter(new AMap.LngLat(lngX, latY));
	var marker = new AMap.Marker();
	marker.setMap(shopObj);
};


// 坐标返回地址
var MGeocoder;
function geocoder(lnglatXY) {
    mapObj.plugin(["AMap.Geocoder"], function() {     //加载地理编码插件
        MGeocoder = new AMap.Geocoder({
			radius: 1000,
			extensions: "all"
		});        
		MGeocoder.getAddress(lnglatXY, function(status, result) {
			if (status === 'complete' && result.info === 'OK') {
				var province = result.regeocode.addressComponent.province;    // 返回省
				var city     = result.regeocode.addressComponent.city;        // 返回市
				var district = result.regeocode.addressComponent.district;    // 返回区
				var township = result.regeocode.addressComponent.township;    // 返回镇区
				var street = result.regeocode.addressComponent.street;        // 返回街道
				var address  = result.regeocode.addressComponent.neighborhood; // 返回地址
				$("input[name=province]").val(province);
				$("input[name=city]").val(city);
				$("input[name=district]").val(district);
				$("input[name=township]").val(township);
				$("input[name=street]").val(street);
				/*var pois = result.regeocode.pois;
				if(pois == '' || pois == 'null' || !pois){
					return false;
				}else{
					var html = '';
					for(var i=0;i<10;i++){
						var lngX    = pois[i]['location']['lng'];
						var latY    = pois[i]['location']['lat'];
						var address = pois[i]['address'];
						var name    = pois[i]['name'];
						var type    = pois[i]['type'];
						if(lngX){
							html += '<li><p class="suggest-name" data-lng="'+ lngX +'" data-lat="'+ latY +'">'+ name +'</p><p class="suggest-addr">'+ address +'</p></li>';
							//mapObj.setCenter(new AMap.LngLat(lngX, latY));
						}
					}
					if(html == ''){
						html += '<li><p class="suggest-name">搜索失败</p><p class="suggest-addr">您可以手动定位,或者重新输入新的标志</p></li>';
					}
					$('.mapsearch').empty();
					$('.mapsearch').html('<ul>'+html+'</ul>');
					$('.mapsearch').show();
				}*/
			}
		});
    });
}

// 地址返回坐标
function geocoder2(address) {
    mapObj.plugin(["AMap.Geocoder"], function() {     //加载地理编码插件
        MGeocoder = new AMap.Geocoder({
			city: "", //城市区号，默认：“全国”
			radius: 1000
		});        
		MGeocoder.getLocation(address, function(status, result) {
			if (status === 'complete' && result.info === 'OK') {
				//地理编码结果数组
				var geocode = result.geocodes;
				for (var i = 0; i < geocode.length; i++) {
					$("input[name=lng]").val(geocode[i].location.getLng());
					$("input[name=lat]").val(geocode[i].location.getLat());
				}
			}
		});
    });
}

//POI搜索，关键字查询
var MSearch;
function poiSearch(city, keyword) {
	if(keyword == '' || keyword == 'null' || !keyword){
		return false;
	}else{
		if(!city){
			city='深圳市';
		}
		$.post(_CONTROLLER_+'/getCityNumber', {'city':city}, function(number){
			if(number > 0){
				mapObj.plugin(["AMap.PlaceSearch"], function() {    //构造地点查询类  
					MSearch = new AMap.PlaceSearch({ 
						pageSize:10,
						pageIndex:1,
						city:number    // 城市区号
					});
					AMap.event.addListener(MSearch, "complete", function(data){
						var pois = data.poiList.pois;
						if(pois == '' || pois == 'null' || !pois){
							return false;
						}else{
							var html = '';
							for(var i=0;i<pois.length;i++){
								var lngX    = pois[i]['location']['lng'];
								var latY    = pois[i]['location']['lat'];
								var address = pois[i]['address'];
								var name    = pois[i]['name'];
								var type    = pois[i]['type'];
								if(lngX){
									html += '<li><p class="suggest-name" data-lng="'+ lngX +'" data-lat="'+ latY +'">'+ name +'</p><p class="suggest-addr">'+ address +'</p></li>';
									//mapObj.setCenter(new AMap.LngLat(lngX, latY));
								}
							}
							if(html == ''){
								html += '<li><p class="suggest-name">搜索失败</p><p class="suggest-addr">您可以手动定位,或者重新输入新的标志</p></li>';
							}
							$('.mapsearch').empty();
							$('.mapsearch').append('<ul>'+html+'</ul>');
							$('.mapsearch').show();
						}
					});//返回地点查询结果        
					MSearch.search(keyword); //关键字查询
				}); 
			}else{
				var txt=  "城市信息异常，请联系客服！";
				window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.error);
				return false;
			}
		});
	}
}