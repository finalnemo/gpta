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
<style type="text/css">
textarea.ui-input-text { min-height: 90px;  }
</style>
<script src="js/jquery-2.1.3.min.js" type="text/javascript"></script>
<script src="js/jquery.mobile-1.4.5.min.js" type="text/javascript"></script>
<script src="js/jquery.cookie.js" type="text/javascript"></script>
<script src="js/flickity-docs.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#a1").change(function(){
		var num = $("#a1").val();
		var price = ${hotspot.price}
		var discount = ${hotspot.discount}
		if(discount==0){
			price = price*num;
			$("#m1").html("&yen;"+price.toFixed(1));
			$("#m2").html(num);
			$("#b1").html(num);
			$("#b2").html("&yen;"+price.toFixed(1));
		}else {
			price = price*num*0.01*discount;
			$("#m1").html("&yen;"+price.toFixed(1));
			$("#m2").html(num);
			$("#b1").html(num);
			$("#b2").html("&yen;"+price.toFixed(1));
		}
		//*1默认是数字加减
				var a = num*1+1;
				for(var j=0;j<=num;j++){
					$("#p"+j).show();
				}
				for(var k=10;a<=k;a++){
					$("#p"+a).hide();
					$("#n"+a).val("");
					$("#i"+a).val("");
				}
	});
	
	$("#order").click(function(){
		var x1 = $("#n1").val();
		var x2 = $("#n2").val();
		var x3 = $("#n3").val();
		var x4 = $("#n4").val();
		var x5 = $("#n5").val();
		var x6 = $("#n6").val();
		var x7 = $("#n7").val();
		var x8 = $("#n8").val();
		var x9 = $("#n9").val();
		var x10 = $("#n10").val();
		var y1 = $("#i1").val();
		var y2 = $("#i2").val();
		var y3 = $("#i3").val();
		var y4 = $("#i4").val();
		var y5 = $("#i5").val();
		var y6 = $("#i6").val();
		var y7 = $("#i7").val();
		var y8 = $("#i8").val();
		var y9 = $("#i9").val();
		var y10 = $("#i10").val();
		
		//人数
		var num = $("#a1").val();
		var a = num*1+1;
				for(var j=0;j<=num;j++){
					$("#o"+j).show();
				}
				for(var k=10;a<=k;a++){
					$("#o"+a).hide();
				}
					$("#x1").html(x1);
					$("#x2").html(x2);
					$("#x3").html(x3);
					$("#x4").html(x4);
					$("#x5").html(x5);
					$("#x6").html(x6);
					$("#x7").html(x7);
					$("#x8").html(x8);
					$("#x9").html(x9);
					$("#x10").html(x10);
					$("#y1").html(y1);
					$("#y2").html(y2);
					$("#y3").html(y3);
					$("#y4").html(y4);
					$("#y5").html(y5);
					$("#y6").html(y6);
					$("#y7").html(y7);
					$("#y8").html(y8);
					$("#y9").html(y9);
					$("#y10").html(y10);
	});
	
	
	$("#buy").click(function(){
		if(confirm("是否确认提交?")){
			var num = $("#b1").html();
			var price = $("#b2").html();
			price = price.replace("¥","");
			var spotid = $("#b0").val();
			var n1 = $("#n1").val();
			var n2 = $("#n2").val();
			var n3 = $("#n3").val();
			var n4 = $("#n4").val();
			var n5 = $("#n5").val();
			var n6 = $("#n6").val();
			var n7 = $("#n7").val();
			var n8 = $("#n8").val();
			var n9 = $("#n9").val();
			var n10 = $("#n10").val();
			var i1 = $("#i1").val();
			var i2 = $("#i2").val();
			var i3 = $("#i3").val();
			var i4 = $("#i4").val();
			var i5 = $("#i5").val();
			var i6 = $("#i6").val();
			var i7 = $("#i7").val();
			var i8 = $("#i8").val();
			var i9 = $("#i9").val();
			var i10 = $("#i10").val();
// 			i1 = i1.replace(i1.substring(3,14),"***********");
// 			i2 = i2.replace(i2.substring(3,14),"***********");
// 			i3 = i3.replace(i3.substring(3,14),"***********");
// 			i4 = i4.replace(i4.substring(3,14),"***********");
// 			i5 = i5.replace(i5.substring(3,14),"***********");
// 			i6 = i6.replace(i6.substring(3,14),"***********");
// 			i7 = i7.replace(i7.substring(3,14),"***********");
// 			i8 = i8.replace(i8.substring(3,14),"***********");
// 			i9 = i9.replace(i9.substring(3,14),"***********");
// 			i10 = i10.replace(i10.substring(3,14),"***********");
			$.ajax({
  				type:'post',
  				url:"order.do?m=init",
  				data:{
  					spotid:spotid,
  					price:price,
  					num:num,
  					n1:n1,
  					n2:n2,
  					n3:n3,
  					n4:n4,
  					n5:n5,
  					n6:n6,
  					n7:n7,
  					n8:n8,
  					n9:n9,
  					n10:n10,
  					i1:i1,
  					i2:i2,
  					i3:i3,
  					i4:i4,
  					i5:i5,
  					i6:i6,
  					i7:i7,
  					i8:i8,
  					i9:i9,
  					i10:i10
  					},
  				success: function(back){
  					if(back==1){
  						if(confirm("订单提交成功,是否马上支付?")){
  							window.location.href="userinfo.do?m=userorder";
  						}else{
  							window.location.reload();
  						}
  					}else {
  						alert("订单提交失败!");
  					}
  				}
			});
		}
	})
	
	//留言版添加内容
	$("#mbtn").click(function(){
		var content = $("#t1").val();
		var spotid = $("#b0").val();
		if(content.length==0){
			$("#tm1").html("请输入留言内容!");
		}else{
			$.ajax({
  				type:'post',
  				url:"message.do?m=addmessage",
  				data:{
  					content:content,
  					spotid:spotid
  				},
  				success: function(back){
  					if(back==1){
  						alert("留言成功!");
  						window.location.reload();
  					}else{
  						alert("留言失败!");
  					}
  				}
			});
		}
	
	})
	
	
	var url = location.href;
	
	$("#btn").click(function(){
		var userid = $("#l1").val();
        var password = $("#l2").val();
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
  						window.location.href=url;
// 					window.history.back();
// 					window.location.reload();
  					}else if(back==1){
  						$("#m1").html("用户名不存在!");
  					}else if(back==2){
  						$("#m2").html("密码错误!");
  					}
  				}
			});
        }
	});
	$("#l1").focus(function(){
		$("#m1").html("");
	});
	$("#l2").focus(function(){
		$("#m2").html("");
	});
	$("#t1").focus(function(){
		$("#tm1").html("");
	});
	if ($.cookie("check") == "true") {
        $("#check").attr("checked", true);
        $("#l1").val($.cookie("userid"));
        $("#l2").val($.cookie("password"));
        }
        
