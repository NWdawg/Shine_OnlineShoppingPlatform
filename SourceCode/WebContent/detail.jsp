<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>商品详情页</title>
    <link rel="stylesheet" type="text/css" href="css/jdCss.css">
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <link rel="shortcut icon" href="http://imollyunfei.top/images/i32.ico"/>
    <style type="text/css">
        * {
            margin: 0px;
            padding: 0px;
            overflow-x: hidden;
        }

        .clear {
            clear: both;
        }

        .topper {
            width: 100%;
            height: 40px;
            background-color: #e3e4e5;
            overflow-y: hidden;
            background-image: url("image/mainBackgroundImg.jpg");
            background-size: 100%;
            background-repeat: no-repeat;
            background-position: top;
        }

        .toppperLeft {
            margin-left: 100px;
            margin-top: 3px;
            margin-bottom: 3px;
        }

        .toppperRight {
            position: absolute;
            right: 9%;
            margin-top: -35px;
            margin-bottom: 5px;
            font-size: 20px;
            font-weight: 800;
            font-family: "Microsoft YaHei UI";
        }

        .toppperRight a {
            text-decoration: none;
        }

        .toppperRight a:hover {
            color: #ff5d80;
            text-decoration: none;
        }

        .logoImg {
            margin-bottom: 2px;
        }

        .iconLogo {
            color: #ff5d80;
            font-family: "Microsoft YaHei UI";
            font-size: 20px;
            font-weight: 800;
            list-style: decimal;
        }

        .navContent {
            background-color: #ffe9e2;
            opacity: 0.9;
        }

        .navbar, .detail, .classify, .grid, .content {
            width: 80%;
            margin-left: 10%;
            margin-right: 10%;
        }

        .leftIco {
            float: left;
            width: 20%;
            height: 120px;
            background-color: white;
            opacity: 0.8;
        }

        .rightSearch {
            float: left;
            width: 50%;
            height: 120px;
            background-color: white;
            overflow-y: hidden;
        }

        .input-group {
            margin-top: 30px;
            margin-left: 40px;
            background-color: white;
        }

        .form-control, .searchButton {
            height: 50px;
        }

        #hotwords {
            width: 500px;
            margin-top: 5px;
            margin-left: -40px;
            margin-bottom: 20px;
            overflow-y: hidden;
        }

        .rightShoppingCar {
            float: left;
            width: 30%;
            height: 120px;
            background-color: white;
        }

        .leftCF {
            float: left;
            width: 20%;
            height: 30px;
            background-color: #65acff;
        }

        .rightCF {
            background-color: white;
            height: 30px;
            overflow-y: hidden;
        }

        .mainContent {
            width: 80%;
            margin-top: 20px;
            margin-bottom: 20px;
            margin-left: 10%;
            margin-right: 10%;
        }

        .leftImgDiv {
            float: left;
            width: 40%;
            height: 500px;
        }

        .rightDetail {
            float: right;
            width: 58%;
            height: 500px;
            margin-left: 2%;
        }

        .leftImg img {
            width: 450px;
            height: 450px;
        }

        .operation {
            margin-top: 50px;
            margin-bottom: 50px;
            margin-left: 10%;
            margin-right: 10%;
        }

        .phoneTitle {
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
        }

        .introduceDetailUl > li {
            width: 24%;
            margin-left: 1%;
            float: left;
            height: 50px;
        }

        .discountL{
            float: left;
            width: 10%;
            height: 200px;
        }

        .discountMethodR{
            float: left;
            width: 42%;
            margin-left: 1%;
            height:200px;

        }
        
        		.phoneDiv{
            width: 80%;
            margin-left: 10%;
            margin-right: 10%;
            margin-top: 5px;
            margin-bottom: 5px;
            background-color: #ffe9e2;
            opacity: 0.9;
        }

        .phoneDetail {
            width: 25%;
            background-color: white;
            float: left;
            height: 444px;
            overflow: hidden;
        }

        .phoneDetail img{
            width: 90%;
            height: 70%;
        }
		
		.phoneName{
			text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
		}
        .im-02{
            background: url(//misc.360buyimg.com/product/search/1.0.7/css/i/bg-im@1x.png) no-repeat;
            display: block;
            background-position: -40px 0;
            width: 16px;
            height: 16px;
            display: block;
            position: relative;
            right: -180px;
            bottom: 20px;
        }

        .commentsContentL {
            float: left;
            width: 20%;
            height: 200px;
            background-color: #a2ffc7;
        }

        .commentsContentR {
            float: left;
            width: 79%;
            margin-left: 1%;
            height: 200px;
            background-color: #ffb0cd;
            word-wrap: break-word;
            word-break: break-all;
        }

        <!--
        底部服务模块-- >
        #service-2017 {
            margin-left: 20%;
            margin-right: 20%;
            background-color: white;
        }

        <!--
        底部公共模块-- >
        .d {
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
        a标签未访问时-- >
        .links a:link {
            color: black;

        }

        .links a:visited {
            color: #333333;
        }

        .links a:active {
            color: #fe9bff;
        }

        .links a:hover, a:hover {
            color: #ff7d8a;
            font-weight: 800;
            text-decoration: underline;
        }

        #service-2017 {
            height: 290px;
            background-color: white;
        }

        .slogen {
            height: 60px;
        }

        .wrap dt {
            overflow: hidden;
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

		       .changePS{
            background-color: #ffc1ac;
            position: absolute;
            left: 35%;
            right: 40%;
            top: 900px;
            border-radius: 20px;
            border: 3px dashed #206eff;
            width: 500px;
            height: 300px;
            z-index: 999;
        }

        .Comcontent {
            position: absolute;
            left: 15%;
            right: 5%;
            top: 10%;
            overflow: hidden;
            height: 220px;
        }

        .Old_name{
            margin-top: 20px;
            width: 300px;
            height: 30px;
        }

        textarea{
            resize: none;
        }

        .leftCom{
            float: left;
            width: 20%;
            margin-top: 20px;
        }
        .rightCom{
            float: left;
            width: 80%;
        }

        .Old_password{
            margin-top: 10px;
            width: 300px;
            height: 100px;
        }


        .changPLog {
            text-align: center;
            font-size: 20px;
            font-weight: 800;
            margin-top: 20px;
        }

        .changSubmmit, .signOutC {
            width: 100px;
            height: 30px;
            position: relative;
            left: 18%;
            right: 20%;
            top: 10px;
        }
    </style>
</head>
<script src="js/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<body>


<!--LOGO及欢迎语-->
<!--顶部-->
<div class="topper">
    <div class="toppperLeft">
        <span><i class="iconfont">&#xe608;</i> <span class="iconLogo">DD</span>.com </span>
        <img src="image/timg.jpg" height="38" width="34" alt="DD吉祥物" class="logoImg"/> <span>&nbsp;</span>
        <select onchange="chinaChange(this,document.getElementById('city'));"
                style=" width:10%; height:30px;line-height:30px; ">
            <option value="请选择市区">请选择省份</option>
            <option value="北京市">
                北京市
            </option>
            <option value="天津市">
                天津市
            </option>
            <option value="上海市">
                上海市
            </option>
            <option value="重庆市">
                重庆市
            </option>
            <option value="河北省">
                河北省
            </option>
            <option value="山西省">
                山西省
            </option>
            <option value="辽宁省">
                辽宁省
            </option>
            <option value="吉林省">
                吉林省
            </option>
            <option value="黑龙江省">
                黑龙江省
            </option>
            <option value="江苏省">
                江苏省
            </option>
            <option value="浙江省">
                浙江省
            </option>
            <option value="安徽省">
                安徽省
            </option>
            <option value="福建省">
                福建省
            </option>
            <option value="江西省">
                江西省
            </option>
            <option value="山东省">
                山东省
            </option>
            <option value="河南省">
                河南省
            </option>
            <option value="湖北省">
                湖北省
            </option>
            <option value="湖南省">
                湖南省
            </option>
            <option value="广东省">
                广东省
            </option>
            <option value="海南省">
                海南省
            </option>
            <option value="四川省">
                四川省
            </option>
            <option value="贵州省">
                贵州省
            </option>
            <option value="云南省">
                云南省
            </option>
            <option value="陕西省">
                陕西省
            </option>
            <option value="甘肃省">
                甘肃省
            </option>
            <option value="青海省">
                青海省
            </option>
            <option value="台湾省">
                台湾省
            </option>
            <option value="广西壮族自治区">
                广西壮族自治区
            </option>
            <option value="内蒙古自治区">
                内蒙古自治区
            </option>
            <option value="西藏自治区">
                西藏自治区
            </option>
            <option value="宁夏回族自治区">
                宁夏回族自治区
            </option>
            <option value="新疆维吾尔自治区">
                新疆维吾尔自治区
            </option>
            <option value="香港特别行政区">
                香港特别行政区
            </option>
            <option value="澳门特别行政区">
                澳门特别行政区
            </option>
        </select>
        <select name="city" id="city" style=" width:10%; height:30px;line-height:30px; ">
            <option value="请选择市区">请选择市区</option>
        </select>
    </div>
    <div class="toppperRight">
        <span><a href="login.jsp">你好,请登录 &nbsp</a></span>
        <span><a href="regist.jsp">免费注册 &nbsp;</a></span>
        <span><a href="order.jsp">我的订单</a></span>
    </div>

</div>

<div class="navContent">
    <!--navbar导航部分-->
    <div class="navbar">
        <div class="leftIco">
            <a href="detail.jsp">
            <img src="image/timg.jpg" height="80" width="100"
                 style="margin-top: 20px;margin-bottom: 20px;margin-left: 20px"/><span
                style="font-size: 30px;font-family: 'Microsoft YaHei UI';font-weight: 800;color: #333333">手机&nbsp;</span></a>
        </div>
        <div class="rightSearch">
            <div class="input-group input-group-lg">
                <input type="text" class="form-control searchInput" placeholder="华为|小米|苹果|DD自营旗舰店">
                <span class="input-group-btn">
        <button class="btn btn-primary searchButton" type="button">搜索</button>
      </span>
            </div>
            <div id="hotwords"><a data-id="7320" data-position-id="2" href="#"
                                   >iPhone</a><a data-id="4985" data-position-id="3"
                                                               href="#"  >华为</a><a
                    data-id="4733" data-position-id="4" href="#"
                     >荣耀</a><a data-id="6398" data-position-id="5"
                                             href="#"  >小米</a><a
                    data-id="5404" data-position-id="6" href="#"
                     >一加</a><a data-id="6160" data-position-id="7"
                                              href="#"  >vivo</a><a
                    data-id="5403" data-position-id="8" href="#"
                     >OPPO</a><a data-id="8233" data-position-id="9"
                                               href="#"  >锤子</a></div>
        </div>
        <div class="rightShoppingCar">
            <button type="button" class="btn btn-success bt-lg"
                    style="margin-top: 30px;margin-left: 50px;margin-bottom: 30px;background-color: #06ff88"><a
                    href="shoppingCar.jsp"
                    style="text-decoration: none;color: white;font-family: 'Microsoft YaHei UI';font-size: 20px;">
                <i class="iconfont">&#xe607;</i>
                <i class="iconfont arrow">&#xe601;</i>
                我的购物车</a>
            </button>
        </div>
    </div>

    <!--分类部分-->
    <div class="classify">
        <div class="leftCF">
            <span style="text-align:center;margin-left: 10px;font-size: 20px">手机分类</span>
        </div>
        <div class="rightCF">
            <div id="navitems-2014">
                <ul id="navitems-group">
                    <li clstag="channel|keycount|4118|3_2_1" class="fore1">
                        <a   href="#">有新机</a>

                    </li>
                    <li clstag="channel|keycount|4118|3_2_2" class="fore2">
                        <a   href="#">手机好店</a>
                    </li>
                    <li clstag="channel|keycount|4118|3_2_3" class="fore3">
                        <a   href="#">游戏手机</a>
                    </li>
                    <li clstag="channel|keycount|4118|3_2_4" class="fore4">
                        <a   href="#">配件</a>
                    </li>
                    <li clstag="channel|keycount|4118|3_2_5" class="fore5">
                        <a   href="#">营业厅</a>
                    </li>
                    <li clstag="channel|keycount|4118|3_2_6" class="fore6">
                        <a   href="#">玩3C</a>
                    </li>
                    <li clstag="channel|keycount|4118|3_2_7" class="fore7">
                        <a   href="#">企业购</a>
                    </li>
                    <li clstag="channel|keycount|4118|3_2_8" class="fore8">
                        <a   href="#">以旧换新</a>
                    </li>
                    <li clstag="channel|keycount|4118|3_2_9" class="fore9">
                        <a   href="#">社区</a>

                    </li>
                </ul>
            </div>
        </div>
    </div>
    
  <div class="loadAjaxData">
<!--分隔栏-->
<table width="100%" border="0" cellspacing="0" cellpadding="0"
       style="margin-top: 10px;margin-bottom: 10px;margin-left: 35px">
    <tr>
        <td width="7%">&nbsp;</td>
        <td width="63%" class="zzzzzzzz">手机>手机通讯>手机><span class="loadPhoneType">加载手机型号</span></td>
        <td width="30%" style="margin-right: 20%"><span class="shopName">店铺名称</span></td>
    </tr>
</table>

<!--用于装载评论窗体-->
<div class="load"></div>
<!--下面是商品详情页主体信息--要注意，此页要加载数据较多-->
<div class="mainContent">
    <div class="leftImgDiv">
        <div class="leftImg"><img src="image/1.jpg" alt=""></div>
        <div class="method">
            <div class="left-btns">
                <a class="follow J-follow" data-id="7479912" href="#none"
                   clstag="shangpin|keycount|product|guanzhushangpin_1" style="margin-left: 100px">
                    <i class="sprite-follow-sku"></i><em>关注</em>
                </a>
                <a class="share J-share" href="#none" clstag="shangpin|keycount|product|share_1"
                   style="margin-left: 50px">
                    <i class="sprite-share"></i><em>分享</em>
                </a>
                <a class="compare J-compare J_contrast" id="comp_7479912" data-sku="7479912" href="#none"
                   clstag="shangpin|keycount|product|jiaruduibi" style="margin-left: 50px">
                    <i class="sprite-compare"></i><em>对比</em>
                </a>
            </div>
        </div>
    </div>

    <div class="rightDetail">
        <div class="title">
            <p class="phoneTitle">小米 红米Note5 全网通版 3GB+32GB 黑色 移动联通电信4G手机 双卡双待 拍照手机 骁龙636八核处理器，1300万柔光自拍，4000mAh大电量，18:9
                全面屏，人脸解锁…</p>
            <p class="priceP"><i style="color: #ff3f6d">点点</i>价：<span class="price">￥999.00</span></p>
            <div class="discountState">
                <div class="discountL">促 &nbsp; &nbsp;销: </div>
                <div class="discountMethodR">
                    <p>此价格不与套装优惠同时享受</p>
                    <p>满19元即赠热销商品，赠完即止</p>
                    <p>购买1件可优惠换购热销商品</p>
                    <!--此处价格判断--判断是几时，是今天还是明天送达-->
                    <P>由 <i style="color: #ff3f6d">点点</i> 发货, 并提供售后服务. 11:10前下单,预计今天送达</P>
                </div>
            </div>
            <div class="operation">
                <input class="text buy-num" onkeyup="setAmount.modify('#buy-num');" id="buy-num" value="1"
                       data-max="200" style="margin-left: 50px;width: 30px">
                <button type="button" class="btn btn-danger btn-lg addIntoShoppingCar" style="margin-left: 30px">加入购物车</button>&nbsp;&nbsp;
                <button type="button" class="btn btn-danger btn-lg addIntoFavorite" style="margin-left: 30px">加入收藏夹</button>
            </div>
        </div>
    </div>

    <div class="clear"></div>
    <ul id="myTab" class="nav nav-tabs">
        <li class="active">
            <a href="#goodsIntroduce" data-toggle="tab">
                商品介绍
            </a>
        </li>
        <li class="commentsli"><a href="#goodsCommemts" data-toggle="tab">商品评价</a></li>
        <li><a href="#afterSalesProtect" data-toggle="tab">售后保障</a></li>


    </ul>
    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="goodsIntroduce">
            <ul class="introduceDetailUl">
                <li class="brand">品牌:11111111111111111</li>
                <li class="model">型号:11111111111111111</li>
                <li class="fuselageColor">机身颜色:11111111111111111</li>
                <li class="pixel">像素:11111111111111111</li>
                <li class="network">网络：11111111111111111</li>
                <li class="screenSize">屏幕参数：11111111111111111</li>
                <li class="cpu">CPU核数：11111111111111111</li>
                <li class="system">操作系统：11111111111111111</li>
                <li class="fuselageMemory">机身内存：11111111111111111</li>
                <li class="batteryCapacity">电池容量：11111111111111111</li>
                <li class="runMemory">运行内存：11111111111111111</li>
                <li class="goodCode">商品唯一码：11111111111111111</li>
            </ul>
        </div>
        <div class="tab-pane fade" id="goodsCommemts">
            <button type="button" class="btn btn-block btn-lg btn-success clickToComments">点我开始评论</button>
            <p>全部评论</p>
            <div class="comments">
                <div class="commentsContentL">会员邮箱:110@qq.com</div>
                <div class="commentsContentR">
                    评论内容:122222222222222222222222222222222222222222222222222222222222222222222222221111111111111111132131322222222222222222
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="afterSalesProtect">
            <div class="item-detail item-detail-copyright">
                <div class="serve-agree-bd">
                    <dl class="__reader_view_article_wrap_4207992796292872__">


                        <dt>
                            <i class="goods"></i>
                            <strong>厂家服务</strong>
                        </dt>
                        <dd>
                            本产品全国联保，享受三包服务，质保期为：一年质保<br>
                            如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！<br>(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。)
                            您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......<br><br>
                            品牌官方网站：<i style="color: #ff3f6d">http://www.DD.com/</i><br>
                            售后服务电话：<i style="color: #ff3f6d">400-8888-8888</i>
                        </dd>

                        <dt>
                            <i class="goods"></i>
                            <strong>京东承诺</strong>
                        </dt>
                        <dd>
                            京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！<br>
                            注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！
                        </dd>

                        <dt>
                            <i class="goods"></i><strong>
                            正品行货 </strong>
                        </dt>
                        <dd>京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。</dd>
                        <dt><i class="unprofor"></i><strong>全国联保</strong></dt>
                        <dd>
                            凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！
                            <br><br>注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！
                        </dd>
                        <dt><i class="no-worries"></i><strong>无忧退货</strong></dt>
                        <dd class="no-worries-text">
                            客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）
                        </dd>
                    </dl>
                </div>
                <div id="state">
                    <strong>权利声明：</strong><br>京东上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是京东重要的经营资源，未经许可，禁止非法转载使用。
                    <p><b>注：</b>本站商品信息均来自于合作方，其真实性、准确性和合法性由信息拥有者（合作方）负责。本站不提供任何保证，并不承担任何法律责任。</p>
                    <br>
                    <strong>价格说明：</strong><br>
                    <p><b>京东价：</b>京东价为商品的销售价，是您最终决定是否购买商品的依据。</p>
                    <p><b>划线价：</b>商品展示的划横线价格为参考价，并非原价，该价格可能是品牌专柜标价、商品吊牌价或由品牌供应商提供的正品零售价（如厂商指导价、建议零售价等）或该商品在京东平台上曾经展示过的销售价；由于地区、时间的差异性和市场行情波动，品牌专柜标价、商品吊牌价等可能会与您购物时展示的不一致，该价格仅供您参考。
                    </p>
                    <p><b>折扣：</b>如无特殊说明，折扣指销售商在原价、或划线价（如品牌专柜标价、商品吊牌价、厂商指导价、厂商建议零售价）等某一价格基础上计算出的优惠比例或优惠金额；如有疑问，您可在购买前联系销售商进行咨询。
                    </p>
                    <p><b>异常问题：</b>商品促销信息以商品详情页“促销”栏中的信息为准；商品的具体售价以订单结算页价格为准；如您发现活动商品售价或促销信息有异常，建议购买前先联系销售商咨询。</p>

                </div>
            </div>
            </p>
        </div>
    </div>
</div>
</div>


<!--公共Service 服务模块-->
<div id="service-2017">
    <div class="w">
        <ol class="slogen">
            <li class="item fore1">
                <i>多</i>品类齐全，轻松购物
            </li>
            <li class="item fore2">
                <i>快</i>多仓直发，极速配送
            </li>
            <li class="item fore3">
                <i>好</i>正品行货，精致服务
            </li>
            <li class="item fore4">
                <i>省</i>天天低价，畅选无忧
            </li>
        </ol>
    </div>
    <div class="jd-help">
        <div class="w">
            <div class="wrap">
                <dl class="fore1">
                    <dt>购物指南</dt>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-29.html">购物流程</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-151.html">会员介绍</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-297.html">生活旅行/团购</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue.html">常见问题</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-136.html">大家电</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/index.html">联系客服</a></dd>
                </dl>
                <dl class="fore2">
                    <dt>配送方式</dt>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-81-100.html">上门自提</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-81.html">211限时达</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/103-983.html">配送服务查询</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/109-188.html">配送费收取标准</a></dd>
                    <dd><a target="_blank" href="//help.joybuy.com/help/question-list-201.html">海外配送</a></dd>
                </dl>
                <dl class="fore3">
                    <dt>支付方式</dt>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-172.html">货到付款</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-173.html">在线支付</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-176.html">分期付款</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-174.html">邮局汇款</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-175.html">公司转账</a></dd>
                </dl>
                <dl class="fore4">
                    <dt>售后服务</dt>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/321-981.html">售后政策</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-132.html">价格保护</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/130-978.html">退款说明</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//myjd.jd.com/repair/repairs.action">返修/退换货</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-50.html">取消订单</a></dd>
                </dl>
                <dl class="fore5">
                    <dt>特色服务</dt>
                    <dd><a target="_blank" href="//help.jd.com/user/issue/list-133.html">夺宝岛</a></dd>
                    <dd><a target="_blank" href="//help.jd.com/user/issue/list-134.html">DIY装机</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//fuwu.jd.com/">延保服务</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//o.jd.com/market/index.action">点点E卡</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//mobile.jd.com/">点点通信</a></dd>
                    <dd><a rel="nofollow" target="_blank" href="//s.jd.com/">点点DD+</a></dd>
                </dl>
                <span class="clr"></span>
            </div>
        </div>
    </div>
</div>


<!--公共底部栏-->
<div class="d">
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
        <div class="copyright">
            Copyright&nbsp;©&nbsp;2004-2018&nbsp;&nbsp;点点DD.com&nbsp;版权所有
        </div>
    </div>
</div>
<script>
$(".searchButton").click(function() {
	if ($(".searchInput").val()=="") {
		alert("请输入要查询的商品")
	}else{
		var data=$(".searchInput").val().trim()
		//无空格情况--支持店铺查询和商品查询
		//店铺查询必须加上店关键字
		var shopName="",goodsName="";
		if (data.indexOf(" ")==-1) {
			//含有店字--说明此次检索为店铺
			if (data.indexOf("店")!=-1) {
					shopName=data.split("店")[0];
			}else {//否则检索为商品
					goodsName=data;
			}
		}			
		//有空格情况--最多支持商品名和店铺名一起查询
		if (data.indexOf(" ")!=-1) {
			var strArray=new Array();
			strArray=data.split(" ");
			shopName=strArray[0];//默认商品名
			goodsName=strArray[1];//默认店铺名
		}
		
		//处理完上述，下面进行页面数据加载--直接利用mainContent来装载数据
		 $
        .ajax({
            type: 'get',
            url: 'goodsSearchDetailPQServlet',
            async: false,
            data: {
                "shopName": shopName,
                "goodsName": goodsName
            },
            dataType: 'json',
            success: function (data) {
				//如果不是空数据--再进行数据装载
            	if (data!="") {
            		//首先进行div清空
                	$(".loadAjaxData").html("");
            		var strData;
            		strData="<div class='phoneDiv'>"
                	for (var i = 0; i < data.length; i++) {
                		//先进行数据组装--最后才进行数据写入
                		strData+="<div class='phoneDetail'><a href='detail.jsp?goodCode="+data[i]['goodCode']+"'><img src='"+data[i]['picture']+"' alt='图片' class='phoneImg' goodCode='"+data[i]['goodCode']+"'><br/><p class='price'>"+data[i]['price']+"</p><p class='phoneName' goodCode='"+data[i]['goodCode']+"' title='"+data[i]['name']+"'>"+data[i]['name']+"</p><p class='shopName'>"+data[i]['shopName']+"</a><b class='im-02' title='联系供应商进行咨询'></b></p></div>";
                	}
                	strData+="</div>";
                	console.log("strData: "+strData)
                	//数据组装完毕，下面开始数据装载
                	$(".loadAjaxData").html(strData);
				}
            }
        })
	}
})

//下面封装一个函数--点击分类里的a标签均进行本页检索操作
function getContent(aText) {
	 $
     .ajax({
         type: 'get',
         url: 'goodsSearchDetailPQServlet',
         async: false,
         data: {
             "shopName": "",
             "goodsName": aText
         },
         dataType: 'json',
         success: function (data) {
				//如果不是空数据--再进行数据装载
         	if (data!="") {
         		//首先进行div清空
             	$(".loadAjaxData").html("");
         		var strData;
         		strData="<div class='phoneDiv'>"
             	for (var i = 0; i < data.length; i++) {
             		//先进行数据组装--最后才进行数据写入
             		strData+="<div class='phoneDetail'><a href='detail.jsp?goodCode="+data[i]['goodCode']+"'><img src='"+data[i]['picture']+"' alt='图片' class='phoneImg' goodCode='"+data[i]['goodCode']+"'><br/><p class='price'>"+data[i]['price']+"</p><p class='phoneName' goodCode='"+data[i]['goodCode']+"' title='"+data[i]['name']+"'>"+data[i]['name']+"</p><p class='shopName'>"+data[i]['shopName']+"</a><b class='im-02' title='联系供应商进行咨询'></b></p></div>";
             	}
             	strData+="</div>";
             	console.log("strData: "+strData)
             	//数据组装完毕，下面开始数据装载
             	$(".loadAjaxData").html(strData);
				}
         }
     })
}

//热门推荐下的a标签被点击--则在本页进行数据加载
$(".left1 a").click(function() {
	getContent($(this).text())
})
//搜索框下推荐a标签被点击--亦在本页进行数据加载
$("#hotwords a").click(function() {
	getContent($(this).text())
})

//下面在页面进行跳转即将加载页面时获取页面中goodCode参数
$(function() {
	var goodCode=window.location.href.split("goodCode=")[1];
	//打印当前获取的goodCode
	//下面开始请求当前goodCode对应的商品详细信息-还应该包括评论comments
	if (goodCode!=null) {
		 $
	     .ajax({
	         type: 'get',
	         url: 'searchGoodsDeatilByGoodCodeServlet',
	         async: false,
	         data: {
	             "goodCode": goodCode
	         },
	         dataType: 'json',
	         success: function (data) {
					//如果不是空数据--再进行数据装载
	         	if (data!="") {
	         		//首先进行左侧div清空--进行图片填充
	             	$(".leftImgDiv").html("");
	             	$(".rightDetail").html("");
	             	$(".introduceDetailUl").html("");
	         		var strData,strGood,strDetail,timeToDiliery;
	         		timeToDilivery=(new Date().getHours+1>11)?"11:10后下单,预计明天送达":"11:10前下单,预计今天送达";
	         		//由于goodCode唯一--因此后台返回数据唯一，因此可不用for
	             		//先进行数据组装--最后才进行数据写入
	             	//注意，此处如果使用+=，在strData未定义的情况下，会在页面输出undefined+后面的内容
	             	strData="<div class='leftImg'><img src='"+data['picture']+"' alt=''></div><div class='method'><div class='left-btns'><a class='follow J-follow'  href='#none' clstag='shangpin|keycount|product|guanzhushangpin_1' style='margin-left: 100px'><i class='sprite-follow-sku'></i><em>关注</em></a><a class='share J-share' href='#none' clstag='shangpin|keycount|product|share_1' style='margin-left: 50px'><i class='sprite-share'></i><em>分享</em></a><a class='compare J-compare J_contrast'  href='#none' clstag='shangpin|keycount|product|jiaruduibi' style='margin-left: 50px'><i class='sprite-compare'></i><em>对比</em></a></div></div>";
	             	strGood="<div class='title'><p class='phoneTitle'>"+data['name']+"</p><p class='priceP'><i style='color: #ff3f6d'>点点</i>价：<span class='price'>"+data['price']+"</span></p><div class='discountState'><div class='discountL'>促 &nbsp; &nbsp;销:</div><div class='discountMethodR'><p>此价格不与套装优惠同时享受</p><p>满19元即赠热销商品，赠完即止</p><p>购买1件可优惠换购热销商品</p><p>由<i style='color: #ff3f6d'>点点</i> 发货, 并提供售后服务. "+timeToDilivery+"</p></div></div><div class='operation'><input class='text buy-num' onkeyup='setAmount.modify('#buy-num');' id='buy-num' value='1' data-max='200' style='margin-left: 50px;width: 30px'><button type='button' class='btn btn-danger btn-lg' style='margin-left: 30px'>加入购物车</button>&nbsp;&nbsp;<button type='button' class='btn btn-danger btn-lg' style='margin-left: 30px'>加入收藏夹</button></div></div>";
	             	strDetail="<li class='brand'>品牌:"+data['brand']+"</li><li class='model'>型号:"+data['model']+"</li><li class='fuselageColor'>机身颜色:"+data['fuselageColor']+"</li><li class='pixel'>像素:"+data['pixel']+"</li><li class='network'>网络："+data['network']+"</li><li class='screenSize'>屏幕参数："+data['screenSize']+"</li><li class='cpu'>CPU核数："+data['cpu']+"</li><li class='system'>操作系统："+data['system']+"</li><li class='fuselageMemory'>机身内存："+data['fuselageMemory']+"</li><li class='batteryCapacity'>电池容量："+data['batteryCapacity']+"</li><li class='runMemory'>运行内存："+data['runMemory']+"</li><li class='goodCode'>商品唯一码："+data['goodCode']+"</li>";
	             	console.log("strData: "+strData)
	             	console.log("strGood: "+strGood)
	             	console.log("strDetail: "+strDetail)
	             	//分类出加载出品牌
	             	$(".loadPhoneType").html(data['brand'])
	             	//分类处加载出店铺名
	             	$(".shopName").html(data['shopName'])
	             	//数据组装完毕，下面开始数据装载
	             	$(".leftImgDiv").html(strData);
	             	$(".rightDetail").html(strGood);
	             	$(".introduceDetailUl").html(strDetail);
					}
	         }
	     })
	}
})

//点击商品评论时加载商品评论的--评论人和评论邮箱
$(".commentsli").click(function() {
	var goodCode=window.location.href.split("goodCode=")[1];
	console.log("goodCode: "+goodCode)
	if (goodCode!=null) {
	 $
     .ajax({
         type: 'post',
         url: 'searchAllCommentsGoodsServlet',
         async: false,
         data: {
             "goodCode": goodCode
         },
         dataType: 'json',
         success: function (data) {
				//如果不是空数据--再进行数据装载
         	if (data!="") {
         		//首先进行左侧div清空--进行图片填充
             	$(".comments").html("");
         		var strData="";
         		for (var i = 0; i < data.length; i++) {
					strData+="<div class='commentsContentL'>会员"+data[i]['email']+"</div><div class='commentsContentR'>"+data[i]['commentsContent']+"</div>";
				}
             	console.log("strData: "+strData)
             	//加载评论
             	$(".comments").html("");
             	$(".comments").html(strData)
				}else{
					alert("777")
					alert("当前商品暂时无人评论！")
				}
         }
     })
	}
})
	
	  //下面提交评论操作
    $(".clickToComments")
        .click(
            function () {
            	<%if (session.getAttribute("loginer") != null) {%>
                //点击测试
                alert("1111111111111")
                //加载之前先进行清空
                $(".load").html("")
                //	加载修改密码框
                $(".load")
                    .append("<div class='changePS'><p class='changPLog'>------用户评论窗体------</p><div class='Comcontent'>用户邮箱: &nbsp; <input type='text'class='Old_name' readonly='readonly'><br><div class='leftCom'>评论内容:</div> <div class='rightCom'><textarea type='password'class='Old_password'></textarea></div><br><input type='submit'class='changSubmmit'value='提交评论'>&nbsp;<input type='submit'class='signOutC'value='退出评论'><br></div></div>").slideDown(2000);

                //在用户名中自动填充入当前登录用户并设置为read-only
                $(".Old_name").val('<%=session.getAttribute("email").toString()%>')

                //由于是页面已经加载出来的
                $(".changSubmmit")
                    .click(
                        function () {
                            if ($(".Old_password").val() == "") {
                                alert("输入的新密码不得为空！！！")
                            } else {
                                $
                                    .ajax({
                                        type: 'post',
                                        url: 'addCommentsServlet',
                                        async: false,
                                        dataType: 'json',
                                        data: {
                                        	"email":'<%=session.getAttribute("email").toString()%>',
                                        	"commentsContent":$("textare").val()
                                        },
                                        success: function (data) {
                                            if (data == "1") {//添加评论成功 
                                                $(
                                                    ".changePS")
                                                    .slideUp(
                                                        2000)//2秒上移
                                                //下面进行评论添加操作
         										var strData="";
												strData+="<div class='commentsContentL'>会员"+'<%=session.getAttribute("email").toString()%>'+"</div><div class='commentsContentR'>"+$("textare").val()+"</div>";
             									console.log("strData: "+strData)
             									//加载评论
             									$(".comments").append(strData)
                                            }
                                            if (data == "0") {//如果新密码与原密码一直，不做强制重新登录设置
                                                alert("添加评论失败")
                                                $(
                                                    ".changePS")
                                                    .slideUp(
                                                        2000)//2秒上移
                                            }
                                        }
                                    })
                            }
                        })
                        <%}else{
                        	out.println("alert('当前未登录，不允许评论！！！')");
                        }%>
            })
    $(document).delegate(".signOutC", "click", function () {
        $(".changePS").slideUp(2000)//2秒上移
    })
    
    //首先是加入购物车操作
    //默认每人只能买一个手机
    $(".addIntoShoppingCar").click(function() {
	//点击操作，可不进行安全校验
    	<%if (session.getAttribute("loginer") != null) {%>
		var goodCode=window.location.href.split("goodCode=")[1];
    	//点击测试
        alert("1111111111111")
                        $
                            .ajax({
                                type: 'post',
                                url: 'addGoodsIntoShoppingCarServlet',
                                async: false,
                                dataType: 'json',
                                data: {
									"goodCode":goodCode,                                	
                                	"email":'<%=session.getAttribute("email").toString()%>',
                                	"num":"1"//num数量默认为1
                                },
                                success: function (data) {
                                    //如果返回数据不为空，则予以提示
                                	if (data!="") {
										if (data=="777") {
											alert("对不起，添加商品失败，请重新添加！！！")
										}
										if (data=="666") {
											alert("恭喜您成功添加商品 "+goodCode+"到您的购物车！")
										}
									}
                                }
                            })
                    }
                })
                <%}else{
                	out.println("alert('当前未登录，不允许评论！！！')");
                }%>
	
	
	})
    
</script>
</body>
</html>
