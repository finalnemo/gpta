<%@ page language="java" import="java.util.*,com.zhu.entity.*"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" />

<title>XX旅行社欢迎您!</title>

<!--Include JQM and JQ-->
<link rel="stylesheet" href="css/jqmfb.min.css" />
<link href="css/jquery.mobile-1.4.5.min.css" rel="stylesheet"
	type="text/css" />
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
	$("#a1").focus(function(){
		$("#m1").html("");
	});
	$("#a2").focus(function(){
		$("#m2").html("");
	});
	$("#a3").focus(function(){
		$("#m3").html("");
	});
	$("#btn").click(function(){
		var oldpassword = $("#a1").val();
		var newpassword = $("#a2").val();
		var renewpassword = $("#a3").val();
		if(oldpassword.length==0){
			$("#m1").html("请输入旧密码!");
		}else if(newpassword.length==0){
			$("#m2").html("请输入新密码!");
		}else if(renewpassword.length==0){
			$("#m3").html("请输入确认密码!");
		}else if(newpassword.length<6){
			$("#m2").html("请输入6位以上密码!");
		}else if(renewpassword.length<6){
			$("#m3").html("请输入6位以上密码!");
		}else if(newpassword!=renewpassword){
			$("#m3").html("两次密码不一致!");
		}else{
			$.ajax({
  				type: 'post',
  				url: "userinfo.do?m=alterpwd",
  				data:{
  					password:oldpassword,
  					newpassword:newpassword
  				},
  				success: function(back){
  					if(back==0){
  						alert("修改成功!");
  						window.location.reload();
  					}else if(back==1){
  						$("#m1").html("旧密码错误!");
  					};
  				}
			});
		}
	})
})

</script>
</head>
<body>

	<%User user = (User)session.getAttribute("user"); %>
	<div id="slidemenu">
		<div id="profile">
			<img src="img/touxiang.jpg">
			<div class="profile_info">
				<strong><%=user.getUserid() %></strong><br> <small>欢迎您!</small>
			</div>
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

		<div data-role="header" data-position="fixed" data-tap-toggle="false"
			data-update-page-padding="false">
			<a href="#" data-slidemenu="#slidemenu" data-slideopen="false"
				data-corners="false" data-iconpos="notext">菜单</a>
			<h1>修改密码</h1>
		</div>

		<div data-role="content">
			<table data-role="table" data-mode="reflow"
				class="ui-responsive table-stroke">
				<thead>
					<tr>
						<th>旧密码</th>
						<th>新密码</th>
						<th>确认新密码</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="password" id="a1">
						<span id="m1" style="color:red"></span></td>
						<td><input type="password" id="a2">
						<span id="m2" style="color:red"></span></td>
						<td><input type="password" id="a3">
						<span id="m3" style="color:red"></span></td>
					</tr>
				</tbody>
			</table>
				<input type="button" id="btn" value="确定">
		</div>

	</div>



</body>
</html>