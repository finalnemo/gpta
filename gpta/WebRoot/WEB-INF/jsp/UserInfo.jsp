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
			<h1>用户中心</h1>
		</div>

		<div data-role="content">
			<h2>欢迎登录,<%=user.getUserid() %>!</h2>
			<span style="color:blue;font-size:25px">基本资料:</span>
	<table data-role="table" data-mode="reflow"  class="ui-responsive table-stroke">
     <thead>
      <tr>
         <th>联系电话</th>
         <th>出生日期</th>
         <th>身份证号码</th>
         <th>邮箱</th>
         <th>联系地址</th>
         <th>积分</th>
       </tr>
     </thead>
     <tbody>
     <c:forEach var="userinfo" items="${userinfo}">
       <tr>
         <td>${userinfo.phone }</td>
         <td>${userinfo.birthday }</td>
         <td>${userinfo.idcard }</td>
         <td>${userinfo.email }</td>
         <td>${userinfo.address }</td>
         <td><c:if test="${userinfo.score == null }" >0</c:if>
         	 <c:if test="${userinfo.score != null }" >${userinfo.score}</c:if>分
         </td>
       </tr>
     </c:forEach>
       </tbody>
	</table>
			<%if(user.getPhone()==null||user.getIdcard()==null||user.getEmail()==null){ %>
				<div align="center"><h3><a href="userinfo.do?m=userinfo" data-ajax="false">您的资料还不完整，是否现在去完善资料?</a></h3></div>
			<%} %>
			
			
		</div>

	</div>
	
	
	
</body>
</html>