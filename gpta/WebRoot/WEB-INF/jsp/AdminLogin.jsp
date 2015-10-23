<%@ page language="java" import="java.util.*,com.zhu.entity.*"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="zh-CN"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="zh-CN"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="zh-CN"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="zh-CN">
<!--<![endif]-->
<head>
	<title>欢迎登录XX旅行社管理系统</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<link href="./css/bootstrap-theme.min.css" rel="stylesheet">
	<link href="./css/bootstrap.min.css" rel="stylesheet">
<!-- 	<link href="http://localhost/static/css/jx.main.css" rel="stylesheet"> -->
	<!-- jQuery scrollUp 2.0-->
<!-- 	<link id="scrollUpTheme" rel="stylesheet" href="http://markgoodyear.com/labs/scrollup/css/themes/image.css"> -->
	<script src="js/jquery-2.1.3.min.js" type="text/javascript"></script>
	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
<!-- 	<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet" -->
	<style type="text/css">
	*{margin:0;padding: 0;}
	body{background: #444 url(./img/background.png);font-family:"宋体";}
	.loginBox{width:420px;height:280px;padding:0 20px;border:1px solid #fff; color:#000; margin-top:40px; border-radius:8px;background: white;box-shadow:0 0 15px #222; background: -moz-linear-gradient(top, #fff, #efefef 8%);background: -webkit-gradient(linear, 0 0, 0 100%, from(#f6f6f6), to(#f4f4f4));font:11px/1.5em 'Microsoft YaHei' ;position: absolute;left:50%;top:50%;margin-left:-210px;margin-top:-165px;}
	.loginBox h2{height:45px;font-size:20px;font-weight:normal;}
	.loginBox .left{border-right:1px solid #ccc;height:100%;padding-right: 20px; }
	.regBtn{margin-top:21px;}
	</style>
	<script type="text/javascript">
	$(function(){
		$("#a1").focus(function(){
			$("#m1").html("");
			$("#m3").html("");
		});
		$("#a2").focus(function(){
			$("#m2").html("");
			$("#m3").html("");
		});
	
		$("#btn").click(function(){
		var userid = $("#a1").val();
		var password = $("#a2").val();
		if(userid.length==0){
			$("#m1").html("请输入用户名!");
		}else if(password.length==0){
			$("#m2").html("请输入密码!");
		}else{
			$.ajax({
  				type: 'post',
  				url: "adminlogin.do?m=validate",
  				data:{
  					userid:userid,
  					password:password
  				},
  				success: function(back){
  					if(back==100){
  						window.location.href="adminlogin.do?m=success";
  					}else if(back==101){
  						$("#m3").html("用户名不存在!");
  					}else if(back==102){
  						$("#m3").html("该用户已被锁定,请联系系统管理员!");
  					}else if(back==3){
  						$("#m3").html("您已连续输错3次,该用户已被锁定");
  					}else {
  						$("#m3").html("密码错误，您已连续输错"+back+"次!");
  					}
  						
  				}
			});
		}
		});
	});
	</script>
	</head>
<body>
<div class="container">
  <div class="loginBox row">
  		<h2 class="text-center">欢迎登录XX旅行社管理系统</h2>
		<form id="wyccn" name="wyccn" action="http://jx.5idf.com" method="post" class="form-horizontal">
		  <div class="form-group has-success">
		    <label for="nick_name" class="col-sm-2 col-md-2 control-label">用户名</label>
		    <div class="col-sm-10 col-md-10">
		      <input type="text" class="form-control" id="a1" placeholder="用户名" >
		      <span id="m1" style="color:red"></span>
		    </div>
		    
		  </div>
		  <div class="form-group has-success">
		    <label for="user_password" class="col-sm-2 col-md-2 control-label">密码</label>
		    <div class="col-sm-10 col-md-10">
		      <input type="password" class="form-control" id="a2" placeholder="密码">
		      <span id="m2" style="color:red"></span>
		    </div>
		  </div>
	  	  <div class="form-group">
	  	  	<div class="col-sm-offset-4 col-sm-10" id="m3" style="color: #990033;font-size:15px"></div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-4 col-sm-10 col-md-10">
		      	<button class="btn btn-info" id="btn"  data-loading-text="正在登录..." type="button">登 录</button>&nbsp;&nbsp;&nbsp;&nbsp;
		      	<button class="btn btn-info" type="reset">清 空</button>
		    </div>
		  </div>
  		</form>
	</div>
</div>
<!--.content-->
<!-- 	<script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script> -->
</body>
</html>