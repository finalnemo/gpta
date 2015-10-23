<%@ page language="java" import="java.util.*,com.zhu.entity.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>欢迎登录XX旅行社管理系统</title>
    <meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" />
    <!-- Bootstrap 3.3.2 -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />    
    <!-- FontAwesome 4.3.0 -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- DATA TABLES -->
    <link href="css/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="css/_all-skins.min.css" rel="stylesheet" type="text/css" />
   
  </head>
  <body class="skin-blue">
  <%Admin admin = (Admin)session.getAttribute("admin"); %> 
    <div class="wrapper">
      
      <header class="main-header">
        <!-- Logo -->
        <a class="logo"><b>欢迎登录</b>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
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
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
<!--                   <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image"/> -->
                  <span class="hidden-xs">欢迎,<%=admin.getUserid() %></span>
                </a>
                <ul class="dropdown-menu">
					<!--User image -->
<!--                   <li class="user-header"> -->
<!--                     <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" /> -->
<!--                     <p> -->
<!--                       Alexander Pierce - Web Developer -->
<!--                       <small>Member since Nov. 2012</small> -->
<!--                     </p> -->
<!--                   </li> -->
<!--                   Menu Body -->
                  <li class="user-body">
                    <div class="col-xs-6 text-center">
                      <a href="#">个人中心</a>
                    </div>
                    <div class="col-xs-6 text-center">
                      <a href="admininfo.do?m=exit">退出登录</a>
                    </div>
<!--                     <div class="col-xs-2 text-center"> -->
<!--                       <a href="#">Friends</a> -->
<!--                     </div> -->
                  </li>
<!--                   Menu Footer -->
<!--                   <li class="user-footer"> -->
<!--                     <div class="pull-left"> -->
<!--                       <a href="#" class="btn btn-default btn-flat">Profile</a> -->
<!--                     </div> -->
<!--                     <div class="pull-right"> -->
<!--                       <a href="#" class="btn btn-default btn-flat">Sign out</a> -->
<!--                     </div> -->
<!--                   </li> -->
                </ul>
              </li>
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
            <li class="treeview">
              <a href="adminlogin.do?m=success">
                <i class="fa fa-home"></i> <span>主页</span>
              </a>
            </li>
            <%if(admin.getFlag()==0){ %>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-th" ></i>
                <span>管理员管理</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="admininfo.do?m=admininfo"><i class="fa fa-circle-o"></i> 管理员一览</a></li>
                <li><a href="admininfo.do?m=addadmin"><i class="fa fa-circle-o"></i> 添加管理员</a></li>
              </ul>
            </li>
            
            <%} %>
            <%if(admin.getFlag()==1){ %>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-th" ></i>
                <span>热门景点管理</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="hotspot.do?m=spotlist"><i class="fa fa-circle-o"></i> 热门景点一览</a></li>
                <li><a href="hotspot.do?m=addspot"><i class="fa fa-circle-o"></i> 添加热门景点</a></li>
              </ul>
            </li>
            <li class="active treeview">
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
            <%} %>
            <li class="treeview">
              <a href="admininfo.do?m=alterpwd">
                <i class="fa fa-key"></i>
                <span>修改密码</span>
              </a>
            </li>
            <li><a href="admininfo.do?m=exit"><i class="fa fa-minus-circle"></i> 退出登录</a></li>
            
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            欢迎登录
            <small>
            <%if(admin.getFlag()==0){ %>
        		超级管理员
        	<%}else if(admin.getFlag()==1){%>
        		管理员
       		<%} %></small>
          </h1>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">管理员一览</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                      	<th>订单号</th>
                      	<th>景点</th>
                      	<th>车辆编号</th>
                        <th>人数</th>
                        <th>价格</th>
                        <th>状态</th>
                        <th>订单日期</th>
                        <th>操作</th>
                        <th>详情</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="order" varStatus="status" items="${order}">
                      <tr>
