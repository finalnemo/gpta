<%@ page language="java" import="java.util.*,com.zhu.entity.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎登录XX旅行社管理系统</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- Bootstrap 3.3.2 -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- FontAwesome 4.3.0 -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<!-- DATA TABLES -->
<link href="css/dataTables.bootstrap.css" rel="stylesheet"
	type="text/css" />
<!-- Theme style -->
<link href="css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
<!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
<link href="css/_all-skins.min.css" rel="stylesheet" type="text/css" />
</head>
<body class="skin-blue">
	<%
		Admin admin = (Admin) session.getAttribute("admin");
	%>
	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			<a class="logo"><b>欢迎登录</b> </a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->
						 <%if(admin.getFlag()==1){ %>
              <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-envelope-o"></i>
                  <span class="label label-success"><%=request.getAttribute("count") %></span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">你有<%=request.getAttribute("count") %>条新消息</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li><!-- start message -->
                        <a href="order.do?m=orderlist">
                          <div class="pull-left">
                          </div>
                          <h4>
                            未处理的订单
                          </h4>
                          <p>你有<%=request.getAttribute("count") %>条未处理的订单</p>
                        </a>
                      </li><!-- end message -->
                    </ul>
                  </li>
                  <li class="footer"><a href="adminlogin.do?m=success">查看全部消息</a></li>
                </ul>
              </li>
              <%} %>



						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <span
								class="hidden-xs">欢迎,<%=admin.getUserid()%></span>
						</a>
							<ul class="dropdown-menu">
								<li class="user-body">
									<div class="col-xs-6 text-center">
										<a href="#">个人中心</a>
									</div>
									<div class="col-xs-6 text-center">
										<a href="admininfo.do?m=exit">退出登录</a>
									</div>
								</li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">
					<li class="header">主菜单</li>
					<li class="treeview"><a href="adminlogin.do?m=success">
							<i class="fa fa-home"></i> <span>主页</span>
					</a> <!--               <ul class="treeview-menu"> --> <!--                 <li class="active"><a href="index.html"><i class="fa fa-circle-o"></i> Dashboard v1</a></li> -->
						<!--                 <li><a href="index2.html"><i class="fa fa-circle-o"></i> Dashboard v2</a></li> -->
						<!--               </ul> --></li>
					<%
						if (admin.getFlag() == 0) {
					%>
					<li class="treeview"><a href="#"> <i class="fa fa-th"></i>
							<span>管理员管理</span> <i class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="admininfo.do?m=admininfo"><i
									class="fa fa-circle-o"></i> 管理员一览</a></li>
							<li><a href="admininfo.do?m=addadmin"><i
									class="fa fa-circle-o"></i> 添加管理员</a></li>
						</ul></li>

					<%
						}
					%>
					<%
						if (admin.getFlag() == 1) {
					%>
					<li class="active treeview"><a href="#"> <i class="fa fa-th"></i>
							<span>热门景点管理</span> <i class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="hotspot.do?m=spotlist"><i
									class="fa fa-circle-o"></i> 热门景点一览</a></li>
							<li><a href="hotspot.do?m=addspot"><i
									class="fa fa-circle-o"></i> 添加热门景点</a></li>
						</ul></li>
					<li class="treeview">
              			<a href="order.do?m=orderlist">
               				<i class="fa fa-list-ol" ></i>
                			<span>订单管理</span>
              			</a>
            		</li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-car" ></i>
                <span>车辆管理</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="car.do?m=init"><i class="fa fa-circle-o"></i>车辆管理一览</a></li>
                <li><a href="car.do?m=addcar"><i class="fa fa-circle-o"></i> 添加车辆</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="message.do?m=init">
                <i class="fa fa-book" ></i>
                <span>留言管理</span>
              </a>
            </li>
					<%
						}
					%>
					<li class="treeview"><a href="admininfo.do?m=alterpwd"> <i
							class="fa fa-key"></i> <span>修改密码</span>
					</a></li>
					<li><a href="admininfo.do?m=exit"><i
							class="fa fa-minus-circle"></i> 退出登录</a></li>

				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					欢迎登录<small> 
					<% if (admin.getFlag() == 0) {%> 
						超级管理员 
					<%} else if (admin.getFlag() == 1) {%>
						管理员 
					<%}%>
					</small>
				</h1>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<!-- general form elements -->
					<div class="box box-primary">
						<div class="box-header">
							<h3 class="box-title">添加景点信息</h3>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form role="form">
							<div class="box-body">
							<div class="form-group">
									<input type="hidden" id="a0" value="${hotspot.id }">
									<label>景点标题</label><span style="color:red;">*</span> 
									<input type="text" class="form-control" id="a1" placeholder="景点标题" value="${hotspot.title}">
    								<strong><span id="m1" style="color:red;"></span></strong>
								</div>
								
								<div class="form-group">
									<label>地点</label><span style="color:red;">*</span> 
									<input type="text" class="form-control" id="a2" placeholder="地点" value="${hotspot.spotname }">
									<strong><span id="m2" style="color:red;"></span></strong>
								</div>
								<div class="form-group">
									<label>景点价格</label><span style="color:red;">*</span> 
									<input type="text" class="form-control" id="a3" placeholder="景点价格" value="${hotspot.price }">
									<strong><span id="m3" style="color:red;"></span></strong>
								</div>
								<div class="form-group">
									<label>开团日期</label><span style="color:red;">*</span> 
									<input type="date" class="form-control" id="a6" placeholder="开团日期" value="${hotspot.date }">
									<strong><span id="m6" style="color:red;"></span></strong>
								</div>
								<div class="form-group" id="d0">
									<label>行程天数</label><span style="color:red;">*(暂只支持1-10天短途游)</span> 
										<input type="text" class="form-control" placeholder="请输入行程天数..."  id="d1" value="${hotspot.day }"  />
