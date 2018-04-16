<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<script type="text/javascript" src="/phoneRepair/js/jquery-1.11.3.min.js"></script>
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
                            <li><a tabindex="-1" href="sign-in.html">退出</a></li>
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
            
            <h1 class="page-title">所有订单</h1>
        </div>
        
                <ul class="breadcrumb">
            <li><a href="/phoneRepair/jsp/admin/index.jsp">首页</a> <span class="divider"></span></li>
        </ul>

        <div class="container-fluid">
            <div class="row-fluid">
                    
<div class="btn-toolbar">
    <button class="btn btn-primary">订单列表</button>
  <div class="btn-group">
  </div>
</div>
<div class="well">
    <table class="table">
      <thead>
        <tr>
          <th>订单id</th>
          <th>用户名</th>
          <th>店铺名称</th>
          <th>价格</th>
          <th>用户状态</th>
          <th>商家状态</th>
          <th>日期</th>
          <th>故障</th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody>
      	<c:forEach var="order" items="${list }">
	      	<tr>
	          <td>${order.oid }</td>
	          <td>${order.username }</td>
	          <td>${order.sname }</td>
	          <c:if test="${order.price!=0 }">
	          <td>${order.price }</td>
	          </c:if>
	          <c:if test="${order.price==0 }">
	          <td>价格未定 </td>
	          </c:if>
	          <c:if test="${order.sstate==0 }">
	          <td>未付款</td>
	          </c:if>
	          <c:if test="${order.sstate==1 }">
	          <td>已付款</td>
	          </c:if>
	          <c:if test="${order.ustate==0 }">
	          <td>维修中</td>
	          </c:if>
	          <c:if test="${order.ustate==1 }">
	          <td>维修完成</td>
	          </c:if>
	          <td>${order.date }</td>
	          <c:if test="${!empty order.fault }">
	          <td>${order.fault }</td>
	          </c:if>
	          <c:if test="${empty order.fault }">
	          <td>等待维修师鉴定</td>
	          </c:if>
	          <td>
	          	<a href="#myModal${order.oid}" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
	          </td>
	        </tr>
	        <div class="modal small hide fade" id="myModal${order.oid }" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h3 id="myModalLabel">Update Confirmation</h3>
				</div>
				<div class="modal-body">
					<p class="error-text">
						<i class="icon-warning-sign modal-icon"></i>你确定要删除吗?
					</p>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
					<button id="${order.oid }" class="removeOrder btn btn-danger" data-dismiss="modal">确定</button>
				</div>
			</div>
      	</c:forEach>
      </tbody>
    </table>
</div>
<div class="pagination" style="margin-left:300px;">
    <ul>
    	<li><a href="/phoneRepair/order?method=getAllOrder&currPage=1&pageSize=5">首&nbsp;&nbsp;&nbsp;页</a></li>
    	<c:if test="${pageBean.currPage!=1 }">
        <li><a href="/phoneRepair/order?method=getAllOrder&currPage=${pageBean.currPage-1 }&pageSize=5">上一页</a></li>
        </c:if>
        <c:if test="${pageBean.currPage==1 }">
        <li><a href="/phoneRepair/order?method=getAllOrder&currPage=1&pageSize=5">上一页</a></li>
        </c:if>
        <li><a href="#">第&nbsp;${pageBean.currPage }&nbsp;页</a></li>
        <c:if test="${pageBean.currPage!=pageBean.totalPage }">
        <li><a href="/phoneRepair/order?method=getAllOrder&currPage=${pageBean.currPage+1 }&pageSize=5">下一页</a></li>
        </c:if>
        <c:if test="${pageBean.currPage>=pageBean.totalPage }">
        <li><a href="/phoneRepair/order?method=getAllOrder&currPage=${pageBean.totalPage }&pageSize=5">下一页</a></li>
        </c:if>
        <li><a href="/phoneRepair/order?method=getAllOrder&currPage=${pageBean.totalPage }&pageSize=5">尾&nbsp;&nbsp;&nbsp;页</a></li>
    </ul>
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
    $(function() {
        $('.demo-cancel-click').click(function(){return false;});
        
        $(".removeOrder").click(function(){
        	var oid = $(this).attr("id");
        	alert(oid);
        	$.ajax({
        		url:"/phoneRepair/order",
        		data: "method=removeOrder&oid="+oid,
        		dataType:"json",
        		error:function(){
        			alert("ajax出错");
        		},
        		success:function(data){
        			window.location.reload();
        		}
        		
        	});
        });
    });
	</script>
    
  </body>
</html>