<!--                       	<td id="id" data-id="${order.id  }">${order.id }</td> --> 
                      	<td>${order.id }</td>
                      	<td>${order.spotid }</td>
                      	<td>${order.carid }</td>
                        <td>${order.num }</td>
                        <td>${order.price }</td>
                        <td>
                        <c:if test="${order.status == 0}">未支付</c:if>
                        <c:if test="${order.status == 1}">已支付</c:if>
                        <c:if test="${order.status == 2}">处理中</c:if>
                        <c:if test="${order.status == 3}">订单完成</c:if>
                        <c:if test="${order.status == 4}">订单取消</c:if>
                        </td>
                        <td>${order.date }</td>
                        <td>
                        <c:if test="${order.status == 0}">
                        <button type="button" class="btn btn-default" disabled="disabled">处理</button>
                        </c:if>
                        <c:if test="${order.status == 1}">
                        <button type="button" class="btn btn-info" data-toggle="modal" onclick="depart(${order.num },'${order.id }',1)" data-target="#myModal">处理</button>
                        </c:if>
                        <c:if test="${order.status == 2}">
                        <button type="button" class="btn btn-warning" data-toggle="modal" onclick="depart(${order.num },'${order.id }',2)" data-target="#myModal">修改</button>
                        </c:if>
                        <c:if test="${order.status == 3}">
                        <button type="button" class="btn btn-default" disabled="disabled">处理</button>
                        </c:if>
                        <c:if test="${order.status == 4}">
                        <button type="button" class="btn btn-default" disabled="disabled">处理</button>
                        </c:if>
						<c:if test="${order.status == 0}">
						<button type="button" class="btn btn-default" disabled="disabled">完成</button>
                        </c:if>
						<c:if test="${order.status == 1}">
						<button type="button" class="btn btn-default" disabled="disabled">完成</button>
                        </c:if>
                        <c:if test="${order.status == 2}">
						<button type="button" class="btn btn-success" onclick="finish('${order.id }')" >完成</button>
                        </c:if>
                        <c:if test="${order.status == 3}">
						<button type="button" class="btn btn-default" disabled="disabled">完成</button>
                        </c:if>
                        <c:if test="${order.status == 4}">
						<button type="button" class="btn btn-default" disabled="disabled">完成</button>
                        </c:if>
                        </td>
                        <td><button type="button" id="detail" class="btn btn-info" data-toggle="modal" onclick="orderid('${order.id}','${order.userid}','${order.n1 }','${order.n2 }','${order.n3 }','${order.n4 }','${order.n5 }','${order.n6 }','${order.n7 }','${order.n8 }','${order.n9 }','${order.n10 }','${order.i1 }','${order.i2 }','${order.i3 }','${order.i4 }','${order.i5 }','${order.i6 }','${order.i7 }','${order.i8 }','${order.i9 }','${order.i10 }')" data-target="#myModal1">详情</button></td>
<!--                         <td><button type="button" id="detail" class="btn btn-info" data-toggle="modal" onclick="orderid(order)" data-target="#myModal1">详情</button></td> -->
                      </tr>
                     </c:forEach>
                    </tbody>
                    
                  </table>
                  
                  <button type="button" id="export" class="btn btn-primary">导出</button>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
      
