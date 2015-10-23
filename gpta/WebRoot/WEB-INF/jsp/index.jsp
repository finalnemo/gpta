<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>XX旅行社欢迎您！</title>
<!--     初始化移动浏览显示 -->
<!-- width - viewport的宽度 height - viewport的高度 -->
<!-- initial-scale - 初始的缩放比例 -->
<!-- minimum-scale - 允许用户缩放到的最小比例 -->
<!-- maximum-scale - 允许用户缩放到的最大比例 -->
<!-- user-scalable - 用户是否可以手动缩放 -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" />

<!-- <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" /> -->
<!-- <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script> -->
<!-- <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script> -->

<link href="css/jquery.mobile-1.4.5.min.css" rel="stylesheet" type="text/css" />
<link href="css/flickity-docs.css" rel="stylesheet"  media="screen" />
<script src="js/jquery-2.1.3.min.js" type="text/javascript"></script>
<script src="js/jquery.mobile-1.4.5.min.js" type="text/javascript"></script>
<script src="js/jquery.cookie.js" type="text/javascript"></script>
<script src="js/flickity-docs.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn").click(function(){
		var userid = $("#a1").val();
        var password = $("#a2").val();
		if(userid.length==0){
			$("#m1").html("请输入用户名!");
		}else if(password.length==0){
			$("#m2").html("请输入密码!");
		}else if ($("#check").prop("checked")) {
            $.cookie("check", "true", { expires: 7 }); //存储一个带7天期限的cookie
            $.cookie("userid", userid, { expires: 7 });
            $.cookie("password", password, { expires: 7 });
        }else if($("input:checkbox").not("input:checked")){
            $.cookie("check", "false", { expire: -1 });
            $.cookie("userid", "", { expires: -1 });
            $.cookie("password", "", { expires: -1 });
        }
		if(userid.length!=0 && password.length!=0){
			$.ajax({
  				type:'post',
  				url:"login.do?m=validate",
  				data:{
  					userid:userid,
  					password:password
  				},
  				success: function(back){
  					if(back==0){
  						window.location.href="login.do?m=init";
  					}else if(back==1){
  						$("#m1").html("用户名不存在!");
  					}else if(back==2){
  						$("#m2").html("密码错误!");
  					}
  				}
			});
        }
	});
	$("#a1").focus(function(){
		$("#m1").html("");
	});
	$("#a2").focus(function(){
		$("#m2").html("");
	});
	if ($.cookie("check") == "true") {
        $("#check").attr("checked", true);
        $("#a1").val($.cookie("userid"));
        $("#a2").val($.cookie("password"));
        }
	
	
	/* jquery部分，先定义一个记录翻到多少页的变量 */  
    var divnum=1;  
    /* 相当于.innerhtml=""; jquery设置一个节点的值是需要这样设定的 */  
    $("#divnumber").text(divnum);
    /* 在#mypage页面开启触控 */  
    $(document).on("pageinit","#detail",function(){
        /* 如果对div1的非空白部分向左滑，那么div1就隐藏，div2就显示，同时页面计数器+1，并更新divnumber这个行内文本 */  
        $("#div1").on("swipeleft",function(){  
             $("#div1").hide("fast");  
             $("#div2").show("fast");  
             divnum=divnum+1;  
             $("#divnumber").text(divnum)  
        });  
        /* 如果对div2的非空白部分向右滑，那么div1就显示，div2就隐藏，同时页面计数器-1，并更新divnumber这个行内文本 */  
         $("#div2").on("swiperight",function(){  
             $("#div1").show("fast");  
             $("#div2").hide("fast");  
             divnum=divnum-1;  
             $("#divnumber").text(divnum)  
        });  
        /* 如果对div2的非空白部分向左滑，那么div2就隐藏，div3就显示，同时页面计数器+1，并更新divnumber这个行内文本，下面如此类推 */  
        $("#div2").on("swipeleft",function(){  
             $("#div2").hide("fast");  
             $("#div3").show("fast");  
             divnum=divnum+1;  
             $("#divnumber").text(divnum)  
        });  
        $("#div3").on("swiperight",function(){  
             $("#div2").show("fast");  
             $("#div3").hide("fast");  
             divnum=divnum-1;  
             $("#divnumber").text(divnum)  
        });  
        $("#div3").on("swipeleft",function(){  
             $("#div3").hide("fast");  
             $("#div4").show("fast");  
             divnum=divnum+1;  
             $("#divnumber").text(divnum)  
        });  
         $("#div4").on("swiperight",function(){
             $("#div3").show("fast");  
             $("#div4").hide("fast");  
             divnum=divnum-1;  
             $("#divnumber").text(divnum)  
        });                            
    });  
    
});
</script>
</head>
<body>
	<div data-role="page" id="home">
		<div data-role="header" data-position="fixed">
			<h1>XX旅行社欢迎您！</h1>
			<div data-role="navbar">
				<ul>           
					<li><a href="index.do" data-ajax="false">主页</a></li>
					<li><a href="#detail" data-ajax="false">旅行社简介</a></li>
					<li>
					<%if(request.getSession().getAttribute("user")!=null){ %>
						<a href="login.do?m=init" data-ajax="false">用户中心</a>
					<%}else{ %>
						<a href="#login" data-ajax="false">登录</a>
					<%} %>
					</li>
				</ul>
			</div>
		</div>
		<div data-role="content" >
			
		    <div class="gallery gallery--images-demo js-flickity"
		      data-flickity-options='{ "imagesLoaded": true, "percentPosition": false ,"wrapAround": true,"autoPlay": true }'>
		      <div ><img src="./img/1.jpg"></div>
		      <div ><img src="./img/2.jpg"></div>
		      <div ><img src="./img/3.jpg"></div>