//         回到顶部
	$("#top").click(function(){
		window.scroll(0,document.getElementById("home").offsetTop);
	});
	
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
<body>
	
	<div data-role="page" id="home">
		<div data-role="header">
			<h1>XX旅行社欢迎您！</h1>
			<div data-role="navbar">
				<ul>
					<li>
					<a href="index.do" data-ajax="false">返回主页</a>
					</li>
					<li><a href="#detail" data-ajax="false">旅行社简介</a></li>
					<li>
					<%if(request.getSession().getAttribute("user")!=null){ %>
						<a href="login.do?m=init" data-ajax="false">用户中心</a>
					<%}else{ %>
						<a href="#login" data-rel="dialog">登录</a>
					<%} %>
					</li>
				</ul>
			</div>
		</div>
		<div data-role="content" >
			<div class="ui-field-contain">
			人数:
    			<input type="range"  id="a1" min="1" max="10" value="1">
    		</div>
			<div class="ui-field-contain">
			<c:if test="${hotspot.discount==0 }">
			<label id="a2">价格:${hotspot.price }</label>
			</c:if>
			<c:if test="${hotspot.discount!=0 }">
			<div id="a2" style="text-decoration:line-through;font-size:15px ">原价:${hotspot.price }</div>
			<div id="a3" style="color:#FF3E96;font-size:18px ">折扣价:<fmt:formatNumber value="${hotspot.price * (0.01*hotspot.discount) }" pattern="0.00" maxFractionDigits="1"/></div>
    		</c:if>
    		</div>
    			<div class="ui-field-contain">
    			<span id="p1" style="color:#FF4500"><input type="text" id="n1" placeholder="请输入姓名..."/><input type="text" maxlength="18" id="i1" placeholder="请输入身份证号码..."/></span>
    			<span id="p2" style="display:none;color:#8A2BE2"><hr color="#8A2BE2"><input type="text" id="n2" placeholder="请输入第二位游客姓名..."/><input type="text" maxlength="18" id="i2" placeholder="请输入第二位游客身份证号码..."/></span>
    			<span id="p3" style="display:none;color:#FF4500"><hr color="#8A2BE2"><input type="text" id="n3" placeholder="请输入第三位游客姓名..."/><input type="text" maxlength="18" id="i3" placeholder="请输入第三位游客身份证号码..."/></span>
    			<span id="p4" style="display:none;color:#8A2BE2"><hr color="#8A2BE2"><input type="text" id="n4" placeholder="请输入第四位游客姓名..."/><input type="text" maxlength="18" id="i4" placeholder="请输入第四位游客身份证号码..."/></span>
    			<span id="p5" style="display:none;color:#FF4500"><hr color="#8A2BE2"><input type="text" id="n5" placeholder="请输入第五位游客姓名..."/><input type="text" maxlength="18" id="i5" placeholder="请输入第五位游客身份证号码..."/></span>
    			<span id="p6" style="display:none;color:#8A2BE2"><hr color="#8A2BE2"><input type="text" id="n6" placeholder="请输入第六位游客姓名..."/><input type="text" maxlength="18" id="i6" placeholder="请输入第六位游客身份证号码..."/></span>
    			<span id="p7" style="display:none;color:#FF4500"><hr color="#8A2BE2"><input type="text" id="n7" placeholder="请输入第七位游客姓名..."/><input type="text" maxlength="18" id="i7" placeholder="请输入第七位游客身份证号码..."/></span>
    			<span id="p8" style="display:none;color:#8A2BE2"><hr color="#8A2BE2"><input type="text" id="n8" placeholder="请输入第八位游客姓名..."/><input type="text" maxlength="18" id="i8" placeholder="请输入第八位游客身份证号码..."/></span>
    			<span id="p9" style="display:none;color:#FF4500"><hr color="#8A2BE2"><input type="text" id="n9" placeholder="请输入第九位游客姓名..."/><input type="text" maxlength="18" id="i9" placeholder="请输入第九位游客身份证号码..."/></span>
    			<span id="p10" style="display:none;color:#8A2BE2"><hr color="#8A2BE2"><input type="text" id="n10" placeholder="请输入第十位游客姓名..."/><input type="text" maxlength="18" id="i10" placeholder="请输入第十位游客身份证号码..."/></span>
    			</div>