<!-- 									<select class="form-control" id="d1"> -->
<!-- 										<option value="${hotspot.day }">${hotspot.day }天</option> -->
<!-- 										<option value="1">一天</option> -->
<!-- 										<option value="2">二天</option> -->
<!-- 										<option value="3">三天</option> -->
<!-- 										<option value="4">四天</option> -->
<!-- 										<option value="5">五天</option> -->
<!-- 										<option value="6">六天</option> -->
<!-- 										<option value="7">七天</option> -->
<!-- 										<option value="8">八天</option> -->
<!-- 										<option value="9">九天</option> -->
<!-- 										<option value="10">十天</option> -->
<!-- 									</select> -->
										<strong><span id="m8" style="color:red;"></span></strong>
									</div>
								<div class="form-group">
									
								<label>具体行程</label><span style="color:red;">*</span>       <!-- 	 word-break:break-all-允许在单词内换行  word-wrap:break-word;-在长单词或 URL 地址内部进行换行 -->
									<textarea class="form-control" placeholder="请输入第一天行程..."  style="word-break:break-all;word-wrap:break-word;" id='i1'>${hotspot.d1 }</textarea>
									<textarea class="form-control" placeholder="请输入第二天行程..."  style="display:none;word-break:break-all;word-wrap:break-word;" id='i2'>${hotspot.d2 }</textarea>
									<textarea class="form-control" placeholder="请输入第三天行程..."  style="display:none;word-break:break-all;word-wrap:break-word;" id='i3'>${hotspot.d3 }</textarea>
									<textarea class="form-control" placeholder="请输入第四天行程..."  style="display:none;word-break:break-all;word-wrap:break-word;" id='i4'>${hotspot.d4 }</textarea>
									<textarea class="form-control" placeholder="请输入第五天行程..."  style="display:none;word-break:break-all;word-wrap:break-word;" id='i5'>${hotspot.d5 }</textarea>
									<textarea class="form-control" placeholder="请输入第六天行程..."  style="display:none;word-break:break-all;word-wrap:break-word;" id='i6'>${hotspot.d6 }</textarea>
									<textarea class="form-control" placeholder="请输入第七天行程..."  style="display:none;word-break:break-all;word-wrap:break-word;" id='i7'>${hotspot.d7 }</textarea>
									<textarea class="form-control" placeholder="请输入第八天行程..."  style="display:none;word-break:break-all;word-wrap:break-word;" id='i8'>${hotspot.d8 }</textarea>
									<textarea class="form-control" placeholder="请输入第九天行程..."  style="display:none;word-break:break-all;word-wrap:break-word;" id='i9'>${hotspot.d9 }</textarea>
									<textarea class="form-control" placeholder="请输入第十天行程..."  style="display:none;word-break:break-all;word-wrap:break-word;" id='i10'>${hotspot.d10 }</textarea>
									<strong><span id="m7" style="color:red;"></span></strong>
								</div>
								<div class="form-group">
									<label>折扣率(折)</label><span style="color:red;"></span> 
									<input type="text" class="form-control" id="a4" placeholder="折扣率(折)" value="${hotspot.discount }">
									<strong><span id="m4" style="color:red;"></span></strong>
								</div>
								<div class="form-group">
									<label>景点备注</label> 
									<input type="text" class="form-control" id="a5" placeholder="景点备注" value="${hotspot.remark }">
								</div>
							</div>
							<!-- /.box-body -->

							<div class="box-footer">
								
                    			<button type="button" id="btn" class="btn btn-primary">
                    			<c:if test="${hotspot.id==null }">
                    			添加
                    			</c:if>
                    			<c:if test="${hotspot.id!=null }">
                    			修改
                    			</c:if>
                    			</button>&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="reset" class="btn btn-primary">重置</button>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="button" id="back" class="btn btn-primary">返回</button>
							</div>
						</form>
					</div>
					<!-- /.box -->

					<!-- right column -->
				</div>
				<!-- /.row -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 1.0 Beta
			</div>
			<strong>Designed By 20113101 朱豪哲</strong> All rights reserved.
		</footer>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 2.1.3 -->
	<script src="js/jquery-2.1.3.min.js"></script>
	<!-- Bootstrap 3.3.2 JS -->
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<!-- AdminLTE App -->
	<script src="js/app.min.js" type="text/javascript"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="js/demo.js" type="text/javascript"></script>
