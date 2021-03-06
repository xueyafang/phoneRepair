<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>咻一修后台管理系统</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" type="text/css" href="/phoneRepair/admin/lib/bootstrap/css/bootstrap.css">
    
    <link rel="stylesheet" type="text/css" href="/phoneRepair/admin/stylesheets/theme.css">
    <link rel="stylesheet" href="/phoneRepair/admin/lib/font-awesome/css/font-awesome.css">

    <script src="/phoneRepair/admin/lib/jquery-1.7.2.min.js" type="text/javascript"></script>
	<script src="/phoneRepair/js/highCharts/jquery-1.8.3.min.js"></script>
	<script src="/phoneRepair/js/highCharts/highcharts.js"></script>
	<script src="/phoneRepair/js/highCharts/exporting.js"></script>
	<script src="/phoneRepair/js/highCharts/data.js"></script>
	<script src="/phoneRepair/js/highCharts/drilldown.js"></script>
	<script src="/phoneRepair/js/highCharts/grid-light.js"></script>
    <!-- Demo page code -->

    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
  <!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
  <!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
  <!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
  <!--[if (gt IE 9)|!(IE)]><!--> 
  <body class=""> 
  <!--<![endif]-->
    
    <div class="navbar">
        <div class="navbar-inner">
                <ul class="nav pull-right">
                    
                    <li id="fat-menu" class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-user"></i> admin
                            <i class="icon-caret-down"></i>
                        </a>

                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" class="visible-phone" href="#">Settings</a></li>
                            <li class="divider visible-phone"></li>
                            <li><a tabindex="-1" href="login.jsp">退出</a></li>
                        </ul>
                    </li>
                    
                </ul>
                <a class="brand" href="index.html"><span class="second">咻一修</span> <span class="second">后台管理系统</span></a>
        </div>
    </div>
    


    
    <div class="sidebar-nav">
    	<a href="/phoneRepair/jsp/admin/index.jsp" class="nav-header" ><i class="icon-user"></i>后台首页</a>
        <a href="#user-menu" class="nav-header" data-toggle="collapse"><i class="icon-dashboard"></i>用户</a>
        <ul id="user-menu" class="nav nav-list collapse">
            <li ><a href="/phoneRepair/user?method=getAllUser&currPage=1&pageSize=5">用户管理</a></li>
        </ul>
		
		
        
        <a href="#store-menu" class="nav-header" data-toggle="collapse"><i class="icon-dashboard"></i>商户</a>
        <ul id="store-menu" class="nav nav-list collapse">
            <li ><a href="/phoneRepair/store?method=getAllStore&currPage=1&pageSize=5">商户管理</a></li>
        </ul>
        <a href="#order-menu" class="nav-header" data-toggle="collapse"><i class="icon-dashboard"></i>订单</a>
        <ul id="order-menu" class="nav nav-list collapse">
            <li ><a href="/phoneRepair/order?method=getAllOrder&currPage=1&pageSize=5">订单管理</a></li>
        </ul>
        
        <a href="/phoneRepair/jsp/admin/help.jsp" class="nav-header" ><i class="icon-question-sign"></i>帮助</a>
    </div>
    

    
    <div class="content">
        
        <div class="header">
   

            <h1 class="page-title">Dashboard</h1>
        </div>
        
                <ul class="breadcrumb">
            <li><a href="index.jsp">首页</a> <span class="divider">/</span></li>
            <li class="active">Dashboard</li>
        </ul>
        <div class="container-fluid">
            <div class="row-fluid">
<div class="row-fluid">

    

    <div class="block">
        <a href="#page-stats" class="block-heading" data-toggle="collapse">Latest Status</a>
        <div id="page-stats" class="block-body collapse in">

            <div class="stat-widget-container">
                <div class="stat-widget">
                    <div class="stat-button">
                        <p id="storeCount" class="title"></p>
                        <p class="detail">店铺</p>
                    </div>
                </div>

                <div class="stat-widget">
                    <div class="stat-button">
                        <p id="userCount" class="title"></p>
                        <p  class="detail">用户</p>
                    </div>
                </div>

                <div class="stat-widget">
                    <div class="stat-button">
                        <p id="orderCount" class="title"></p>
                        <p class="detail">订单</p>
                    </div>
                </div>

                

            </div>
        </div>
    </div>
</div>

<div class="row-fluid">
    <div class="block span6">
        <a href="#container" class="block-heading" data-toggle="collapse">store</a>
        <div id="container" class="block-body collapse in" style="min-width:400px;height:400px">
        </div>
    </div>
    <div class="block span6">
        <a href="#widget1container" class="block-heading" data-toggle="collapse">Collapsible </a>
        <div id="widget1container" class="block-body collapse in">
            <h2>Here's a Tip</h2>
            <p>This template was developed with <a href="http://middlemanapp.com/" target="_blank">Middleman</a> and includes .erb layouts and views.</p>
            <p>All of the views you see here (sign in, sign up, users, etc) are already split up so you don't have to waste your time doing it yourself!</p>
            <p>The layout.erb file includes the header, footer, and side navigation and all of the views are broken out into their own files.</p>
            <p>If you aren't using Ruby, there is also a set of plain HTML files for each page, just like you would expect.</p>
        </div>
    </div>
</div>


                    
                    <footer>
                        <hr>
                        <p style="margin-left:400px;">&copy; 2012 咻一修后台管理系统</p>
                    </footer>
                    
            </div>
        </div>
    </div>
    


    <script src="/phoneRepair/admin/lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $('#container').highcharts({
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false
            },
            title: {
                text: '各省份商家占总商家的百分比'
            },
            tooltip: {
                pointFormat: '{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: false
                    },
                    showInLegend: true
                }
            },
            series: [{
            	type:"pie"
            }]
        });
       var arr = [];
        $.ajax({
       		url:"/phoneRepair/pie",
       		dataType:"json",
       		error:function(){
       			alert("ajax出错");
       		},
       		success:function(data){
       			$.each(data,function(i,dad){
       					var arr1 = new Array();
       	   				arr1 = dad.split(" ");
       	   				arr.push({"name":arr1[0],"y":+arr1[1]});
       					
       			});
       			$('#container').highcharts().series[0].setData(arr); 
       		}
       	}); 
        //加载商店,用户,订单的数量
        $(function() {
        	 $.ajax({
        		url:"/phoneRepair/count",
        		data: "method=getCount",
        		dataType:"json",
        		error:function(){
        			alert("ajax出错");
        		},
        		success:function(data){
        			$("#storeCount").text(data[0]);
        			$("#userCount").text(data[1]);
        			$("#orderCount").text(data[2]);
        		}
        		
        	}); 
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
    
  </body>
</html>