<!-- 		    <div class="gallery gallery--images-demo js-flickity" -->
<!-- 		      data-flickity-options='{ "imagesLoaded": true, "percentPosition": false ,"wrapAround": true,"autoPlay": true }'> -->
<!-- 		      <div ><img src="./img/1.jpg"></div> -->
<!-- 		      <div ><img src="./img/2.jpg"></div> -->
<!-- 		      <div ><img src="./img/3.jpg"></div> -->
<!-- 		    </div> -->
		</div>
		
<!-- 		悬浮窗 -->
		<div id="top" style="position:fixed;top:65%;right:0;width:55px;height:55px;z-index:100;opacity:0.25"><img src="./img/arrow187.jpg"></div>
	
<!-- 		折叠组标记 --> 
		<div data-role="collapsible-set">
<!-- 		列表 -->
			<div data-role="collapsible" data-collapsed="false" data-inset="true">
				<h1><font style="color:#7D9EC0">开团日期</font></h1>
				<ul data-role="listview">
					<li>
					<label>${hotspot.date }</label>
					</li>		
				</ul>
			</div>
		</div>
		<div data-role="collapsible-set">
<!-- 		列表 -->
			<div data-role="collapsible" data-collapsed="false" data-inset="true">
				<h1><font style="color:#7D9EC0">景点信息</font></h1>
				<ul data-role="listview">
					<li><label>风景简介:</label>
					<label>${hotspot.remark }</label>
					</li>		
				</ul>
			</div>
		</div>
		<div data-role="collapsible-set">
