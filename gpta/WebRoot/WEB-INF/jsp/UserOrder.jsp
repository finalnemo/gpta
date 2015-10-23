<%@ page language="java" import="java.util.*,com.zhu.entity.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" />

	<title>XX旅行社欢迎您!</title>

	<!--Include JQM and JQ-->
	<link rel="stylesheet" href="css/jqmfb.min.css" />
	<link href="css/jquery.mobile-1.4.5.min.css" rel="stylesheet" type="text/css" />
	<script src="js/jquery-2.1.3.min.js" type="text/javascript"></script>
	<script src="js/jquery.animate-enhanced.min.js"></script>
	<!--JQM globals you can edit or remove file entirely... note it needs to be loaded before jquerymobile js -->
	<script src="js/jqm.globals.js"></script>
	<script src="js/jquery.mobile-1.4.5.min.js" type="text/javascript"></script>	
	<!--JQM SlideMenu-->
	<link rel="stylesheet" href="css/jqm.slidemenu.css" />
	<script src="js/jqm.slidemenu.js"></script>
	<script type="text/javascript">
	</script>
</head>
<body>
<%User user = (User)session.getAttribute("user"); %>
	<div id="slidemenu">
		<div id="profile">
			<img src="img/touxiang.jpg">
			<div class="profile_info"><strong><%=user.getUserid() %></strong><br><small>欢迎您!</small></div>
		</div>

		<h3>菜单</h3>

		<ul>
			<li><a href="index.do" data-ajax="false">主页</a></li>
			<li><a href="userinfo.do?m=userorder" data-ajax="false">我的订单</a></li>
			<li><a href="userinfo.do?m=userinfo" data-ajax="false">个人中心</a></li>
			<li><a href="userinfo.do?m=updpwd" data-ajax="false">修改密码</a></li>
			<li><a href="login.do?m=exit" data-ajax="false">退出登录</a></li>
		</ul>

		

	</div>

	<div data-role="page" id="main_page" data-theme="a">

		<div data-role="header" data-position="fixed" data-tap-toggle="false" data-update-page-padding="false">
			<a href="#" data-slidemenu="#slidemenu" data-slideopen="false"  data-corners="false" data-iconpos="notext">菜单</a>
			<h1>我的订单</h1>
		</div>

		<div data-role="content">
			<h3><font style="color:#7D9EC0">我的订单:</font></h3>
				<ul data-role="listview" data-inset="true" data-filter="true" data-filter-placeholder="订单搜索">
					<c:forEach var="userorder" items="${userorder}">
					<div data-role="collapsible" data-collapsed="false" data-inset="true">
					<h1><font style="color:#7D9EC0">&lt;${userorder.spotid }&gt;</font></h1>
					<table data-role="table" data-mode="reflow"  class="ui-responsive table-stroke">
    				<thead>
      					<tr>
        				<th>订单名</th>
         				<th>订单状态</th>
         				<th>订单日期</th>
       					</tr>
    				</thead>
     				<tbody>
       				<tr>
        				<td>${userorder.spotid }</td>
        				<td>
        				<c:if test="${userorder.status==0 }">未支付</c:if>
        				<c:if test="${userorder.status==1 }">已支付</c:if>
        				<c:if test="${userorder.status==2 }">处理中</c:if>
        				<c:if test="${userorder.status==3 }">订单完成</c:if>
        				<c:if test="${userorder.status==4 }">订单取消</c:if>
        				<a href="order.do?m=userorder&id=${userorder.id }" data-ajax="false">订单详情</a>
        				</td>
        				<td>${userorder.date }</td>
        	
       				</tr>
       			 	</tbody>
       			 	</table>
       			 	</div>
					</c:forEach>
				</ul>
		</div>
	</div>
</body>
</html>