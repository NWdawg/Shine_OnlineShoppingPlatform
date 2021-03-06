<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 注意在校验途中，数据更新应提前校验放在web前端 -->
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册页面</title>
<link rel="shortcut icon" href="http://imollyunfei.top/images/i32.ico" />
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	overflow: hidden;
}

body {
	background-color: #f1fcff;
}

.bj {
	font-size: 36px;
}

.welcomeWord {
	color: #666666;
	font-size: 30px;
	background-color: white;
}

img {
	float: right;
}

a {
	text-decoration: none;
}

a:link {
	color: #333333;
}

a:hover {
	color: #ff3368;
	font-weight: 800;
}

.registDivBackImg {
	background-image: url("image/registBackgroundImg.jpg");
	background-size: 100%;
	background-repeat: no-repeat;
	height: 510px;
}

.registDiv {
	width: 450px;
	height: 480px;
	border-radius: 20px;
	background-color: #ffe7ec;
	margin-left: 35%;
	margin-right: 35%;
	margin-top: 20px;
	opacity: 0.8;
}

.registTopper {
	width: 100%;
	height: 50px;
	background-color: #ff8598;
	border-radius: 10px;
}

input {
	width: 70%;
	margin-left: 24%;
	margin-right: 5%;
	height: 50px;
	font-size: 20px;
	font-family: Consolas;
	margin-top: 5px;
}

.tipInput {
	position: absolute;
	float: left;
	margin-top: 18px;
	margin-left: 5px;
}

.tips {
	text-align: center;
	font-family: "Microsoft YaHei UI";
	font-weight: 800;
	font-size: 20px;
	color: ghostwhite;
	margin-top: 10px;
	margin-bottom: 10px;
}

.userNameP, .emailP, .passwordP, .confimPassworsP, .submitP {
	margin-top: 20px;
}

.submit {
	width: 70%;
	height: 40px;
	background-color: #ff4a7a;
	color: white;
	font-size: 20px;
	font-family: "Microsoft YaHei UI";
	font-weight: 800;
	text-align: center;
	margin-top: 20px;
	margin-left: 15%;
	margin-right: 15%;
}

.w {
	margin-top: 30px;
	font-size: 10px;
}

.links {
	margin-left: 18%;
	margin-right: 15%;
	display: inline;
}

.links a {
	text-decoration: none;
	color: #333333;
}

<!--
a标签未访问时-->.links a:link {
	color: black;
}

.links a:visited {
	color: #333333;
}

.links a:active {
	color: #fe9bff;
}

.links a:hover {
	color: #ff7d8a;
	font-weight: 800;
	text-decoration: underline;
}

hr {
	margin-top: 3px;
	width: 100%;
}