<!-- 		列表 -->
			<div data-role="collapsible" data-collapsed="false" data-inset="true">
				<h1><font style="color:#7D9EC0">行程安排</font></h1>
				<ul data-role="listview">
					<li>
					<c:if test="${hotspot.d1!='' }">
					<label>第一天</label>
					<textarea style="word-break:break-all;word-wrap:break-word;resize:none;" readonly="readonly">${hotspot.d1 }</textarea>
					</c:if>
					<c:if test="${hotspot.d2!='' }">
					<label>第二天</label>
					<textarea style="word-break:break-all;word-wrap:break-word;resize:none" readonly="readonly">${hotspot.d2 }</textarea>
					</c:if>
					<c:if test="${hotspot.d3!='' }">
					<label>第三天</label>
					<textarea style="word-break:break-all;word-wrap:break-word;resize:none" readonly="readonly">${hotspot.d3 }</textarea>
					</c:if>
					<c:if test="${hotspot.d4!='' }">
					<label>第四天</label>
					<textarea style="word-break:break-all;word-wrap:break-word;resize:none" readonly="readonly">${hotspot.d4 }</textarea>
					</c:if>
					<c:if test="${hotspot.d5!='' }">
					<label>第五天</label>
					<textarea style="word-break:break-all;word-wrap:break-word;resize:none" readonly="readonly">${hotspot.d5 }</textarea>
					</c:if>
					<c:if test="${hotspot.d6!='' }">
					<label>第六天</label>
					<textarea style="word-break:break-all;word-wrap:break-word;resize:none" readonly="readonly">${hotspot.d6 }</textarea>
					</c:if>
					<c:if test="${hotspot.d7!='' }">
					<label>第七天</label>
					<textarea style="word-break:break-all;word-wrap:break-word;resize:none" readonly="readonly">${hotspot.d7 }</textarea>
					</c:if>
					<c:if test="${hotspot.d8!='' }">
					<label>第八天</label>
					<textarea style="word-break:break-all;word-wrap:break-word;resize:none" readonly="readonly">${hotspot.d8 }</textarea>
					</c:if>
					<c:if test="${hotspot.d9!='' }">
					<label>第九天</label>
					<textarea style="word-break:break-all;word-wrap:break-word;resize:none" readonly="readonly">${hotspot.d9 }</textarea>
					</c:if>
					<c:if test="${hotspot.d10!='' }">
					<label>第十天</label>
					<textarea style="word-break:break-all;word-wrap:break-word;resize:none" readonly="readonly">${hotspot.d10 }</textarea>
					</c:if>
					</li>		
				</ul>
			</div>
		</div>
		
		
		<div data-role="collapsible-set">
<!-- 		列表 -->
			<div data-role="collapsible" data-collapsed="true" data-inset="true">
				<h1><font style="color:#7D9EC0">费用说明</font></h1>
				<ul data-role="listview">
					<li><label style="color:#8A2BE2">费用包含:</label>
					<label>交通<br/>往返旅游巴士。</label>
					<label>门票<br/>行程中所含的景点的门票。</label>
					<label>导服<br/>全程陪同中文导游，自由活动除外。</label>
					<hr>
					<label style="color:#8A2BE2">费用不包含:</label>
					<label>餐费<br/>全程正餐敬请自理。</label>
					<label>旅游意外险<br/>旅游人身意外保险</label>
					</li>		
				</ul>
			</div>
		</div>
		
		<div data-role="collapsible-set">
