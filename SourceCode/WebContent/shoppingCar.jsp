<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>购物车-电商网站</title>
    <link rel="stylesheet" type="text/css" href="css/jdCss.css">
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <link rel="shortcut icon" href="http://imollyunfei.top/images/i32.ico"/>
    <style>
        * {
            margin: 0px;
            padding: 0px;
            overflow-x: hidden;
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

        .mainContent {
            background-color: #ffe9e2;
            opacity: 0.9;
        }

        .shoppingCarContent{
            width: 80%;
            margin-left: 10%;
            margin-right: 10%;
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


        .left1Ul > li, .left2Ul > li, .left3Ul > li, .left4Ul > li {
            float: left;
            margin-left: 10px;
        }

        .title{
            width: 100%;
            height: 30px;
            background-color: #a5ffb4;
        }

        .chooseAll{
            float: left;
            width: 10%;
            margin-left: 1%;
            margin-right: 1%;
            height: 30px;
            background-color: #7cb4ff;
        }

        .goodsName{
            float: left;
            width: 33%;
            height: 30px;
            margin-left: 1%;
            margin-right: 1%;
            background-color: #7cb4ff;
        }

        .price{
            float: left;
            width: 10%;
            margin-left: 1%;
            margin-right: 1%;
            height: 30px;
            background-color: #7effcb;
        }

        .num{
            float: left;
            width: 10%;
            margin-left: 1%;
            margin-right: 1%;
            height: 30px;
            background-color: #d0ffa4;
        }

        .money{
            float: left;
            width: 10%;
            margin-left: 1%;
            margin-right: 1%;
            height: 30px;
            background-color: #ffb6c9;
        }

        .operation{
            float: left;
            width: 15%;
            margin-left: 1%;
            margin-right: 1%;
            height: 30px;
            background-color: #ffb3af;
        }


        .titleD{
            width: 100%;
            height: auto;
            background-color: #a5ffb4;
        }

        .chooseAllD{
            float: left;
            width: 10%;
            margin-left: 1%;
            margin-right: 1%;
            margin-top: 10px;
            margin-bottom: 10px;
            height: 150px;
            background-color: #7cb4ff;
        }

        .goodsNameD{
            float: left;
            width: 33%;
            height: 150px;
            margin-left: 1%;
            margin-right: 1%;
            margin-top: 10px;
            margin-bottom: 10px;
            background-color: #7cb4ff;
        }

        .priceD{
            float: left;
            width: 10%;
            margin-left: 1%;
            margin-right: 1%;
            margin-top: 10px;
            margin-bottom: 10px;
            height: 150px;
            background-color: #7effcb;
        }

        .numD{
            float: left;
            width: 10%;
            margin-left: 1%;
            margin-right: 1%;
            margin-top: 10px;
            margin-bottom: 10px;
            height: 150px;
            background-color: #d0ffa4;
        }

        .moneyD{
            float: left;
            width: 10%;
            margin-left: 1%;
            margin-right: 1%;
            margin-top: 10px;
            margin-bottom: 10px;
            height: 150px;
            background-color: #ffb6c9;
        }

        .operationD{
            float: left;
            width: 15%;
            margin-left: 1%;
            margin-right: 1%;
            margin-top: 10px;
            margin-bottom: 10px;
            height: 150px;
            background-color: #ffb3af;
        }


        .titleB{
            width: 100%;
            height: auto;
            background-color: #a5ffb4;
        }

        .chooseAllB{
            float: left;
            width: 10%;
            margin-left: 1%;
            margin-right: 1%;
            margin-top: 10px;
            margin-bottom: 10px;
            height: 50px;
            background-color: #7cb4ff;
        }

        .goodsNameB{
            float: left;
            width: 15%;
            height: 50px;
            margin-left: 1%;
            margin-right: 1%;
            margin-top: 10px;
            margin-bottom: 10px;
            background-color: #7cb4ff;
        }

        .priceB{
            float: left;
            width: 15%;
            margin-left: 1%;
            margin-right: 1%;
            margin-top: 10px;
            margin-bottom: 10px;
            height: 50px;
            background-color: #7effcb;
        }

        .numB{
            float: left;
            width: 15%;
            margin-left: 1%;
            margin-right: 1%;
            margin-top: 10px;
            margin-bottom: 10px;
            height: 50px;
            background-color: #d0ffa4;
        }

        .moneyB{
            float: left;
            width: 18%;
            margin-left: 1%;
            margin-right: 1%;
            margin-top: 10px;
            margin-bottom: 10px;
            height: 50px;
            background-color: #ffb6c9;
        }

        .operationB{
            float: left;
            width: 15%;
            margin-left: 1%;
            margin-right: 1%;
            margin-top: 10px;
            margin-bottom: 10px;
            height: 50px;
            background-color: #ffb3af;
        }





        .fourgnet {
            margin-top: 30px;
        }

        .fourgnet a:link, .left1Ul a:link, .left2Ul a:link, .left3Ul a:link, .left4Ul a:link {
            text-decoration: none;
            color: black;
        }

        .fourgnet a:visited, .left1Ul a:visited, .left2Ul a:visited, .left3Ul a:visited, .left4Ul a:visited {
            text-decoration: none;
            color: black;
        }

        .fourgnet a:hover, .left1Ul a:hover, .left2Ul a:hover, .left3Ul a:hover, .left4Ul a:hover {
            color: #ff6c97;
            text-decoration: none;
        }

        .fourgnet > li {
            float: left;
            margin-left: 5px;
            border: dotted 1px darkgrey;
        }

        .fore1 img {
            margin-left: 25px;
        }

        .fore2 img {
            margin-left: 25px;
        }

        .fore3 img {
            margin-left: 25px;
        }


        .mc > li {
            float: left;
            width: 20%;
            background-color: #96feff;
            display: block;
        }

        .mc > li img {
            width: 90%;
            height: 100%;
        }

        .leftoverflow li, .rightoverflow li {
            float: left;
            width: 33%;
            height: 50%;
            display: block;
            border: dotted 1px darkgrey;
            background-color: #beffc3;
        }

        .leftoverflow li a, .rightoverflow li a {
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            font-size: 14px;
            color: #333;
        }


        .leftoverflow li a:hover, .rightoverflow li a:hover, .leftoverflow li a:active, .rightoverflow li a:active, .p-price:hover {
            font-size: 14px;
            font-weight: 100;
            text-decoration: none;
            color: #ff4b8a;
        }

        <!--
        底部服务模块-- >
        #service-2017 {
            margin-left: 20%;
            margin-right: 20%;
            background-color: white;
        }

        .d{
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

    </style>
    <script src="js/jquery.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<script type="text/javascript">

    var china = new Object();
    china['北京市'] = new Array('北京市区', '北京市辖区');
    china['上海市'] = new Array('上海市区', '上海市辖区');
    china['天津市'] = new Array('天津市区', '天津市辖区');
    china['重庆市'] = new Array('重庆市区', '重庆市辖区');
    china['河北省'] = new Array('石家庄', '唐山市', '邯郸市', '秦皇市岛', '保市定', '张家市口', '承德市', '廊坊市', '沧州市', '衡水市', '邢台市');
    china['山西省'] = new Array('太原市', '大同市', '阳泉市', '长治市', '晋城市', '朔州市', '晋中市', '运城市', '忻州市', '临汾市', '吕梁市');
    china['辽宁省'] = new Array('沈阳市', '大连市', '鞍山市', '抚顺市', '本溪市', '丹东市', '锦州市', '营口市', '阜新市', '辽阳市', '盘锦市', '铁岭市', '朝阳市', '葫芦岛市');
    china['吉林省'] = new Array('长春市', '吉林市', '四平市', '辽源市', '通化市', '白山市', '松原市', '白城市', '延边州', '长白山管委会');
    china['黑龙江省'] = new Array('哈尔滨市', '齐齐哈尔市', '大庆市', '佳木斯市', '牡丹江市', '七台河市', '双鸭山市', '黑河市', '鸡西市', '伊春市', '绥化市', '鹤岗市', '加格达奇市');
    china['江苏省'] = new Array('南京市', '苏州市', '无锡市', '常州市', '南通市', '扬州市', '镇江市', '泰州市', '盐城市', '连云港市', '宿迁市', '淮安市', '徐州市');
    china['浙江省'] = new Array('杭州市', '宁波市', '温州市', '嘉兴市', '湖州市', '绍兴市', '金华市', '衢州市', '舟山市', '台州市', '丽水市');
    china['安徽省'] = new Array('合肥市', '芜湖市', '蚌埠市', '淮南市', '马鞍山市', '淮北市', '铜陵市', '安庆市', '黄山市', '滁州市', '阜阳市', '宿州市', '巢湖市', '六安市', '亳州市', '池州市', '宣城市');
    china['福建省'] = new Array('福州市', '厦门市', '莆田市', '三明市', '泉州市', '漳州市', '南平市', '龙岩市', '宁德市');
    china['江西省'] = new Array('南昌市', '景德镇市', '萍乡市', '九江市', '新余市', '鹰潭市', '赣州市', '吉安市', '宜春市', '抚州市', '上饶市');
    china['山东省'] = new Array('济南市', '青岛市', '淄博市', '枣庄市', '东营市', '烟台市', '潍坊市', '济宁市', '泰安市', '威海市', '日照市', '莱芜市', '临沂市', '德州市', '聊城市', '滨州市', '菏泽市');
    china['河南省'] = new Array('郑州市', '开封市', '洛阳市', '平顶山市', '安阳市', '鹤壁市', '新乡市', '焦作市', '濮阳市', '许昌市', '漯河市', '三门峡市', '南阳市', '商丘市', '信阳市', '周口市', '驻马店市');
    china['湖北省'] = new Array('武汉市', '黄石市', '十堰市', '荆州市', '宜昌市', '襄樊市', '鄂州市', '荆门市', '孝感市', '黄冈市', '咸宁市', '随州市');
    china['湖南省'] = new Array('长沙市', '株洲市', '湘潭市', '衡阳市', '邵阳市', '岳阳市', '常德市', '张家界市', '益阳市', '郴州市', '永州市', '怀化市', '娄底市');
    china['广东省'] = new Array('广州市', '深圳市', '珠海市', '汕头市', '韶关市', '佛山市', '江门市', '湛江市', '茂名市', '肇庆市', '惠州市', '梅州市', '汕尾市', '河源市', '阳江市', '清远市', '东莞市', '中山市', '潮州市', '揭阳市', '云浮市');
    china['海南省'] = new Array('文昌市', '琼海市', '万宁市', '五指山市', '东方市', '儋州市');
    china['四川省 '] = new Array('成都市', '自贡市', '攀枝花市', '泸州市', '德阳市', '绵阳市', '广元市', '遂宁市', '内江市', '乐山市', '南充市', '眉山市', '宜宾市', '广安市', '达州市', '雅安市', '巴中市', '资阳市');
    china['贵州省'] = new Array('贵阳市', '六盘水市', '遵义市', '安顺市');
    china['云南省'] = new Array('昆明市', '曲靖市', '玉溪市', '保山市', '昭通市', '丽江市', '普洱市', '临沧市');
    china['陕西省'] = new Array('西安市', '铜川市', '宝鸡市', '咸阳市', '渭南市', '延安市', '汉中市', '榆林市', '安康市', '商洛市');
    china['甘肃省'] = new Array('兰州市', '金昌市', '白银市', '天水市', '嘉峪关市', '武威市', '张掖市', '平凉市', '酒泉市', '庆阳市', '定西市', '陇南市');
    china['青海省'] = new Array('西宁市');
    china['台湾省'] = new Array('台北市', '高雄市', '基隆市', '台中市', '台南市', '新竹市', '嘉义市');
    china['广西壮族自治区'] = new Array('南宁市', '柳州市', '桂林市', '梧州市', '北海市', '防城港市', '钦州市', '贵港市', '玉林市', '百色市', '贺州市', '河池市', '来宾市', '崇左市');
    china['内蒙古自治区'] = new Array('呼和浩特市', '包头市', '乌海市', '赤峰市', '通辽市', '鄂尔多斯市', '呼伦贝尔市', '巴彦淖尔市', '乌兰察布市');
    china['西藏自治区'] = new Array('拉萨市');
    china['宁夏回族自治区'] = new Array('银川市', '石嘴山市', '吴忠市', '固原市', '中卫市');
    china['新疆维吾尔自治区'] = new Array('乌鲁木齐市', '克拉玛依市');
    china['香港特别行政区'] = new Array('台北市', '高雄市', '基隆市', '台中市', '台南市', '新竹市', '嘉义市');
    function chinaChange(province, city) {
        var pv, cv;
        var i, ii;
        pv = province.value;
        cv = city.value;
        city.length = 1;
        if (pv == '0') return;
        if (typeof (china[pv]) == 'undefined') return;


        for (i = 0; i < china[pv].length; i++) {
            ii = i + 1;

            city.options[ii] = new Option();
            city.options[ii].text = china[pv][i];
            city.options[ii].value = china[pv][i];
        }
        city.options[0].text = "请选择市区";

    };
</script>
<script>

</script>
<body>
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
        <span><a href="login.jsp">你好,请登录 &nbsp;</a></span>
        <span><a href="regist.jsp">免费注册 &nbsp;</a></span>
        <span><a href="order.jsp">我的订单</a></span>
    </div>

</div>

<div class="mainContent">
    <!--navbar导航部分-->
    <div class="navbar">
        <div class="leftIco">
            <img src="image/timg.jpg" height="80" width="100"
                 style="margin-top: 20px;margin-bottom: 20px;margin-left: 20px"/><span
                style="font-size: 30px;font-family: 'Microsoft YaHei UI';font-weight: 800;color: #333333">购物车</span>
        </div>
        <div class="rightSearch">
            <div class="input-group input-group-lg">
                <input type="text" class="form-control" placeholder="华为|小米|苹果">
                <span class="input-group-btn">
        <button class="btn btn-primary searchButton" type="button">搜索</button>
      </span>
            </div>
            <div id="hotwords"><a data-id="7320" data-position-id="2" href="//sale.jd.com/act/8yaD0qZuE6VFk.html"
                                  target="_blank">iPhone</a><a data-id="4985" data-position-id="3"
                                                               href="//huawei.jd.com/" target="_blank">华为</a><a
                    data-id="4733" data-position-id="4" href="//mall.jd.com/index-1000000904.html"
                    target="_blank">荣耀</a><a data-id="6398" data-position-id="5"
                                             href="//sale.jd.com/act/BClHxZN1mRrb5P.html" target="_blank">小米</a><a
                    data-id="5404" data-position-id="6" href="//mall.jd.com/index-1000001947.html"
                    target="_blank">一加6</a><a data-id="6160" data-position-id="7"
                                              href="//sale.jd.com/act/YwJvQOrbPKaLE2.html" target="_blank">vivo</a><a
                    data-id="5403" data-position-id="8" href="//mall.jd.com/index-1000004065.html"
                    target="_blank">OPPO</a><a data-id="8233" data-position-id="9"
                                               href="//mall.jd.com/index-1000001956.html" target="_blank">锤子</a></div>
        </div>
        <div class="rightShoppingCar">
            <button type="button" class="btn btn-success bt-lg"
                    style="margin-top: 30px;margin-left: 50px;margin-bottom: 30px;background-color: #06ff88"><a
                    href="order.jsp"	
                    style="text-decoration: none;color: white;font-family: 'Microsoft YaHei UI';font-size: 20px;">
                <i class="iconfont">&#xe607;</i>
                <i class="iconfont arrow">&#xe601;</i>
                我 的 订 单</a>
            </button>
        </div>
    </div>

    <!--购物车主体模块-->
    <div class="shoppingCarContent">
        <!--购物车商品列表-->
            <!--列表顶栏设计-->
        <div class="title">
            <div class="chooseAll"><div class="des" style="text-align: center;margin-top: 5px;overflow-y: hidden">
                <input p-type="6818156_13" manfanzeng="0" type="checkbox" name="checkItem" value="6818156_13_224061885" class="jdcheckbox" data-bind="cbid" clstag="clickcart|keycount|xincart|cart_checkOn_sku" style="margin-top: 2px">
                全选</div></div>
            <div class="goodsName"><div class="des" style="text-align: center;margin-top: 5px;overflow-y: hidden">商品</div></div>
            <div class="price"><div class="des" style="text-align: center;margin-top: 5px;overflow-y: hidden">单价</div></div>
            <div class="num"><div class="des" style="text-align: center;margin-top: 5px;overflow-y: hidden">数量</div></div>
            <div class="money"><div class="des" style="text-align: center;margin-top: 5px;overflow-y: hidden">小计</div></div>
            <div class="operation"><div class="des" style="text-align: center;margin-top: 5px;overflow-y: hidden">操作</div></div>
        </div>


        <div class="loadAjaxData">
        <!--列表详情item设计-->
        <div class="titleD">
            <hr style="margin-top: 10px;margin-bottom: 2px">
            <p class="des" style="font-size: 15px;font-family: 'Microsoft YaHei UI';font-weight: 400;margin-bottom: 0px;"><i style="color: #ff3f70;margin-left: 20px;font-weight: 800;">换购</i>  购满1件，即可享受换购优惠 > <a href="#" style="text-decoration: none">立即换购</a> ></p>
            <hr style="margin-top: 10px;margin-bottom: 2px">
            <div class="chooseAllD"><div class="des" style="text-align: center;margin-top: 5px;overflow-y: hidden"><img
                    src="image/1.jpg" style="width: 90%;height: 100px"><br><br>
                <input p-type="6818156_13" manfanzeng="0" type="checkbox" name="checkItem" value="6818156_13_224061885" class="jdcheckbox" data-bind="cbid" clstag="clickcart|keycount|xincart|cart_checkOn_sku">
            </div></div>
            <div class="goodsNameD"><div class="des" style="text-align: center;margin-top: 5px;overflow-y: hidden">
                <p style="text-align: left;margin-left: 5px;margin-right: 5px;margin-top: 30px">小米(MI)15.6英寸轻薄窄边框游戏笔记本电脑（i7标压 16G</p>
                <i style="color: #ff4876">*.支持7天无理由退货.*</i>
            </div></div>
            <div class="priceD"><div class="des" style="text-align: center;margin-top: 5px;overflow-y: hidden">
                <p style="margin-left: 5px;margin-right: 5px;margin-top: 50px;color: #ff352b;font-size: 20px">¥8999.00</p>
            </div></div>
            <div class="numD"><div class="des" style="text-align: center;margin-top: 5px;overflow-y: hidden">
                <p style="margin-left: 5px;margin-right: 5px;margin-top: 55px">数量</p>
            </div></div>
            <div class="moneyD"><div class="des" style="text-align: center;margin-top: 5px;overflow-y: hidden">
                <p style="margin-left: 5px;margin-right: 5px;margin-top: 50px;color: #ff352b;font-size: 20px">¥18999.00</p>
            </div></div>
            <div class="operationD" style="overflow: hidden"><div class="des" style="text-align: center;margin-top: 5px;overflow-y: hidden">
                <p style="margin-left: 5px;margin-right: 5px;margin-top: 10px;color: #ff352b;"><button type="button" class="btn btn-primary delete">删除</button></p>
                <p style="margin-left: 5px;margin-right: 5px;margin-top: 5px;color: #ff352b;"><button type="button" class="btn btn-success toOrder">生成订单</button></p>
                <p style="margin-left: 5px;margin-right: 5px;margin-top: 5px;color: #ff352b;"><button type="button" class="btn btn-info addToFavorite">加入收藏夹</button></p>
            </div></div>
        </div>
		</div>
		
        <!--商品结算下栏-->
        <div class="titleB">
            <div class="chooseAllB"><div class="des" style="text-align: center;margin-top: 15px;overflow-y: hidden">
                <input p-type="6818156_13" manfanzeng="0" type="checkbox" name="checkItem" value="6818156_13_224061885" class="jdcheckbox" data-bind="cbid" clstag="clickcart|keycount|xincart|cart_checkOn_sku" style="margin-top: 2px">
                全选</div></div>
            <div class="goodsNameB"><div class="des" style="text-align: center;margin-top: 15px;overflow-y: hidden">
                <a href="#" style="text-decoration: none">删除选中的商品</a>
            </div></div>
            <div class="priceB"><div class="des" style="text-align: center;margin-top: 15px;overflow-y: hidden">
                <a href="#" style="text-decoration: none">移到我的收藏夹</a>
            </div></div>
            <div class="numB"><div class="des" style="text-align: center;margin-top: 15px;overflow-y: hidden">
                <a href="#" style="text-decoration: none">清空购物车</a>
            </div></div>
            <div class="moneyB"><div class="des" style="text-align: center;margin-top: 5px;overflow-y: hidden">
                <p style="margin-left: 5px;margin-right: 5px;margin-top: 5px;color: #ff352b;font-size: 20px">总计¥8999.00</p>
            </div></div>
            <div class="operationB" style="overflow: hidden"><div class="des" style="text-align: center;margin-top: 5px;overflow-y: hidden">
                <p style="margin-left: 5px;margin-right: 5px;margin-top: 3px;color: #ff352b;font-size: 20px"><button type="button" class="btn btn-danger check"> 去 结 算 </button></p>
            </div></div>
        </div>
    </div>

</div>

</div>

<!--Service 服务模块-->
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


<!--底部栏-->
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
	//页面在加载时进行购物车商品列表
	$(function() {
		//首先判断用户是否登录，如果没有登录则跳转至主页
		<%if (session.getAttribute("email") != null) {%>
		//逻辑交给后台来做
		 $
         .ajax({
             type: 'get',
             url: 'searchDiscountGoodsServlet',
             async: false,
             data: {
            	 "email":<%if (session.getAttribute("email") != null) { out.println("");}else{out.println(session.getAttribute("email").toString());}%>,
             },
             dataType: 'json',
             success: function (data) {
					//如果不是空数据--再进行数据装载
             	if (data!="") {
             		//如果返回FLAG为777，则进行跳转至main.jsp
             		if (data=="777") {
						window.location.href="main.jsp";
					}else {//否则的话进行页面数据装载
						//首先进行DIV载体清空
						$(".loadAjaxData").html("")
						var strData="";
						for (var i = 0; i < data.length; i++) {
							str+="<div class='titleD'><hr style='margin-top: 10px;margin-bottom: 2px'><p class='des' style='font-size: 15px;font-family: 'Microsoft YaHei UI';font-weight: 400;margin-bottom: 0px;'><i style='color: #ff3f70;margin-left: 20px;font-weight: 800;'>换购</i>  购满1件，即可享受换购优惠 ><a href='#' style='text-decoration: none'>立即换购</a> ></p><hr style='margin-top: 10px;margin-bottom: 2px'><div class='chooseAllD'><div class='des' style='text-align: center;margin-top: 5px;overflow-y: hidden'><img   src='"+data[i]['picture']+"' style='width: 90%;height: 100px'><br><br><input p-type='6818156_13' manfanzeng='0' type='checkbox' name='checkItem' value='6818156_13_224061885' class='jdcheckbox' data-bind='cbid' clstag='clickcart|keycount|xincart|cart_checkOn_sku'></div></div><div class='goodsNameD'><div class='des' style='text-align: center;margin-top: 5px;overflow-y: hidden'><p style='text-align: left;margin-left: 5px;margin-right: 5px;margin-top: 30px'>"+data[i]['name']+"</p><i style='color: #ff4876'>*.支持7天无理由退货.*</i></div></div><div class='priceD'><div class='des' style='text-align: center;margin-top: 5px;overflow-y: hidden'><p style='margin-left: 5px;margin-right: 5px;margin-top: 50px;color: #ff352b;font-size: 20px'>"+data[i]['price']+"</p></div></div><div class='numD'><div class='des' style='text-align: center;margin-top: 5px;overflow-y: hidden'><p style='margin-left: 5px;margin-right: 5px;margin-top: 55px'>"+data[i]['num']+"</p></div></div><div class='moneyD'><div class='des' style='text-align: center;margin-top: 5px;overflow-y: hidden'><p style='margin-left: 5px;margin-right: 5px;margin-top: 50px;color: #ff352b;font-size: 20px'>"+parseFloat(data[i]['price'].split('¥')[1])*parseInt(data[i]['num'])+"</p></div></div><div class='operationD' style='overflow: hidden'><div class='des' style='text-align: center;margin-top: 5px;overflow-y: hidden'><p style='margin-left: 5px;margin-right: 5px;margin-top: 10px;color: #ff352b;'><button type='button' class='btn btn-primary delete'>删除</button></p><p style='margin-left: 5px;margin-right: 5px;margin-top: 5px;color: #ff352b;'><button type='button' class='btn btn-success toOrder'>生成订单</button></p><p style='margin-left: 5px;margin-right: 5px;margin-top: 5px;color: #ff352b;'><button type='button' class='btn btn-info addToFavorite'>加入收藏夹</button></p></div></div></div>";
						}
						console.log("strData: "+strData)
						//数据组装完毕，下面开始数据装载
	                 	$(".loadAjaxData").html(strData)
					}
					}
             }
         })
         <%}else{
         	out.println("window.location.href='main.jsp';alert('当前未登录，不允许购物车操作！！！');");
         }%>
	})
	</script>
</body>
</html>