<!--       处理模态框 -->
      <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 	 	<div class="modal-dialog">
    		<div class="modal-content">
     			<div class="modal-header">
      	 			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
         			<h4 class="modal-title" id="myModalLabel">订单处理</h4>
      			</div>
     			<div class="modal-body">
     			
     				<div class="form-group">
     				
                      <label>车辆选择</label>
                      <select id="c1">
                      		<c:forEach var="car" items="${car}">
                      		<option id="c0" value="${car.id }">${car.route}
                      		</option>
                      		</c:forEach>
                      		<option id="c0" value="">不使用车辆</option>
                      </select>
                    </div>
        			<div id="f1" class="form-group">
                      <label>开始日期:</label>
                      <span id="c2" style="color:blue"></span>
                    </div>
                    <div id="f2" class="form-group">
                      <label>结束日期:</label>
                     <span id="c3" style="color:blue"></span>
                    </div>
                    <div id="f3" class="form-group">
                     <label>人数:</label>
                     <span id="c7" style="color:blue"></span>
                    </div>
                    <div id="f4" class="form-group">
                     <label>实载数/载客数:</label>
                     <span id="c4" style="color:blue"></span>/<span id="c5" style="color:blue"></span>
                    </div>
                    <div id="f5" class="form-group">
                     <span id="c6" style="color:red"></span>
                    </div>
                    <div id="f6" class="form-group" style="display:none">
                     <span id="c8" style="color:red"></span>
                    </div>
                    <div id="f7" class="form-group" style="display:none">
                     <span id="c9" style="color:red"></span>
                    </div>
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        			<button type="button" id="btn" class="btn btn-primary">保存</button>
      			</div>
    		</div>
  		</div>
	  </div>
	  
	  
	  <!--       详情模态框 -->
      <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 	 	<div class="modal-dialog">
    		<div class="modal-content">
     			<div class="modal-header">
      	 			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
         			<h4 class="modal-title" id="myModalLabel">订单详情</h4>
      			</div>
     			<div class="modal-body" align="center">
     					<table border="1" cellpadding="10" width="100%">
     						<tr>
     							<td align="center">订单用户</td>
     							<td align="center" id="userid"></td>
     						</tr>
     						<tr>
     							<td align="center">联系方式</td>
     							<td align="center" id="phone"></td>
     						</tr>
     						<tr>
     							<td align="center">游客姓名</td>
     							<td align="center">游客身份证</td>
     						</tr>
     						<tr id="p1">
     							<td id="n1"></td>
     							<td id="i1"></td>
     						</tr>
     						<tr id="p2">
     							<td id="n2"></td>
     							<td id="i2"></td>
     						</tr>
     						<tr id="p3">
     							<td id="n3"></td>
     							<td id="i3"></td>
     						</tr>
     						<tr id="p4">
     							<td id="n4"></td>
     							<td id="i4"></td>
     						</tr>
     						<tr id="p5">
     							<td id="n5"></td>
     							<td id="i5"></td>
     						</tr>
     						<tr id="p6">
     							<td id="n6"></td>
     							<td id="i6"></td>
     						</tr>
     						<tr id="p7">
     							<td id="n7"></td>
     							<td id="i7"></td>
     						</tr>
     						<tr id="p8">
     							<td id="n8"></td>
     							<td id="i8"></td>
     						</tr>
     						<tr id="p9">
     							<td id="n9"></td>
     							<td id="i9"></td>
     						</tr>
     						<tr id="p10">
     							<td id="n10"></td>
     							<td id="i10"></td>
     						</tr>
     					</table>
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-default" data-dismiss="modal">返回</button>
      			</div>
    		</div>
  		</div>
	  </div>
	  
	  
	  
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 1.0 Beta
        </div>
        <strong>Designed By 20113101 朱豪哲</strong> All rights reserved.
      </footer>
    </div><!-- ./wrapper -->
    <!-- jQuery 2.1.3 -->
    <script src="js/jquery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <!-- DATA TABES SCRIPT -->
    <script src="js/jquery.dataTables.js" type="text/javascript"></script>
    <script src="js/dataTables.bootstrap.js" type="text/javascript"></script>
    <!-- AdminLTE App -->
    <script src="js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="js/demo.js" type="text/javascript"></script>
    <!-- page script -->
    <script type="text/javascript">
 	$(function () {
 			var id = $("#c1").val();
 				$.ajax({
						type : 'post',
						url : "car.do?m=getcarbyid",
						data : {
							id : id
						},
						success : function(back) {
							var car = back.split(",");
							var enddate = car[1].split(":");
							enddate = enddate[1].replace(/\"/g,"");
							var startdate = car[7].split(":");
							startdate = startdate[1].replace(/\"/g,"");
							var people = car[5].split(":");
							people = people[1].replace(/\"/g,"");
							var number = car[4].split(":");
							number = number[1].replace(/\"/g,"")
							$("#c2").html(startdate);
							$("#c3").html(enddate);
							$("#c4").html(people);
							$("#c5").html(number);
						}
				});
 		$("#c1").change(function(){
 			$("#f1").show();
			$("#f2").show();
			$("#f3").show();
			$("#f4").show();
			$("#f5").show();
// 			$("#f6").show();
 			$("#c6").html("");
 			var id = $("#c1").val();
 			if(id!=""){
 				$.ajax({
						type : 'post',
						url : "car.do?m=getcarbyid",
						data : {
							id : id
						},
						success : function(back) {
							var car = back.split(",");
							var enddate = car[1].split(":");
							//"替换"空"
							enddate = enddate[1].replace(/\"/g,"");
							var startdate = car[7].split(":");
							startdate = startdate[1].replace(/\"/g,"");
							var people = car[5].split(":");
							people = people[1].replace(/\"/g,"");
							var number = car[4].split(":");
							number = number[1].replace(/\"/g,"");
							$("#c2").html(startdate);
							$("#c3").html(enddate);
							$("#c4").html(people);
							$("#c5").html(number);
						}
				});
				}else{
					//不使用车辆时隐藏数据
					$("#f1").hide();
					$("#f2").hide();
					$("#f3").hide();
					$("#f4").hide();
					$("#f5").hide();
					$("#f6").hide();
				}
 		});
 		
 		$("#export").click(function(){
 			if(confirm("是否确认导出订单信息?")){
 			$.ajax({
  				type: 'post',
  				url: "order.do?m=export",
  				data:{
  					
  				},
  				success: function(back){
  					alert("导出成功!");
  				}
		});
		}
 		});
 		
//  		$("#detail").click(function(){
//  			var id = $("#id").data("id");
// 			for(var i=1;i<=2;i++){
// 				var nvalue = $("#n"+i).val();
// 				alert(nvalue);
// 			}
//  		});
 		
 		$("#btn").click(function(){
 			//实载数
 			var people = $("#c4").html();
 			//载客数
 			var number = $("#c5").html();
 			//人数
 			var num = $("#c7").html();
 			if(people*1+num*1<=number){
 				var id = $("#c1").val();
 				var orderid = $("#c8").html();
 				var flag = $("#c9").html();
 				$.ajax({
  						type: 'post',
  						url: "car.do?m=addpassenger",
  						data:{
  							//车辆id
  							id:id,
  							orderid:orderid,
  							people:num,
  							flag:flag
  						},
  						success: function(back){
  							if(back==0){
  								alert("添加成功!");
  								window.location.href="order.do?m=orderlist";
  							}else {
  								alert("添加失败!");
  								window.location.href="order.do?m=orderlist";
  							}
  						}
					});
 				
 			}else{
 				$("#c6").html("该车已满员,请选择其他车辆!")
 			};
 		})
 		
 		
        $("#example1").dataTable();
        $('#example2').dataTable({
          "bPaginate": true,
          "bLengthChange": false,
          "bFilter": false,
          "bSort": true,
          "bInfo": true,
          "bAutoWidth": false
        });
	});
	
	
	function depart(i,j,flag){	
		document.getElementById("c7").innerHTML=i;
		document.getElementById("c8").innerHTML=j;
		document.getElementById("c9").innerHTML=flag;
	}
	
	function finish(id){
		if(confirm("是否确认完成订单?")){
		$.ajax({
  				type: 'post',
  				url: "order.do?m=finishorder",
  				data:{
  					id:id
  				},
  				success: function(back){
  					if(back==1){
  						alert("订单完成成功!");
  						window.location.reload();
  					}else{
  						alert("订单完成失败!");
  						window.location.reload();
  					}
  				}
			});
			}
	}
	
	
	function orderid(k,userid,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10){	
			$.ajax({
  						type: 'post',
  						url: "userinfo.do?m=getuserbyid",
  						data:{
  							id:userid
  						},
  						success: function(back){
  							document.getElementById("phone").innerHTML=back;
  						}
				});



		
		document.getElementById("p2").style.display="";
		document.getElementById("p3").style.display="";
		document.getElementById("p4").style.display="";
		document.getElementById("p5").style.display="";
		document.getElementById("p6").style.display="";
		document.getElementById("p7").style.display="";
		document.getElementById("p8").style.display="";
		document.getElementById("p9").style.display="";
		document.getElementById("p10").style.display="";
		document.getElementById("userid").innerHTML=userid;
		document.getElementById("n1").innerHTML=n1;
		document.getElementById("n2").innerHTML=n2;
		document.getElementById("n3").innerHTML=n3;
		document.getElementById("n4").innerHTML=n4;
		document.getElementById("n5").innerHTML=n5;
		document.getElementById("n6").innerHTML=n6;
		document.getElementById("n7").innerHTML=n7;
		document.getElementById("n8").innerHTML=n8;
		document.getElementById("n9").innerHTML=n9;
		document.getElementById("n10").innerHTML=n10;
		document.getElementById("i1").innerHTML=i1;
		document.getElementById("i2").innerHTML=i2;
		document.getElementById("i3").innerHTML=i3;
		document.getElementById("i4").innerHTML=i4;
		document.getElementById("i5").innerHTML=i5;
		document.getElementById("i6").innerHTML=i6;
		document.getElementById("i7").innerHTML=i7;
		document.getElementById("i8").innerHTML=i8;
		document.getElementById("i9").innerHTML=i9;
		document.getElementById("i10").innerHTML=i10;
		if(n2==""){
			document.getElementById("p2").style.display="none";
		}
		if(n3==""){
			document.getElementById("p3").style.display="none";
		}
		if(n4==""){
			document.getElementById("p4").style.display="none";
		}
		if(n5==""){
			document.getElementById("p5").style.display="none";
		}
		if(n6==""){
			document.getElementById("p6").style.display="none";
		}
		if(n7==""){
			document.getElementById("p7").style.display="none";
		}
		if(n8==""){
			document.getElementById("p8").style.display="none";
		}
		if(n9==""){
			document.getElementById("p9").style.display="none";
		}
		if(n10==""){
			document.getElementById("p10").style.display="none";
		}
	}
      
    </script>

  </body>
</html>