<!-- 		列表 -->
			<div data-role="collapsible" data-collapsed="true" data-inset="true">
				<h1><font style="color:#7D9EC0">预定须知</font></h1>
				<ul data-role="listview">
					<table data-role="table" data-mode="reflow"  class="ui-responsive table-stroke"> 
    				<thead>
       					<tr>
         					<th></th>
      					</tr>
     				</thead>
     				<tbody>
     					<tr>
     					<td>特殊人群限制</td>
     					</tr>
     					<tr>
     					<td>病患者、孕妇及行动不便者预订提示<br/>为了确保旅游顺利出行，防止旅途中发生人身意外伤害事故，请旅游者在出行前做一次必要的身体检查，如存在下列情况，因服务能力所限无法接待：
					    <br/>（1）传染性疾病患者，如传染性肝炎、活动期肺结核、伤寒等传染病人；
					    <br/>（2）心血管疾病患者，如严重高血压、心功能不全、心肌缺氧、心肌梗塞等病人；
					    <br/>（3）脑血管疾病患者，如脑栓塞、脑出血、脑肿瘤等病人；
					    <br/>（4）呼吸系统疾病患者，如肺气肿、肺心病等病人；
					    <br/>（5）精神病患者，如癫痫及各种精神病人；
					    <br/>（6）严重贫血病患者，如血红蛋白量水平在50克/升以下的病人；
					    <br/>（7）大中型手术的恢复期病患者；
					    <br/>（8）孕妇及行动不便者。
					    </td>
     					</tr>
     					<tr>
     					<td>老年旅游者预订提示</td>
     					</tr>
     					<tr>
     					<td>1. 70周岁以上老年人预订出游，须与我司签订《健康证明》并有家属或朋友陪同方可出游。
     					<br>2. 因服务能力所限，无法接待80周岁以上的旅游者报名出游，敬请谅解。
     					<br>3. 因服务能力所限，不受理65周岁（含65周岁）以上老年人预订云南跟团产品。
     					</td>
     					</tr>
     					<tr>
     					<td>未成年旅游者预订提示</td>
     					</tr>
     					<tr>
     					<td>1.未满18周岁的旅游者请由家属陪同参团。
     					<br>2.因服务能力所限，无法接待18周岁以下旅游者单独报名出游，敬请谅解。</td>
     					</tr>
     					<tr>
     					<td>预订须知</td>
     					</tr>
     					<tr>
     					<td>合同一经签订且付全款，团队机票、列车票、船票即为出票，不得更改、签转、退票。
     					<br>飞行时间、车程时间、船程时间以当日实际所用时间为准。
     					<br>本产品如因淡季或收客人数较少，有可能与相近方向的发班线路拼车出游，届时请游客见谅。
     					<br>景点游览、自由活动、购物店停留的时间以当天实际游览为准。
     					<br>行程中需自理门票和当地导游推荐项目，请自愿选择参加。
     					<br>请您仔细阅读本行程，根据自身条件选择适合自己的旅游线路，出游过程中，如因身体健康等自身原因需放弃部分行程的，或游客要求放弃部分住宿、交通的，均视为自愿放弃，已发生费用不予退还，放弃行程期间的人身安全由旅游者自行负责。
     					<br>团队游览中不允许擅自离团（自由活动除外），中途离团视同游客违约，按照合同总金额的%赔付旅行社，由此造成未参加行程内景点、用餐、房、车等费用不退，旅行社亦不承担游客离团时发生意外的责任。
     					<br>出游过程中，如产生退费情况，以退费项目旅行社折扣价为依据，均不以挂牌价为准。
     					<br>当地购物时请慎重考虑，把握好质量与价格，务必索要发票。
     					<br>如遇国家政策性调整门票、交通价格等，按调整后的实际价格结算。
     					<br>本线路价格为团队行程综合旅游报价，持有任何优惠证件的游客均不再享受景区门票的优惠政策。
     					
     					</td>
     					</tr>
       				</tbody>
					</table>
				</ul>
			</div>
		</div>
		
		
		<div data-role="collapsible-set">
<!-- 		列表 -->
			<div data-role="collapsible" data-collapsed="false" data-inset="true">
				<h1><font style="color:#7D9EC0">留言版</font></h1>
				<ul data-role="listview">
				<li>
					<textarea id="t1" placeholder="欢迎留言...."></textarea>
					<span id="tm1" style="color:red"></span>
					<input type="button" id="mbtn" value="提交留言" />	
					
				<table data-role="table" data-mode="reflow"  class="ui-responsive table-stroke"> 
    				<thead>
       					<tr>
         					<th></th>
      					</tr>
     				</thead>
     				<tbody>
     				<c:forEach var="list" items="${list }">
     					<tr>
     					<td>${list.content }<br/>
     					用户:${list.userid }<br/>
     					日期:<fmt:formatDate value="${list.date }" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
     					</tr>
     				</c:forEach>	
       				</tbody>
				</table>
				</li>
				<li><a href="#message" >点击查看全部留言</a></li>
				</ul>
				
			</div>
		</div>
		
		
		
		
		
		<div data-role="footer" data-position="fixed" >
			<div data-role="navbar" >
				<ul style="font-size:14px">
					<li align="center">
					<font style="font-size:18px">人数:</font><font id="m2" style="color:#FF34B3;font-size:30px">1</font><br/>
					<font style="font-size:18px">总价:</font><font id="m1" style="color:#FF34B3;font-size:30px">
					<c:if test="${hotspot.discount==0 }">&yen;${hotspot.price }</c:if>
					<c:if test="${hotspot.discount!=0 }">&yen;<fmt:formatNumber value="${hotspot.price * (0.01*hotspot.discount) }" pattern="0.0" maxFractionDigits="1"/></c:if>
					</font>
					</li>
					<li>
					<%if(request.getSession().getAttribute("user")==null){ %>
					<a href="#login" data-rel="dialog"><h1>买买买!</h1></a>
					<%}else{ %>
					<a href="#order" id="order" data-rel="dialog"><h1>买买买!</h1></a>
					<%} %>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<div data-role="page" id="message">
		<div data-role="header" data-position="fixed">
			<a href="javascript:history.back()" >返回</a><h1>全部留言</h1>
		</div>
		<div data-role="content">
			<table data-role="table" data-mode="reflow"  class="ui-responsive table-stroke"> 
    				<thead>
       					<tr>
         					<th></th>
      					</tr>
     				</thead>
     				<tbody>
     				<c:forEach var="list" items="${alllist }">
     					<tr>
     					<td>${list.content }<br/>用户:${list.userid }<br/>日期:<fmt:formatDate value="${list.date }" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
     					</tr>
     				</c:forEach>	
       				</tbody>
				</table>
		</div>
	</div>
	
	
