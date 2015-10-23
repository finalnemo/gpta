<%@ page language="java" import="java.util.*,com.zhu.entity.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
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
            <li class="active treeview">
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
                        <th>用户名</th>
                        <th>联系方式</th>
                        <th>邮箱</th>
                        <th>出生日期</th>
                        <th>家庭住址</th>
                        <th>积分</th>
                        <th>最后一次登录时间</th>
                        <th>操作</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="user" items="${user}">
                      <tr>
                        <td>${user.userid }</td>
                        <td>${user.phone }</td>
                        <td>${user.email }</td>
                        <td>${user.birthday }</td>
                     	<td>${user.address }</td>
                      	<td>
                      	<c:if test="${user.score==null }">0</c:if>
                      	<c:if test="${user.score!=null }">${user.score }</c:if>
                      	</td>
                      	<td><fmt:formatDate value="${user.lastlogindate }" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
                      	<td><a href="admininfo.do?m=resetuserpwd&id=${user.id }" onClick="return confirm('确认重置密码?');">重置密码</a></td>
                      </tr>
                     </c:forEach>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
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
 		var msg = "${message}";
 		if(msg!=""){
 			alert(msg);
 			window.location.href="admininfo.do?m=userlist";
 		}
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
      
    </script>

  </body>
</html>
