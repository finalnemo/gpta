<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page contentType="text/html;charset=utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>XX旅行社欢迎您！</title>
    <!--     初始化移动浏览显示 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" />
    <link href="css/jquery.mobile-1.4.5.min.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-2.1.3.min.js" type="text/javascript"></script>
	<script src="js/jquery.mobile-1.4.5.min.js" type="text/javascript"></script>
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
// 			$("#a6").focus(function(){
// 				$("#m6").html("");
// 			});
			$("#a1").blur(function(){
				var userid = $("#a1").val();
				if(userid.length==0){
					$("#m1").html("请输入用户名!");
				}
			
			})
// 			$("#a2").blur(function(){
// 				var newpassword = $("#a2").val();
// 				var password = $("#a3").val();
// 				if(newpassword.length==0){
// 					$("#m2").html("请输入密码!");
// 				}else if(newpassword.length<6){
// 					$("#m2").html("请输入6位以上密码!");
// 				}else if(password!=newpassword){
// 					$("#m3").html("两次密码不一致!");
// 				}
			
// 			})
// 			$("#a3").blur(function(){
// 				var newpassword = $("#a2").val();
// 				var password = $("#a3").val();
// 				if(password.length==0){
// 					$("#m3").html("请输入确认密码!");
// 				}else if(password.length<6){
// 					$("#m3").html("请输入6位以上密码!");
// 				}else if(password!=newpassword){
// 					$("#m3").html("两次密码不一致!");
// 				}
			
// 			});
// 			$("#a5").blur(function(){
// 				var email = $("#a5").val();
// 				var reg = /^[A-Za-zd]+([-_.][A-Za-zd]+)*@([A-Za-zd]+[-.])+[A-Za-zd]{2,5}$/;
// 				if(email.length==0){
// 					$("#m5").html("请输入邮箱!");
// 				}else if(!reg.test(email)){
// 					$("#m5").html("邮箱格式不正确!");
// 				}
// 			})
	
	
	
		$("#btn").click(function(){
			var userid = $("#a1").val();
			var newpassword = $("#a2").val();
			var password = $("#a3").val();
			var phone = $("#a4").val();
// 			var birthDay = $("#a5").val();
			var email = $("#a5").val();
			var reg = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
			if(userid.length==0){
				$("#m1").html("请输入用户名!");
			}else if(newpassword.length==0){
				$("#m2").html("请输入密码!");
			}else if(password.length==0){
				$("#m3").html("请输入确认密码!");
			}
			else if(phone.length==0){
				$("#m4").html("请输入联系电话!");
			}
// 			else if(birthDay.length==0){
// 				$("#m5").html("请输入出生日期!");
// 			}
			else if(email.length==0){
				$("#m5").html("请输入邮箱!");
			}else if(!reg.test(email)){
				$("#m5").html("邮箱格式不正确!");
			}else if(password!=newpassword){
				$("#m3").html("两次密码不一致!");
			}else if(password.length<6){
				$("#m2").html("请输入6位以上密码!");
			}else if(newpassword.length<6){
				$("#m3").html("请输入6位以上密码!");
			}
			else{
			$.ajax({
  				type: 'post',
  				url: "register.do?m=validate",
  				data:{
  					userid:userid,
  					password:password,
  					email:email
  				
  				},
  				success: function(back){
  					if(back==0){
  						window.location.href="login.do?m=init";
  					}else if(back==1){
  						$("#m1").html("用户名已存在!");
  					};
  				}
			});
			};
		});
	});
	</script>
  </head>
  <body>
    <div data-role="page" id="login" >
		<div data-role="header"data-position="fixed" >
			<a href="index.do" data-ajax="false">返回主页</a><h1>欢迎登录</h1>
		</div>
		<div data-role="content">
<!-- 		<form action="register.do?m=validate" method="post"> -->
		用户名：<input type="text" id="a1" placeholder="请输入用户名">
		<span id="m1" style="color:red"></span>
		<br/>
		密码：<input type="password" id="a2" placeholder="请输入密码"> 
		<span id="m2" style="color:red"></span>
		<br/>
		确认密码：<input type="password" id="a3" placeholder="请输入确认密码"> 
		<span id="m3" style="color:red"></span>
		<br/>
		联系电话：<input type="tel" id="a4" placeholder="请输入联系电话"> 
		<span id="m4" style="color:red"></span>
		<br/>
<!-- 		出生日期：<input type="date" id="a5" placeholder="请输入出生日期">  -->
<!-- 		<span id="m5" style="color:red"></span> -->
<!-- 		<br/> -->
		邮箱：<input type="email" id="a5" placeholder="请输入邮箱"> 
		<span id="m5" style="color:red"></span>
		<br/>
		<input type="button" id="btn" value="确认完毕，点我注册！">
<!-- 		</form> -->
		</div>
		<div data-role="footer" data-position="fixed">
			<h1>Designed By 20113101 朱豪哲</h1>
		</div>
	</div>
  </body>
</html>