<!-- 		      <div class="gallery-cell"></div> -->
<!-- 		      <div class="gallery-cell"></div> -->
<!-- 		      <div class="gallery-cell"></div> -->
		    </div>
		  
		</div>
		
		
	
<!-- 		折叠组标记 -->
		<div data-role="collapsible-set">
<!-- 		<div data-role="collapsible" data-collapsed="false"> -->
<!-- 			<h1><font style="color:#7D9EC0">热门景点推荐</font></h1> -->
<!-- 			<table data-role="table" data-mode="reflow"  class="ui-responsive table-stroke"> -->
<!--      <thead> -->
<!--        <tr> -->
<!--          <th style="display:none"></th> -->
<!--          <th style="display:none"></th> -->
<!--        </tr> -->
<!--      </thead> -->
<!--      <tbody> -->
<!--      <c:forEach var="hotspot" items="${hotspot}"> -->
<!--        <tr> -->
<!--          <td id="detail"><strong><${hotspot.title }></strong><small style="color:#8968CD">${hotspot.remark }</small></td> -->
<!--          <td style="color:#FF3E96">￥${hotspot.price }</td> -->
<!--        </tr> -->
<!--         </c:forEach> -->
<!--        </tbody> -->
<!-- 	</table> -->
<!-- 		</div> -->
			<div data-role="collapsible" data-collapsed="false" data-inset="true">
				<h1><font style="color:#7D9EC0">热门景点推荐</font></h1>
				<ul data-role="listview" data-inset="true" data-filter="true" data-filter-placeholder="搜索热门景点">
					<c:forEach var="hotspot" items="${hotspot}">
					<li><a href="hotspot.do?m=hotspotdetail&id=${hotspot.id }" data-ajax="false">
					<p><strong>&lt;${hotspot.title }&gt;</strong><small style="color:#8968CD">${hotspot.remark }</small></p>
					<p class="ui-li-aside" style="color:#FF3E96">
					<c:if test="${hotspot.discount==0 }">&yen;${hotspot.price }</c:if>
					<c:if test="${hotspot.discount!=0 }">&yen;<fmt:formatNumber value="${hotspot.price * (0.01*hotspot.discount) }" pattern="0.00" maxFractionDigits="1"/></c:if>
					</p>
					</a></li>
					</c:forEach>			
				</ul>
			</div>
		</div>
		
<!-- 		列表 -->
<!-- 		<ul data-role="listview" data-inset="true"> -->
<!-- 				<li><a href="#">test</a></li>	 -->
<!-- 				<li><input type="file"></li> -->
<!-- 		</ul> -->
		
		<div data-role="footer" data-position="fixed">
			<div data-role="navbar" >
				<ul>
					<li><a href="#">广告位1</a></li>
					<li><a href="#">广告位2</a></li>
					<li><a href="#">广告位3</a></li>
				</ul>
			</div>
		</div>
	</div>
	
<!-- 	登录 -->
	<div data-role="page" id="login" >
		<div data-role="header" >
			<a href="index.do" data-ajax="false">返回主页</a><h1>欢迎登录</h1>
		</div>
		<div data-role="content">
		<div class="ui-field-contain">
		用户名：<input type="text" id="a1" placeholder="请输入用户名" />
		<span id="m1" style="color:red"></span>
		</div>
		<div class="ui-field-contain">
		密码：<input type="password" id="a2" placeholder="请输入密码" /> 
		<span id="m2" style="color:red"></span>
		</div>
		<div class="ui-field-contain">
		<label><input type="checkbox" id="check" />记住用户名和密码</label>
		</div>
		<div class="ui-field-contain">
		<a href="register.do?m=init" data-ajax="false">还没账号么？快点我注册！</a>
		</div>
		<div class="ui-field-contain">
		<input type="button" id="btn" value="登录">
		</div>
		</div>
		<div data-role="footer" data-position="fixed">
			<div data-role="navbar" >
				<ul>
					<li><a href="#">广告位1</a></li>
					<li><a href="#">广告位2</a></li>
					<li><a href="#">广告位3</a></li>
				</ul>
			</div>
		</div>
	</div>
	
<!-- 	旅行社简介 -->
	<div data-role="page" id="detail" >
<!-- 	style="background-image: url(./img/5.jpg);background-size:cover" -->
		<div data-role="header" >
			<a href="index.do" data-ajax="false">返回主页</a><h1>XX旅行社介绍</h1>
		</div>
	<div data-role="content" > 
 	  <div id="div1" >  
        <img src="./img/5.jpg" style="width:100%;height:auto">
      </div>  
      <div id="div2" style="display:none;">  
        <img src="./img/6.jpg" style="width:100%;height:auto">
      </div>  
      <div id="div3" style="display:none;">  
        <img src="./img/7.jpg" style="width:100%;height:auto">
      </div>  
      <div id="div4" style="display:none;">  
        <img src="./img/8.jpg" style="width:100%;height:auto">
      </div>  
      <!-- 此乃记录翻到那一页的图层，有一个名叫divnumber的行内文本 -->  
      <center><div>  
        <span id="divnumber"></span><span>/4</span>  
      </div></center>
      </div>
		<div data-role="footer" data-position="fixed">
			<div data-role="navbar" >
				<ul>
					<li><a href="#">广告位1</a></li>
					<li><a href="#">广告位2</a></li>
					<li><a href="#">广告位3</a></li>
				</ul>
			</div>
		</div>
	</div>
	
</body>
</html>