<!-- 	订单信息 -->
	<div data-role="page" id="order" >
		<div data-role="header">
			<a href="javascript:history.back()" >返回</a><h1>订单详情</h1>
		</div>
		<div data-role="content">
		<div class="ui-field-contain">
		<input type="hidden" id="b0" value="${hotspot.id }">
		<center>人数:<font id="b1" style="color:#FF34B3;font-size:20px">1</font></center>
		</div>
		<div class="ui-field-contain">
				<span id="o1" style="color:#FF4500">游客姓名:<span id="x1"></span><br>游客身份证号码:<span id="y1" ></span></span>
    			<span id="o2" style="display:none;color:#8A2BE2"><hr>游客姓名:<span id="x2"></span><br>游客身份证号码:<span id="y2" ></span></span>
    			<span id="o3" style="display:none;color:#FF4500"><hr>游客姓名:<span id="x3"></span><br>游客身份证号码:<span id="y3" ></span></span>
    			<span id="o4" style="display:none;color:#8A2BE2"><hr>游客姓名:<span id="x4"></span><br>游客身份证号码:<span id="y4" ></span></span>
    			<span id="o5" style="display:none;color:#FF4500"><hr>游客姓名:<span id="x5"></span><br>游客身份证号码:<span id="y5" ></span></span>
    			<span id="o6" style="display:none;color:#8A2BE2"><hr>游客姓名:<span id="x6"></span><br>游客身份证号码:<span id="y6" ></span></span>
    			<span id="o7" style="display:none;color:#FF4500"><hr>游客姓名:<span id="x7"></span><br>游客身份证号码:<span id="y7" ></span></span>
    			<span id="o8" style="display:none;color:#8A2BE2"><hr>游客姓名:<span id="x8"></span><br>游客身份证号码:<span id="y8" ></span></span>
    			<span id="o9" style="display:none;color:#FF4500"><hr>游客姓名:<span id="x9"></span><br>游客身份证号码:<span id="y9" ></span></span>
    			<span id="o10" style="display:none;color:#8A2BE2"><hr>游客姓名:<span id="x10"></span><br>游客身份证号码:<span id="y10" ></span></span>
		</div>
		<div class="ui-field-contain">
		<center>总价:<font id="b2" style="color:#FF34B3;font-size:20px">
			<c:if test="${hotspot.discount==0 }">&yen;${hotspot.price }</c:if>
			<c:if test="${hotspot.discount!=0 }">&yen;<fmt:formatNumber value="${hotspot.price * (0.01*hotspot.discount) }" pattern="0.0" maxFractionDigits="1"/></c:if>
		</font></center>
		</div>
		
		<div class="ui-field-contain">
		<input type="button" id="buy" value="提交">
		</div>
		</div>
	</div>
	
	
<!-- 	登录 -->
	<div data-role="page" id="login" >
		<div data-role="header" >
			<a href="javascript:history.back(-1)" >返回</a><h1>欢迎登录</h1>
		</div>
		<div data-role="content">
		<div class="ui-field-contain">
		用户名：<input type="text" id="l1" placeholder="请输入用户名" />
		<span id="m1" style="color:red"></span>
		</div>
		<div class="ui-field-contain">
		密码：<input type="password" id="l2" placeholder="请输入密码" /> 
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
<!-- 		<div data-role="footer" data-position="fixed"> -->
<!-- 			<div data-role="navbar" > -->
<!-- 				<ul> -->
<!-- 					<li><a href="#">广告位1</a></li> -->
<!-- 					<li><a href="#">广告位2</a></li> -->
<!-- 					<li><a href="#">广告位3</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 		</div> -->
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