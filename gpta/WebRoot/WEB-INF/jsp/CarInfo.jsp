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
            <li class="treeview">
              <a href="order.do?m=orderlist">
                <i class="fa fa-list-ol" ></i>
                <span>订单管理</span>
              </a>
            </li>
            <li class="active treeview">
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
                  <h3 class="box-title">车辆管理一览</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                      	<th>车辆编号</th>
                        <th>牌照</th>
                        <th>载客数</th>
                        <th>实载数</th>
                        <th>路线</th>
                        <th>使用时间</th>
                        <th>状态</th>
                        <th>发车</th>
                        <th>操作</th>
                        <th>详情</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="car" items="${car}">
                      <tr>
                      	<td>${car.carid }</td>
                        <td>${car.license }</td>
                        <td>${car.number }</td>
                        <td>${car.people }</td>
                        <td>${car.route }</td>
                        <td id="date">
                        <c:if test="${car.startdate!=null && car.startdate !=''}">
                        ${car.startdate }&nbsp;至&nbsp;${car.enddate }
                        </c:if>
                        <c:if test="${car.startdate==null || car.startdate ==''}">
                        </c:if>
                        </td>
                        <td>
                        <c:if test="${car.status==0 }">
                        未使用
                        </c:if>
                        <c:if test="${car.status==1 }">
                        使用中
                        </c:if>
                        <c:if test="${car.status==2 }">
                        其他
                        </c:if>
                        </td>
                        <td>
                        <c:if test="${car.status==0 }">
                        <button type="button" onclick="depart('${car.id}','${car.startdate }','${car.enddate }')" class="btn btn-info">发车</button>
						<button type="button" disabled="disabled" class="btn btn-success">完成</button>
                        </c:if>
                        <c:if test="${car.status!=0 }">
                        <button type="button" disabled="disabled" class="btn btn-info">发车</button>
                        <button type="button" onclick="finish('${car.id}')" class="btn btn-success">完成</button>
                        </c:if>
                        </td>
                        <td>
                        <c:if test="${car.status==0 }">
                        <a href="car.do?m=updatecar&id=${car.id } ">修改</a>
                        </c:if>
                        <c:if test="${car.status!=0 }">
                        修改
                        </c:if>
                        |
                        <a href="car.do?m=delcarbyid&id=${car.id }" onClick="return confirm('确认删除?');">删除</a>
                        </td>
                        <td><a href="car.do?m=getcardetail&id=${car.id }">详情</a></td>
                      </tr>
                     </c:forEach>
                    </tbody>
                    
                  </table>
                  <button type="button" id="btn" class="btn btn-primary">导出</button>
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
 			window.location.href="car.do?m=init";
 		}
 		$("#btn").click(function(){
 			if(confirm("是否确认导出车辆信息?")){
 			$.ajax({
  				type: 'post',
  				url: "car.do?m=export",
  				data:{
  					
  				},
  				success: function(back){
  					alert("导出成功!");
  				}
		});
		}
 		});
 		
 		
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
	
	function finish(id){
		if(confirm("是否确认完成发车?")){
			$.ajax({
  				type: 'post',
  				url: "car.do?m=finish",
  				data:{
  					id:id
  				},
  				success: function(back){
  					if(back==1){
  						alert("成功完成发车!");
  						window.location.reload();
  					}else{
  						alert("完成发车失败!");
  						window.location.reload();
  					}
  				}
			});
		}
	}
	
	
     function depart(id,startdate,enddate){
     	if(startdate=="" || enddate==""){
     		alert("请输入使用时间!");
     	}else{
 		if(confirm("是否确认发车?")){
 			
 			$.ajax({
  				type: 'post',
  				url: "car.do?m=depart",
  				data:{
  					id:id
  				},
  				success: function(back){
  					if(back==1){
  						alert("成功发车!");
  						window.location.reload();
  					}else{
  						alert("发车失败!");
  						window.location.reload();
  					}
  				}
			});
			}
 		}
 	 }
    </script>

  </body>
</html>