.copyright {
	text-align: center;
	font-size: 10px;
	color: black;
	margin-top: 5px;
	margin-left: 24%;
	margin-right: 20%;
}
</style>
<script src="js/jquery.min.js"></script>
<script src="js/time.js"></script>
</head>
<body>
	<!--LOGO及欢迎语-->
	<table width="100%" height="50" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td bgcolor="white" width="10%"></td>
			<td bgcolor="#FFFFFF" class="bj"><img src="image/timg.jpg"
				width="80" height="50" /></td>
			<td class="welcomeWord"><span>欢迎注册</span></td>
			<td bgcolor="white" width="50%"></td>
			<td bgcolor="#FFFFFF" class="" width="20%">已有账号？ <a
				href="login.jsp">请登录</a></td>
		</tr>
	</table>

	<!--黑色粗条分割线-->
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<th bgcolor="#999999" scope="col">&nbsp;</th>
			<th bgcolor="#999999" scope="col">&nbsp;</th>
		</tr>
	</table>

	<!--正式注册框--注册时需要：用户名，邮箱，密码，确认密码-->
	<div class="registDivBackImg">
		<div class="registDiv">
			<div class="registTopper">
				<p class="tips">DD欢迎您注册！</p>
			</div>
			<!--
        //下面是注册用户名，邮箱，密码，确认密码
        //密码与确认密码需要校验是否一致
        -->
			<p class="userNameP">
				<span class="tipInput">用户名：</span><input type="text" value="用户名"
					class="userName">
			</p>
			<p class="emailP">
				<span class="tipInput">邮 箱：</span><input type="text" value="email"
					class="email">
			</p>
			<p class="passwordP">
				<span class="tipInput">密 码：</span><input type="password" value="密码"
					class="password">
			</p>
			<p class="confimPassworsP">
				<span class="tipInput">确认密码：</span><input type="password"
					value="确认密码" class="confirmPassword">
			</p>
			<p class="submitP">
				<input type="submit" class="submit" value="确认注册">
			</p>
		</div>
	</div>


	<!--底部栏-->
	<div class="w">
		<div id="footer-2013">
			<div class="links">
				<a rel="nofollow" target="_blank" href="http://imollyunfei.top/mv/">
					关于我们 </a> | <a rel="nofollow" target="_blank"
					href="http://imollyunfei.top/mv/"> 联系我们 </a> | <a rel="nofollow"
					target="_blank" href="http://imollyunfei.top/mv/"> 人才招聘 </a> | <a
					rel="nofollow" target="_blank" href="http://imollyunfei.top/mv/">
					商家入驻 </a> | <a rel="nofollow" target="_blank"
					href="http://imollyunfei.top/mv/"> 广告服务 </a> | <a rel="nofollow"
					target="_blank" href="http://imollyunfei.top/mv/"> 手机点点 </a> | <a
					target="_blank" href="http://imollyunfei.top/mv/"> 友情链接 </a> | <a
					target="_blank" href="http://imollyunfei.top/mv/"> 销售联盟 </a> | <a
					href="http://imollyunfei.top/mv/" target="_blank"> 点点社区 </a> | <a
					href="http://imollyunfei.top/mv/" target="_blank"> 点点公益 </a> | <a
					target="_blank" href="http://imollyunfei.top/mv/"
					clstag="pageclick|keycount|20150112ABD|9">English Site</a>
			</div>
			<hr />
			<div class="copyright">
				Copyright&nbsp;©&nbsp;2004-2018&nbsp;&nbsp;点点DD.com&nbsp;版权所有</div>
		</div>
	</div>
	<script>
		//下面是添加空校验
		$(".submit").click(function() {
			if ($(".userName").val() == "") {
				alert("请输入用户名！")
			}
			if ($(".email").val() == "") {
				alert("必填邮箱为空！")
			}
			if ($(".password").val() == "") {
				alert("密码为空！")
			}
			if ($(".confirmPassword").val() == "") {
				alert("确认密码项为空！")
			}
			if ($(".password").val() != $(".confirmPassword").val()) {
				alert("两次输入密码不一致，请检查！")
			}

			//走完了上面的校验，然后才开始和后台进行交互进行注册
			$.ajax({
				type : 'post',
				url : 'userRegistServlet',
				async : false,
				data : {
					"userName" : $(".userName").val(),
					"email" : $(".email").val(),
					"password" : $(".password").val()
				},
				dataType : 'json',
				success : function(data) {
					alert(data)
					if (data == "666") {
						alert("恭喜会员：" + $(".email").val() + "注册成功！")
						//注册成功时跳转登录页面
						window.location.href = "login.jsp";
					}
					if (data == "777") {
						alert("oups! 会员：" + $(".email").val() + "注册失败,请重新注册！")
						//注册失败时刷新页面重新注册
						window.location.href = "regist.jsp";
					}
				}

			})
		})

		//下面是email---当前用户要注册的email是否已经被注册过了
		$(".email")
				.blur(
						function() {
							//邮箱格式校验
							var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
							if (!(myreg.test($(this).val()))) {
								alert("联系人邮箱格式不正确，请重新输入！")
								$(this).val("")
							} else {//如果确定了是邮箱，再和后台交互该邮箱是否已经有人注册
								$
										.ajax({
											type : 'get',
											url : 'checkEmail',
											data : {
												"email" : $(".email").val()
											},
											async : false,
											dataType : 'text',
											success : function(data) {
												alert(data)
												if (data == "888") {
													alert($(".email").val()
															+ "已有人注册，请您换个邮箱，如果您是该邮箱主人，请点击右上角登录！")
													//同时将email框清空
													$(".email").val("")
												}
												if (data == "666") {
													//如果可以注册--则在控制台写入该句话，或者不写                    	
													alert($(".email").val()
															+ "无人注册，您可以使用该邮箱作为你的唯一登录凭证！")
													console
															.log($(".email")
																	.val()
																	+ "无人注册，您可以使用该邮箱作为你的唯一登录凭证！")
												}
											}
										})
							}
						})
	</script>
</body>
</html>