<!-- 	<script src="js/region_select.js"></script> -->
	
	<script type="text/javascript">
		$(function() {
			//new PCAS('location_p', 'location_c', 'location_a', '${hotspot.province}', '${hotspot.city}', '${hotspot.area}');
			
			$("#a1").focus(function() {
				$("#m1").html("");
			});
			$("#a2").focus(function() {
				$("#m2").html("");
			});
			$("#a3").focus(function() {
				$("#m3").html("");
			});
			$("#a4").focus(function() {
				$("#m4").html("");
			});
			$("#a6").focus(function() {
				$("#m6").html("");
			});
			$("#d1").focus(function() {
				$("#m8").html("");
			});
			
			var day = $("#d1").val();
			var a = day*1+1;
				for(var j=0;j<=day;j++){
					$("#i"+j).show();
				}
				for(var k=10;a<=k;a++){
					$("#i"+a).hide();
				}
			
			//行程联动
			$("#d1").change(function(){
				var day = $("#d1").val();
				if(day<1||day>10){
					$("#m8").html("输入的行程天数范围不正确")
				}else{
				//*1默认是数字加减
				var a = day*1+1;
				for(var j=0;j<=day;j++){
					$("#i"+j).show();
				}
				for(var k=10;a<=k;a++){
					$("#i"+a).hide();
				}
				}
			});
			
			$("#back").click(function() {
				window.location.href = "hotspot.do?m=spotlist";
			});
			

			$("#btn").click(function() {
				var id = $("#a0").val();
				var title = $("#a1").val();
				var spotname = $("#a2").val();
				var price = $("#a3").val();
				var discount = $("#a4").val();
				var remark = $("#a5").val();
				var date = $("#a6").val();
				var day = $("#d1").val();
				var d1 = $("#i1").val();
				var d2 = $("#i2").val();
				var d3 = $("#i3").val();
				var d4 = $("#i4").val();
				var d5 = $("#i5").val();
				var d6 = $("#i6").val();
				var d7 = $("#i7").val();
				var d8 = $("#i8").val();
				var d9 = $("#i9").val();
				var d10 = $("#i10").val();

				if(title.length==0){
					$("#m1").html("请输入景点标题!");
				}else if (spotname.length == 0) {
					$("#m2").html("请输入景点名!");
				} else if (price.length == 0) {
					$("#m3").html("请输入景点价格!");
				} else if (isNaN(price)) {
					$("#m3").html("请输入数字!");
				} else if(isNaN(discount)){
					$("#m4").html("请输入数字!");
				}else if(discount<0||discount>100){
					$("#m4").html("输入的范围不正确!(0-100)");
				}else if(date.length<10){
					$("#m6").html("请输入开团日期!");
				}
				else if(id==""){
					$.ajax({
						type : 'post',
						url : "hotspot.do?m=addspotinfo",
						data : {
							title : title,
							spotname : spotname,
							price : price,
							discount : discount,
							remark : remark,
							date : date,
							day : day,
							d1 : d1,
							d2 : d2,
							d3 : d3,
							d4 : d4,
							d5 : d5,
							d6 : d6,
							d7 : d7,
							d8 : d8,
							d9 : d9,
							d10 : d10
						},
						success : function(back) {
							if (back == 1) {
								alert("添加成功!");
								window.location.reload();
							} else if (back == 0) {
								alert("添加失败!");
							}
							;
						}
					});

				}else{
					$.ajax({
						type : 'post',
						url : "hotspot.do?m=updatehotspotinfo",
						data : {
							id : id,
							title : title,
							spotname : spotname,
							price : price,
							discount : discount,
							remark : remark,
							date : date,
							day : day,
							d1 : d1,
							d2 : d2,
							d3 : d3,
							d4 : d4,
							d5 : d5,
							d6 : d6,
							d7 : d7,
							d8 : d8,
							d9 : d9,
							d10 : d10
						},
						success : function(back) {
							if (back == 0) {
								alert("修改成功!");
								window.location.href="hotspot.do?m=spotlist";
							} else {
								alert("修改失败!");
							}
							}
					});
				}
			});
		});
	</script>
</body>
</html>
