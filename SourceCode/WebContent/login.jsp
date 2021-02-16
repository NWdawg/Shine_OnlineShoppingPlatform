<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link type="text/css" rel="stylesheet" href="//misc.360buyimg.com/user/passport/1.0.0/css/tinyscrollbar-170524.css">
	<link rel="shortcut icon" href="http://imollyunfei.top/images/i32.ico"/>
    <title>登录界面</title>
    <style type="text/css">
        * {
            margin: 0px;
            padding: 0px;
            font-family: "Microsoft YaHei UI";
            overflow-x: hidden;
            overflow-y: hidden;
        }

        .bj {
            font-size: 36px;
        }

        .welcomeWord {
            color: #666666;
            font-size: 30px;
        }

        img {
            float: right;
        }

        .zt {
            color: #ff86ce;
            font-family: "Microsoft YaHei UI";
            font-size: 10px;
            background-color: #fde8ff;
        }

        .mainLogin {
            background: url("image/loginBackgroundImg.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            width: 100%;
            height: 510px;
            border-radius: 10px;
        }

        .loginDiv {
            width: 380px;
            height: 470px;
            float: right;
            margin: 10px 50px 100px;
            background-color: #ffffff;
            z-index: 9999999999;
            border-radius: 10px;
        }

        .loginTopper {
            width: 100%;
            height: 50px;
            background-color: #fff7f2;
            font-size: 10px;
            text-align: center;
            margin-right: 5px;
            border-radius: 5px;
        }

        .tips {
            margin-top: 5px;
        }

        .loginType {
            width: 100%;
            height: 50px;
            padding-top: 20px;
            margin-bottom: 10px;
            text-align: center;
            font-size: 20px;
            font-weight: 800;
            font-family: "Microsoft YaHei UI";
            background-color: #ffffff;
            color: #ff2969;
        }

        form {
            margin-left: 5px;
        }

        .tipInput {
            position: absolute;
            float: left;
            margin-top: 18px;
        }

        .email, .password,.validation {
            width: 70%;
            margin-left: 24%;
            margin-right: 5%;
            height: 50px;
            font-size: 20px;
            font-family: Consolas;
            margin-top: 5px;
        }
        .validation{
            width: 30%;
        }
        .imgValidation{
        	margin-top: 5px;
        	margin-right: 2px;
        }

        .clear {
            clear: both;
        }

        .submit {
            color: whitesmoke;
            background-color: #df3b3c;
            font-size: 20px;
            font-family: Consolas;
            font-weight: 800;
            text-align: center;
            width: 70%;
            height: 50px;
            margin-left: 15%;
            margin-right: 15%;
            margin-top: 30px;
            margin-bottom: 30px;
        }

        .lassPasswordA {
            float: right;
            margin-right: 5%;
            margin-top: 30px;
            font-size: 15px;
            font-weight: 800;
            color: #666666;
            text-decoration: none;
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

        <!--a标签未访问时-- >
        .links a:link {
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
            margin-top: 10px;
            margin-left: 24%;
            margin-right: 20%;
        }
    </style>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/time.js"></script>
</head>
<script type="text/javascript">
    function changeR(node) {
        // 用于点击时产生不同的验证码
        node.src = "validationPage?time=" + new Date().getTime();
    }
</script>
<body>
<!--LOGO及欢迎语-->
<table width="50%" height="50" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td bgcolor="#FFFFFF" class="bj">
            <img src="image/timg.jpg" width="80" height="50"/></td>
        <td class="welcomeWord"><span>欢迎登录</span></td>
    </tr>
</table>

<!--提示栏-->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <th class="zt" scope="col">依据《网络安全法》，为保障您的账户安全和正常使用，请尽快完成手机号验证！</th>
    </tr>
</table>

<!--主题登录部分-->
<div class="mainLogin">	
    <div class="loginDiv">
        <div class="loginTopper"><p class="tips">点点不会以任何理由要求您转账汇款，谨防诈骗。</p></div>
        <div class="loginType">账户登录</div>
        <form action="loginServlet" method="post">
            <p><span class="tipInput">登录邮箱： </span><input type="text" placeholder="请输入邮箱" class="email" name="email"><br/></p>
            <p><span class="tipInput">登录密码：</span><input type="password" placeholder="请输入密码" class="password" name="password"></p>
            <p class="lossPassword"><a href="javascript:void(0);" class="lassPasswordA">忘记密码</a></p>
            <p><span class="tipInput">验证码：</span>
                <input type="text" class="validation" name="validation">
                <img alt="random" src="validationPage" onclick="changeR(this)" style="cursor: pointer;" class="imgValidation"></p>
            <p><input type="submit" value="登  录" class="submit"></p>
            <p class="clear"></p>
        </form>
    </div>
</div>

<!--底部栏-->
<div class="w">
    <div id="footer-2013">
        <div class="links">
            <a rel="nofollow" target="_blank" href="http://imollyunfei.top/mv/">
                关于我们
            </a>
            |
            <a rel="nofollow" target="_blank" href="http://imollyunfei.top/mv/">
                联系我们
            </a>
            |
            <a rel="nofollow" target="_blank" href="http://imollyunfei.top/mv/">
                人才招聘
            </a>
            |
            <a rel="nofollow" target="_blank" href="http://imollyunfei.top/mv/">
                商家入驻
            </a>
            |
            <a rel="nofollow" target="_blank" href="http://imollyunfei.top/mv/">
                广告服务
            </a>
            |
            <a rel="nofollow" target="_blank" href="http://imollyunfei.top/mv/">
                手机点点
            </a>
            |
            <a target="_blank" href="http://imollyunfei.top/mv/">
                友情链接
            </a>
            |
            <a target="_blank" href="http://imollyunfei.top/mv/">
                销售联盟
            </a>
            |
            <a href="http://imollyunfei.top/mv/" target="_blank">
                点点社区
            </a>
            |
            <a href="http://imollyunfei.top/mv/" target="_blank">
                点点公益
            </a>
            |
            <a target="_blank" href="http://imollyunfei.top/mv/" clstag="pageclick|keycount|20150112ABD|9">English
                Site</a>
        </div>
        <hr/>
        <div class="copyright">
            Copyright&nbsp;©&nbsp;2004-2018&nbsp;&nbsp;点点DD.com&nbsp;版权所有
        </div>
    </div>
</div>

</body>
</html>


