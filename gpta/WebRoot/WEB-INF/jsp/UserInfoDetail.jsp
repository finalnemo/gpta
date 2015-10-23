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
		$("#a1").focus(function(){
			$("#m1").html("");
		});
		$("#a2").focus(function(){
			$("#m2").html("");
		});
		$("#a3").focus(function(){
			$("#m3").html("");
		});
		$("#a4").focus(function(){
			$("#m4").html("");
		});
		$("#a5").focus(function(){
			$("#m5").html("");
		});
		$("#btn").click(function(){
			var id = $("#a0").val();
			var phone = $("#a1").val();
			var birthday = $("#a2").val();
			var idcard = $("#a3").val();
			var email = $("#a4").val();
			var address = $("#a5").val();
			if(phone.length==0){
				$("#m1").html("请输入联系电话!");
			}else if(birthday.length==0){
				$("#m2").html("请输入出生日期!");
			}else if(idcard.length==0){
				$("#m3").html("请输入身份证号!");
			}else if(email.length==0){
				$("#m4").html("请输入邮箱!");
			}else{
			$.ajax({
  				type: 'post',
  				url: "userinfo.do?m=update",
  				data:{
  					id:id,
  					phone:phone,
  					birthday:birthday,
  					idcard:idcard,
  					email:email,
  					address:address
  				},
  				success: function(back){
  					if(back==0){
  						alert("修改成功!");
  						window.location.reload();
  					}else{
  						alert("修改失败!");
  					}
  				}
			});
			
			
			}
		})
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
			<h1>欢迎,<%=user.getUserid() %></h1>
		</div>

	<div data-role="content">
	<table data-role="table" data-mode="reflow"  class="ui-responsive table-stroke">
     <thead>
      <tr>
         <th style="display:none">id</th>
         <th>联系电话</th>
         <th>出生日期</th>
         <th>身份证号码</th>
         <th>邮箱</th>
         <th>联系地址</th>
       </tr>
     </thead>
     <tbody>
     <c:forEach var="userinfo" items="${userinfo}">
       <tr>
       	 <td style="display:none"><input type="text" id="a0" value="${userinfo.id }"></td>
         <td><input type="tel" id="a1" value="${userinfo.phone }">
         <span id="m1" style="color:red"></span></td>
         <td><input type="date"  id="a2" value="${userinfo.birthday }">
         <span id="m2" style="color:red"></span></td>
         <td><input type="text" id="a3" maxlength="18" value="${userinfo.idcard }">
         <span id="m3" style="color:red"></span></td>
         <td><input type="email" id="a4" value="${userinfo.email }">
         <span id="m4" style="color:red"></span></td>
         <td><input type="text" id="a5" value="${userinfo.address }">
         <span id="m5" style="color:red"></span></td>
       </tr>
     </c:forEach>
       </tbody>
	</table>
	<input type="button" id="btn" value="修改">
		</div>

	</div>
	
	
	
</body>
</html>