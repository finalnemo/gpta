<%@ page language="java" import="java.util.*,com.zhu.entity.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>欢迎登录XX旅行社管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" />
    <!-- Bootstrap 3.3.2 -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />    
    <!-- FontAwesome 4.3.0 -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
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
            <li class="active treeview">
              <a href="adminlogin.do?m=success">
                <i class="fa fa-home"></i> <span>主页</span>
              </a>
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
            
            <%} 
            if(admin.getFlag()==1){ %>
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
					<!-- general form elements -->
					<div class="box box-primary">
						<div class="box-header" >
							<h3 class="box-title">
							 <%if(admin.getFlag()==0){ %>
        						您好,<%=admin.getUserid() %>超级管理员
        					<%}else if(admin.getFlag()==1){%>
        						您好,<%=admin.getUserid() %>管理员
       						<%} %>
							</h3>
							<br>
							
						</div>
						<!-- /.box-header -->
						<!-- form start -->
							<div class="box-body">
							<div class="form-group" style="font-size:20px">
							今天是<span id="time"></span>
							</div>
							<% if(admin.getFlag()==1){ %>
       						
							<div class="form-group" style="font-size:20px">
								<span>您有<a href="order.do?m=orderlist"><%=request.getAttribute("count") %></a>条未处理的订单</span>
							</div>
							<%} %>
							</div>
							<!-- /.box-body -->

							<div class="box-footer">
							</div>
					</div>
					<!-- /.box -->

					<!-- right column -->
				</div>
		</section>
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
    <!-- jQuery UI 1.11.2 -->
    <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.min.js" type="text/javascript"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
      
      
    </script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="js/bootstrap.min.js" type="text/javascript"></script>    
    <!-- Morris.js charts -->
<!--     <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script> -->
<!--     <script src="plugins/morris/morris.min.js" type="text/javascript"></script> -->
    <!-- Sparkline -->
<!--     <script src="plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script> -->
    <!-- jvectormap -->
<!--     <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script> -->
<!--     <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script> -->
    <!-- jQuery Knob Chart -->
<!--     <script src="plugins/knob/jquery.knob.js" type="text/javascript"></script> -->
    <!-- daterangepicker -->
<!--     <script src="plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script> -->
    <!-- datepicker -->
<!--     <script src="plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script> -->
    <!-- Bootstrap WYSIHTML5 -->
<!--     <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script> -->
    <!-- iCheck -->
<!--     <script src="plugins/iCheck/icheck.min.js" type="text/javascript"></script> -->
    <!-- Slimscroll -->
<!--     <script src="plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script> -->
    <!-- FastClick -->
<!--     <script src='plugins/fastclick/fastclick.min.js'></script> -->
    <!-- AdminLTE App -->
    <script src="js/app.min.js" type="text/javascript"></script>

    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<!--     <script src="dist/js/pages/dashboard.js" type="text/javascript"></script> -->

    <!-- AdminLTE for demo purposes -->
    <script src="js/demo.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(function() {  
//     	每10毫秒调用方法
        setInterval("GetTime()", 10);  
      });  
  
    function GetTime() {  
        var mon, day, now, hour, min, sec;  
        /*  
        mon = new Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug",  
                "Sep", "Oct", "Nov", "Dec");  
        */  
        mon = new Array("1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月",  
                "9月", "10月", "11月", "12月");  
        /*  
        day = new Array("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat");  
        */  
        
        day = new Array("周日", "周一", "周二", "周三", "周四", "周五", "周六");  
        now = new Date();  
        hour = now.getHours();  
        min = now.getMinutes();  
        sec = now.getSeconds();  
        if (hour < 10) {  
            hour = "0" + hour;  
        }  
        if (min < 10) {  
            min = "0" + min;  
        }  
        if (sec < 10) {  
            sec = "0" + sec;  
        }  
        $("#time").html(now.getFullYear() + "年"+mon[now.getMonth()] + now.getDate()+"日"+" "+day[now.getDay()]+" "+ hour  
                        + ":" + min + ":" + sec
                          );  
  
    }  
    
    
    </script>
  </body>
</html>