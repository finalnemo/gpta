<%@ page language="java" import="java.util.*,com.zhu.entity.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>欢迎登录XX旅行社管理系统</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
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
                  <span class="hidden-xs">欢迎,<%=admin.getUserid() %></span>
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
<!--               <ul class="treeview-menu"> -->
<!--                 <li class="active"><a href="index.html"><i class="fa fa-circle-o"></i> Dashboard v1</a></li> -->
<!--                 <li><a href="index2.html"><i class="fa fa-circle-o"></i> Dashboard v2</a></li> -->
<!--               </ul> -->
            </li>
            <%if(admin.getFlag()==0){ %>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-user" ></i>
                <span>用户管理</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="admininfo.do?m=userlist"><i class="fa fa-circle-o"></i> 用户一览</a></li>
              </ul>
            </li>
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
            <%} %>
            <li class="active treeview">
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
              <!-- general form elements -->
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title">修改密码</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form role="form">
                  <div class="box-body">
                    <div class="form-group">
                      <label>旧密码</label>
                      <input type="password" class="form-control" id="a1" placeholder="旧密码">
                      <strong><span id="m1" style="color:red;"></span></strong>
                    </div>
                    <div class="form-group">
                      <label>新密码</label>
                      <input type="password" class="form-control" id="a2" placeholder="新密码">
                      <strong><span id="m2" style="color:red;"></span></strong>
                    </div>
                    <div class="form-group">
                      <label>确认密码</label>
                      <input type="password" class="form-control" id="a3" placeholder="确认密码">
                      <strong><span id="m3" style="color:red;"></span></strong>
                    </div>

                  <div class="box-footer">
                    <button type="button" id="btn" class="btn btn-primary">修改</button>&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="reset" class="btn btn-primary">重置</button>
                  </div>
                </form>
              </div><!-- /.box -->

            <!-- right column -->
          </div>   <!-- /.row -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
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
    <!-- AdminLTE App -->
    <script src="js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="js/demo.js" type="text/javascript"></script>
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
   			var password = $("#a2").val();
   			var repassword = $("#a3").val();
   			
   			if(oldpassword.length==0){
   				$("#m1").html("请输入旧密码!");
   			}else if(password.length==0){
   				$("#m2").html("请输入新密码!");
   			}else if(repassword.length==0){
   				$("#m3").html("请输入确认密码!");
   			}else if(password!=repassword){
   				$("#m3").html("两次密码不一致!");
   			}else if(password.length<6){
   				$("#m2").html("请输入6为以上密码!");
   			}else if(repassword.length<6){
   				$("#m3").html("请输入6为以上密码!");
   			}else{
      		$.ajax({
  				type: 'post',
  				url: "admininfo.do?m=alteradminpwd",
  				data:{
					userid:${admin.userid},
  					password:password,
  					oldpassword:oldpassword
  				},
  				success: function(back){
  					if(back==1){
  						alert("修改成功!");
  						window.location.reload();
  					}else if(back==0){
  						$("#m1").html("旧密码错误!");
  					};
  				}
			});
      		
      		
      		}
   		});
   	});
   	</script>
  </body>
</html>
