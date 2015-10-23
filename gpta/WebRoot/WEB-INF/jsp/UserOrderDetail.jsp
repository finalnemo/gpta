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
	$(function(){
		$("#back").click(function(){
// 			location.reload();
			window.location.href="userinfo.do?m=userorder";
// 			history.go(-1);
// 			self.location=document.referrer;
// 			window.location = document.referrer;
		});
		
		$("#btn").click(function(){
				var id = $("#a1").val();
				var status = 1;
				$.ajax({
  				type: 'post',
  				url: "order.do?m=updatestatus",
  				data:{
  					id:id,
  					status:status
  				},
  				success: function(back){
  					alert("支付成功!");
  					window.location.href="userinfo.do?m=userorder";
  				}
			});
		})
		
		$("#cancel").click(function(){
			if(confirm("是否取消订单?")){
				var id = $("#a1").val();
				var status = 4;
				$.ajax({
  				type: 'post',
  				url: "order.do?m=updatestatus",
  				data:{
  					id:id,
  					status:status
  				},
  				success: function(back){
  					window.location.href="userinfo.do?m=userorder";
  				}
			});
			}
		});
	});
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
			<h1>用户中心</h1>
		</div>

		<div data-role="content">
			<h2><font style="color:#7D9EC0">订单详情</font></h2>
			<input type="hidden" id="a1" value="${order.id }" />
			<table data-role="table" data-mode="reflow"  class="ui-responsive table-stroke">
     			<thead>
      			<tr>
         			<th>订单号</th>
         			<th>景点名</th>
         			<th>人数</th>
         			<th>价格</th>
         			<th>开团日期</th>
         			<th>状态</th>
         			<th>车辆编号</th>
         			<th>车牌</th>
         			<th>订单日期</th>
      			</tr>
     			</thead>
     			<tbody>
       			<tr>
         			<td>${order.id }</td>
         			<td>${spot.title }</td>
         			<td>${order.num }人</td>
         			<td>&yen;${order.price }</td>
         			<td>${spot.date }</td>
         			<td>
         				<c:if test="${order.status==0 }">未支付</c:if>
        				<c:if test="${order.status==1 }">已支付</c:if>
        				<c:if test="${order.status==2 }">处理中</c:if>
        				<c:if test="${order.status==3 }">订单完成</c:if>
        				<c:if test="${order.status==4 }">订单取消</c:if>
        			</td>
        			<td>${car.carid }</td>
        			<td>${car.license }</td>
         			<td>${order.date }</td>
       			</tr>
       			</tbody>
			</table>
			<c:if test="${order.status==0 }">
			<input type="button" id="btn" value="立即支付">
			</c:if>
			<c:if test="${order.status!=3 && order.status != 4}">
			<input type="button" id="cancel" value="取消订单">
			</c:if>
			<input type="button" id="back" value="返回" />
		</div>
	</div>
	
</body>
</html>