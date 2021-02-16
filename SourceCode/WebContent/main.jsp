<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	//if (session.getAttribute("user") == null) {
	//	response.sendRedirect("login.jsp");
	//}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DD.com-点我喜欢</title>
    <link rel="stylesheet" type="text/css" href="css/jdCss.css">
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <link rel="shortcut icon" href="http://imollyunfei.top/images/i32.ico"/>
    <style>
        * {
            margin: 0px;
            padding: 0px;
            overflow-x: hidden;
        }
		
		a:hover{
			text-decoration: none;
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

        .mainContent {
            margin-top: 30px;
            margin-bottom: 30px;
            background-color: #ffe9e2;
            opacity: 0.9;
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

        .rightCF01, .rightCF02, .rightCF02, .rightCF03, .rightCF04, .rightCF05, .rightCF06, .rightCF07, .rightCF08, .rightCF09, .rightCF10 {
            float: left;
            width: 7%;
            height: 30px;
            margin-left: 1%;
            background-color: white;
        }

        .leftFL {
            float: left;
            width: 20%;
            height: 500px;
        }

        .left1 {
            height: 20%;
            background-color: white;
            overflow-y: hidden;
        }

        .left2 {
            height: 20%;
            background-color: white;
            overflow-y: hidden;
        }

        .left3 {
            height: 20%;
            background-color: white;
            overflow-y: hidden;
        }

        .left4 {
            height: 20%;
            background-color: white;
            overflow-y: hidden;
        }

        .left5 {
            height: 20%;
            background-color: white;
        }

        .left1Ul, .left2Ul, .left3Ul, .left4Ul {
            margin-bottom: 10px;
            overflow-y: hidden;
        }

        .left1Ul > li, .left2Ul > li, .left3Ul > li, .left4Ul > li {
            float: left;
            margin-left: 10px;
        }

        .fourgnet {
            margin-top: 30px;
            overflow: hidden;
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

        .fl {
            margin-left: 10px;
            margin-top: 5px;
            font-size: 20px;
            font-family: Consolas;
            font-weight: 800;
        }

        .rightLB {
            float: left;
            width: 80%;
            height: 500px;
            background-color: white;
        }

        .carousel-inner img {
            width: 100%;
            height: 100%;
        }

        .grid {
            width: 80%;
            height: 300px;
            margin-top: 50px;
            overflow: hidden;
        }

        .grid1 {
            myCarouselfloat: left;
            width: 20%;
            height: 300px;
            background-color: #b7ffbb;
        }

        .grid2 {
            float: left;
            width: 20%;
            height: 300px;
            background-color: #ebff9e;
        }

        .grid3 {
            float: left;
            width: 20%;
            height: 300px;
            background-color: #ffcac2;
        }

        .grid4 {
            float: left;
            width: 20%;
            height: 300px;
            background-color: #e8abff;
        }

        .grid5 {
            float: left;
            width: 20%;
            height: 300px;
            background-color: #9ee7ff;
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

        .content {
            overflow: hidden;
        }

        .contentL {
            float: left;
            width: 50%;
            height: 400px;
            margin-bottom: 10px;
            overflow: hidden;
        }

        .contentR {
            float: left;
            width: 50%;
            height: 400px;
            margin-bottom: 10px;
            overflow: hidden;
        }

        .spanL {
            float: left;
            width: 50%;
            height: 50px;
            font-size: 30px;
            font-family: "Microsoft YaHei UI";
            font-weight: 800;
            margin-top: 5px;
        }

        .spanR {
            float: left;
            width: 50%;
            height: 50px;
            font-size: 30px;
            font-family: "Microsoft YaHei UI";
            font-weight: 800;
            margin-top: 5px;
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

        .p-price {
            color: #ff2a58;
        }

        .leftoverflow li a:hover, .rightoverflow li a:hover, .leftoverflow li a:active, .rightoverflow li a:active, .p-price:hover {
            font-size: 14px;
            font-weight: 100;
            text-decoration: none;
            color: #ff4b8a;
        }

        .upL1 {
            float: left;
            width: 33%;
            height: 40%;
            background-color: #77ff6f;
        }

        .upL2 {
            float: left;
            width: 33%;
            height: 40%;
            background-color: #ff97bc;
        }

        .upL3 {
            float: left;
            width: 33%;
            height: 40%;
            background-color: #7a57ff;
        }

        .downL1 {
            float: left;
            width: 33%;
            height: 40%;
            background-color: #63cfff;
        }

        .downL2 {
            float: left;
            width: 33%;
            height: 40%;
            background-color: #ff9b36;
        }

        .downL3 {
            float: left;
            width: 33%;
            height: 40%;
            background-color: #34ff42;
        }

        .upR1 {
            float: left;
            width: 33%;
            height: 40%;
            background-color: #2fc3ff;
        }

        .upR2 {
            float: left;
            width: 33%;
            height: 40%;
            background-color: #cc6bff;
        }

        .upR3 {
            float: left;
            width: 33%;
            height: 40%;
            background-color: #ff8fbc;
        }

        .downR1 {
            float: left;
            width: 33%;
            height: 40%;
            background-color: #59ffbe;
        }

        .downR2 {
            float: left;
            width: 33%;
            height: 40%;
            background-color: #cd3dff;
        }

        .downR3 {
            float: left;
            width: 33%;
            height: 40%;
            background-color: #ff3624;
        }

        .contentB {
            width: 100%;
            height: 20%;
            background-color: #fae8ff;
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

        #service-2017{
            height: 290px;
            background-color: white;
        }
        .slogen{
            height: 60px;
        }
        .wrap dt{
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
            <a href="main.jsp">
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
    <!--左侧分类，右侧轮播图-->
    <div class="detail">
        <div class="leftFL">

            <div class="left1">
                <p class="fl">热门推荐</p>
                <div class="clear"></div>
                <div>
                    <ul class="left1Ul">
                        <li class="flContent"><a href="#">iPhone</a></li>
                        <li class="flContent"><a href="#">荣耀</a></li>
                        <li class="flContent"><a href="#">小米</a></li>
                    </ul>
                    <ul class="left1Ul">
                        <li class="flContent"><a href="#">华为</a></li>
                        <li class="flContent"><a href="#">vivo</a></li>
                        <li class="flContent"><a href="#">OPPO</a></li>
                    </ul>
                </div>
            </div>

            <div class="left2">
                <p class="fl">热门分类</p>
                <div class="clear"></div>
                <div>
                    <ul class="left2Ul">
                        <li class="flContent"><a href="#">全部</a></li>
                        <li class="flContent"><a href="#">游戏</a></li>
                        <li class="flContent"><a href="#">老人</a></li>
                    </ul>
                    <ul class="left2Ul">
                        <li class="flContent"><a href="#">拍照</a></li>
                        <li class="flContent"><a href="#">全面</a></li>
                        <li class="flContent"><a href="#">女性</a></li>
                    </ul>
                </div>
            </div>

            <div class="left3">
                <p class="fl">运营商</p>
                <div class="clear"></div>
                <div>
                    <ul class="left3Ul">
                        <li class="flContent"><a href="#">营业厅</a></li>
                        <li class="flContent"><a href="#">选号码</a></li>
                        <li class="flContent"><a href="#">4G套餐</a></li>
                    </ul>
                    <ul class="left3Ul">
                        <li class="flContent"><a href="#">买手机</a></li>
                        <li class="flContent"><a href="#">装宽带</a></li>
                        <li class="flContent"><a href="#">充话费</a></li>
                    </ul>
                </div>
            </div>

            <div class="left4">
                <p class="fl">手机配件</p>
                <div class="clear"></div>
                <div>
                    <ul class="left4Ul">
                        <li class="flContent"><a href="#">充电宝</a></li>
                        <li class="flContent"><a href="#">数据线</a></li>
                        <li class="flContent"><a href="#">手机壳</a></li>
                    </ul>
                    <ul class="left4Ul">
                        <li class="flContent"><a href="#">手机膜</a></li>
                        <li class="flContent"><a href="#">手机架</a></li>
                        <li class="flContent"><a href="#">潮周边</a></li>
                    </ul>
                </div>
            </div>

            <div class="left5">
                <ul class="fourgnet">
                    <li class="fore1" clstag="channel|keycount|4118|4_package_0">
                        <a href="https://chongzhi.jd.com/"  >
                            <em class="4gimg"><img
                                    src="//img12.360buyimg.com/cms/jfs/t9892/288/1940911762/1181/9002599d/59eaf2d3N0761c4ad.png"
                                    width="20" height="28"></em><br>
                            <span class="fourgname">充值中心</span>
                        </a>
                    </li>
                    <li class="fore2" clstag="channel|keycount|4118|4_package_1">
                        <a href="https://list.jd.com/list.html?cat=9987,12854,12856"  >
                            <em class="4gimg"><img
                                    src="//img10.360buyimg.com/cms/jfs/t10711/7/1962570741/2048/40566f0e/59eaf345N97426122.png"
                                    width="20" height="28"></em>
                            <br>
                            <span class="fourgname">手机维修</span>
                        </a>
                    </li>
                    <li class="fore3" clstag="channel|keycount|4118|4_package_2">
                        <a href="https://huishou.jd.com/cat?cat1=36&amp;cat2=37&amp;"  >
                            <em class="4gimg"><img
                                    src="//img12.360buyimg.com/cms/jfs/t7222/52/3962732926/1609/1240ad3/59eaf362Ndc9c1f55.png"
                                    width="20" height="28"></em><br>
                            <span class="fourgname">二手回收</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="rightLB">
            <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                    <li data-target="#myCarousel" data-slide-to	="4"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active" onclick="javascript:getContent('iPhone')">
                        <img src="image/1.jpg" alt="First slide" style="height: 500px">
                        <div class="carousel-caption">iPhone</div>
                    </div>
                    <div class="item" onclick="javascript:getContent('锤子')">
                        <img src="image/2.jpg" alt="Second slide" style="height: 500px">
                        <div class="carousel-caption">锤子</div>
                    </div>
                    <div class="item" onclick="javascript:getContent('华为')">
                        <img src="image/3.jpg" alt="Third slide" style="height: 500px">
                        <div class="carousel-caption">华为</div>
                    </div>
                    <div class="item" onclick="javascript:getContent('荣耀')">
                        <img src="image/4.jpg" alt="Third slide" style="height: 500px">
                        <div class="carousel-caption">荣耀</div>
                    </div>
                    <div class="item" onclick="javascript:getContent('三星')">
                        <img src="image/5.jpg" alt="Third slide" style="height: 500px">
                        <div class="carousel-caption">三星</div>
                    </div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"
                   style="font-size: 150px;">
                    <span style="position:relative;top:150px;margin-top: 150px"> <</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"
                   style="font-size: 150px;">
                    <span style="position:relative;top: 150px;margin-top: 150px"> ></span>
                </a>
            </div>
        </div>
    </div>


    <!--下面是一个动态五维栅格-->
    <div class="grid">
        <!--<div class="grid1"></div>-->
        <!--<div class="grid2"></div>-->
        <!--<div class="grid3"></div>-->
        <!--<div class="grid4"></div>-->
        <!--<div class="grid5"></div>-->
        <ul class="mc">
            <li class="p-item fore0" clstag="channel|keycount|4118|6_item_0" onclick="javascript:getContent('荣耀')">
                <a href="#"  >
                    <div class="p-name">有新机</div>
                    <div class="p-sub">荣耀Note10 新品</div>
                    <div class="p-go">GO</div>
                    <div class="p-img"><img width="270" height="270"
                                            src="//img12.360buyimg.com/cms/jfs/t23335/231/1317307415/33623/18c99bcc/5b5ac24aN490aadb1.png!q95.png">
                    </div>
                </a>
            </li>

            <li class="p-item fore1 current" clstag="channel|keycount|4118|6_item_1" onclick="javascript:getContent('黑鲨')">
                <a href="#"  >
                    <div class="p-name">游戏手机</div>
                    <div class="p-sub">黑鲨白条3期免息</div>
                    <div class="p-go">GO</div>
                    <div class="p-img"><img width="270" height="270"
                                            src="//img11.360buyimg.com/cms/jfs/t24052/168/865050014/45861/5c1664aa/5b46b3d1Nae38eb73.png!q95.png">
                    </div>
                </a>
            </li>

            <li class="p-item fore2" clstag="channel|keycount|4118|6_item_2" onclick="javascript:getContent('小米')">
                <a href="#"  >
                    <div class="p-name">手机好店</div>
                    <div class="p-sub">小米8新品上市</div>
                    <div class="p-go">GO</div>
                    <div class="p-img"><img width="270" height="270"
                                            src="//img10.360buyimg.com/cms/jfs/t21340/168/1507041892/65889/975abf35/5b2b4723N7bfc284e.png!q95.png">
                    </div>
                </a>
            </li>

            <li class="p-item fore3" clstag="channel|keycount|4118|6_item_3" onclick="window.location.href='http://imollyunfei.top/mv/'">
                <a href="#"  >
                    <div class="p-name">京东网厅</div>
                    <div class="p-sub">1元800M送咪咕视频会员</div>
                    <div class="p-go">GO</div>
                    <div class="p-img"><img width="270" height="270"
                                            src="//img13.360buyimg.com/cms/jfs/t20095/163/537086389/54140/8fdddb13/5afb9f9aN6adde35b.png!q95.png">
                    </div>
                </a>
            </li>

            <li class="p-item fore4" clstag="channel|keycount|4118|6_item_4" onclick="javascript:getContent('小米')">
                <a href="#"  >
                    <div class="p-name">手机配件</div>
                    <div class="p-sub">领券满69减10</div>
                    <div class="p-go">GO</div>
                    <div class="p-img"><img width="270" height="270"
                                            src="//img14.360buyimg.com/cms/jfs/t21754/298/2070740004/83836/62056c2f/5b46aab3Nccd58e7e.png!q95.png">
                    </div>
                </a>
            </li>

        </ul>
    </div>


    <!--下面是左边热门推荐，右边新品推荐-->
    <div class="content">
        <div class="contentL">
            <div><span class="spanL">热卖商品</span></div>
            <!--<div class="clear"></div>-->
            <!--<div class="upL1"></div>-->
            <!--<div class="upL2"></div>-->
            <!--<div class="upL3"></div>-->
            <!--<div class="downL1"></div>-->
            <!--<div class="downL2"></div>-->
            <!--<div class="downL3"></div>-->
            <div class="leftcon">
                <div class="leftoverflow" data-id="03177470" style="left: 0px;">
                    <ul class="c-list" data-price-area="done">
                        <li class="list-item" clstag="channel|keycount|4118|theme_left_2_12">
                            <div class="p-img"><a href="//item.jd.com/6949473.html"  ><img width="100"
                                                                                                         height="100"
                                                                                                         src="//img12.360buyimg.com/n4/jfs/t18133/192/1095155734/179245/ec830987/5ab9e731N00c4ee03.jpg!q95.jpg"></a>
                            </div>
                            <a class="p-name" href="//item.jd.com/6949473.html"  
                               title="小米MIX2S 全面屏游戏手机 6GB+64GB 白色 全网通4G 陶瓷手机">小米MIX2S 全面屏游戏手机 6GB+64GB 白色 全网通4G 陶瓷手机</a>
                            <div class="p-price" data-price-id="6949473">¥3099.00</div>
                        </li>

                        <li class="list-item" clstag="channel|keycount|4118|theme_left_2_13">
                            <div class="p-img"><a href="//item.jd.com/7119306.html"  ><img width="100"
                                                                                                         height="100"
                                                                                                         src="//img13.360buyimg.com/n4/jfs/t16615/249/1989188906/176465/f82f1b6e/5ae42bfbN27b3d130.jpg!q95.jpg"></a>
                            </div>
                            <a class="p-name" href="//item.jd.com/7119306.html"  
                               title="360手机 N7 全网通 6GB+64GB 石墨黑 移动联通电信4G手机 双卡双待 全面屏 游戏手机">360手机 N7 全网通 6GB+64GB 石墨黑
                                移动联通电信4G手机 双卡双待 全面屏 游戏手机</a>
                            <div class="p-price" data-price-id="7119306">¥1699.00</div>
                        </li>

                        <li class="list-item" clstag="channel|keycount|4118|theme_left_2_14">
                            <div class="p-img"><a href="//item.jd.com/7633417.html"  ><img width="100"
                                                                                                         height="100"
                                                                                                         src="//img14.360buyimg.com/n4/jfs/t19732/312/2609842665/67556/c727387e/5afcf1a7Nceeff05d.jpg!q95.jpg"></a>
                            </div>
                            <a class="p-name" href="//item.jd.com/7633417.html"  
                               title="三星 Galaxy S 轻奢版（SM-G8750）4GB+64GB 勃艮第红 移动联通电信4G手机 双卡双待">三星 Galaxy S
                                轻奢版（SM-G8750）4GB+64GB 勃艮第红 移动联通电信4G手机 双卡双待</a>
                            <div class="p-price" data-price-id="7633417">¥3299.00</div>
                        </li>

                        <li class="list-item" clstag="channel|keycount|4118|theme_left_2_15">
                            <div class="p-img"><a href="//item.jd.com/7012230.html"  ><img width="100"
                                                                                                         height="100"
                                                                                                         src="//img10.360buyimg.com/n4/jfs/t16669/6/1882132405/219974/26d54059/5adc785fNa6b4c81e.jpg!q95.jpg"></a>
                            </div>
                            <a class="p-name" href="//item.jd.com/7012230.html"  
                               title="魅族 15 全面屏手机 全网通公开版 4GB+64GB 砚黑 移动联通电信4G手机 双卡双待">魅族 15 全面屏手机 全网通公开版 4GB+64GB 砚黑
                                移动联通电信4G手机 双卡双待</a>
                            <div class="p-price" data-price-id="7012230">¥2499.00</div>
                        </li>

                        <li class="list-item" clstag="channel|keycount|4118|theme_left_2_16">
                            <div class="p-img"><a href="//item.jd.com/6560164.html"  ><img width="100"
                                                                                                         height="100"
                                                                                                         src="//img11.360buyimg.com/n4/jfs/t16861/281/896313999/197700/b290ad58/5ab1d91cN5efcb0bf.jpg!q95.jpg"></a>
                            </div>
                            <a class="p-name" href="//item.jd.com/6560164.html"  
                               title="OPPO R15 梦镜版 全面屏双摄拍照手机 6G+128G 梦镜红 全网通 移动联通电信4G 双卡双待手机">OPPO R15 梦镜版 全面屏双摄拍照手机
                                6G+128G
                                梦镜红 全网通 移动联通电信4G 双卡双待手机</a>
                            <div class="p-price" data-price-id="6560164">¥2999.00</div>
                        </li>

                        <li class="list-item" clstag="channel|keycount|4118|theme_left_2_17">
                            <div class="p-img"><a href="//item.jd.com/6708229.html"  ><img width="100"
                                                                                                         height="100"
                                                                                                         src="//img12.360buyimg.com/n4/jfs/t18490/42/900000491/171807/81574410/5aaf074fNadb7038d.jpg!q95.jpg"></a>
                            </div>
                            <a class="p-name" href="//item.jd.com/6708229.html"  
                               title="vivo X21 全面屏 双摄拍照游戏手机 6GB+128GB 冰钻黑 移动联通电信全网通4G手机 双卡双待">vivo X21 全面屏 双摄拍照游戏手机
                                6GB+128GB 冰钻黑 移动联通电信全网通4G手机 双卡双待</a>
                            <div class="p-price" data-price-id="6708229">¥2798.00</div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="contentR">
            <div><span class="spanR">打折商品</span></div>

            <!--<div class="clear"></div>-->
            <!--<div class="upR1"></div>-->
            <!--<div class="upR2"></div>-->
            <!--<div class="upR3"></div>-->
            <!--<div class="downR1"></div>-->
            <!--<div class="downR2"></div>-->
            <!--<div class="downR3"></div>-->
            <div class="rightcon">
                <div class="rightoverflow" data-id="03177482">
                    <ul class="c-list" data-price-area="done">
                        <li class="list-item fore1" clstag="channel|keycount|4118|theme_right_0_0">
                            <div class="p-img"><a href="//item.jd.com/7834050.html"  ><img width="100"
                                                                                                         height="100"
                                                                                                         src="//img10.360buyimg.com/n4/jfs/t21805/335/1733197028/80999/6da8dbaf/5b34559dN41065adf.jpg!q95.jpg"></a>
                            </div>
                            <a class="p-name" href="//item.jd.com/7834050.html"  
                               title="一加手机6 8GB+128GB 琥珀红 全面屏双摄游戏手机 全网通4G 双卡双待">一加手机6 8GB+128GB 琥珀红 全面屏双摄游戏手机 全网通4G
                                双卡双待</a>
                            <div class="p-price" data-price-id="7834050">¥3599.00</div>
                        </li>
                        <li class="list-item fore2" clstag="channel|keycount|4118|theme_right_0_1">
                            <div class="p-img"><a href="//item.jd.com/7479820.html"  ><img width="100"
                                                                                                         height="100"
                                                                                                         src="//img11.360buyimg.com/n4/jfs/t21532/360/764701806/223647/83d30500/5b1799cdN37efd6ec.jpg!q95.jpg"></a>
                            </div>
                            <a class="p-name" href="//item.jd.com/7479820.html"  
                               title="荣耀9i 4GB+64GB 魅海蓝 移动联通电信4G全面屏手机 双卡双待">荣耀9i 4GB+64GB 魅海蓝 移动联通电信4G全面屏手机 双卡双待</a>
                            <div class="p-price" data-price-id="7479820">¥1399.00</div>
                        </li>
                        <li class="list-item fore3" clstag="channel|keycount|4118|theme_right_0_2">
                            <div class="p-img"><a href="//item.jd.com/8026710.html"  ><img width="100"
                                                                                                         height="100"
                                                                                                         src="//img12.360buyimg.com/n4/jfs/t22309/154/1962124876/106102/6611cb8/5b3f1b3aNf7439c60.jpg!q95.jpg"></a>
                            </div>
                            <a class="p-name" href="//item.jd.com/8026710.html"  
                               title="华为 HUAWEI nova 3全面屏高清四摄游戏手机6GB+128GB 星耀版·樱草金 全网通移动联通电信4G手机双卡双待">华为 HUAWEI nova
                                3全面屏高清四摄游戏手机6GB+128GB 星耀版·樱草金 全网通移动联通电信4G手机双卡双待</a>
                            <div class="p-price" data-price-id="8026710">¥2999.00</div>
                        </li>
                        <li class="list-item fore4" clstag="channel|keycount|4118|theme_right_0_3">
                            <div class="p-img"><a href="//item.jd.com/6946605.html"  ><img width="100"
                                                                                                         height="100"
                                                                                                         src="//img13.360buyimg.com/n4/jfs/t17137/134/1253764714/149950/acf159b1/5ac1bf58Ndefaac16.jpg!q95.jpg"></a>
                            </div>
                            <a class="p-name" href="//item.jd.com/6946605.html"  
                               title="华为 HUAWEI P20 AI智慧徕卡双摄全面屏游戏手机 6GB+64GB 亮黑色 全网通移动联通电信4G手机 双卡双待">华为 HUAWEI P20
                                AI智慧徕卡双摄全面屏游戏手机 6GB+64GB 亮黑色 全网通移动联通电信4G手机 双卡双待</a>
                            <div class="p-price" data-price-id="6946605">¥3788.00</div>
                        </li>
                        <li class="list-item fore5" clstag="channel|keycount|4118|theme_right_0_4">
                            <div class="p-img"><a href="//item.jd.com/7408445.html"  ><img width="100"
                                                                                                         height="100"
                                                                                                         src="//img14.360buyimg.com/n4/jfs/t19312/89/1809043402/201925/627b888c/5ad86023N3d44813b.jpg!q95.jpg"></a>
                            </div>
                            <a class="p-name" href="//item.jd.com/7408445.html"  
                               title="【电信赠费版】荣耀10 全面屏AI摄影手机 6GB+128GB 海鸥灰 全网通 移动联通电信4G 双卡双待">【电信赠费版】荣耀10 全面屏AI摄影手机
                                6GB+128GB
                                海鸥灰 全网通 移动联通电信4G 双卡双待</a>
                            <div class="p-price" data-price-id="7408445">¥2999.00</div>
                        </li>
                        <li class="list-item fore6" clstag="channel|keycount|4118|theme_right_0_5">
                            <div class="p-img"><a href="//item.jd.com/8226137.html"  ><img width="100"
                                                                                                         height="100"
                                                                                                         src="//img10.360buyimg.com/n4/jfs/t20752/175/1970009367/144022/335e7ddf/5b42b75eN69c5a992.jpg!q95.jpg"></a>
                            </div>
                            <a class="p-name" href="//item.jd.com/8226137.html"  
                               title="绿联 Type-C扩展坞 USB-C转HDMI转换器 华为mate10/P20Pro三星S8+/S9手机连接显示器投影仪拓展坞">绿联 Type-C扩展坞
                                USB-C转HDMI转换器 华为mate10/P20Pro三星S8+/S9手机连接显示器投影仪拓展坞</a>
                            <div class="p-price" data-price-id="8226137">¥299.00</div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
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
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue/list-29.html">购物流程</a></dd>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue/list-151.html">会员介绍</a></dd>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue/list-297.html">生活旅行/团购</a></dd>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue.html">常见问题</a></dd>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue/list-136.html">大家电</a></dd>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/index.html">联系客服</a></dd>
                </dl>
                <dl class="fore2">
                    <dt>配送方式</dt>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue/list-81-100.html">上门自提</a></dd>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue/list-81.html">211限时达</a></dd>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue/103-983.html">配送服务查询</a></dd>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue/109-188.html">配送费收取标准</a></dd>
                    <dd><a   href="//help.joybuy.com/help/question-list-201.html">海外配送</a></dd>
                </dl>
                <dl class="fore3">
                    <dt>支付方式</dt>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue/list-172.html">货到付款</a></dd>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue/list-173.html">在线支付</a></dd>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue/list-176.html">分期付款</a></dd>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue/list-174.html">邮局汇款</a></dd>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue/list-175.html">公司转账</a></dd>
                </dl>
                <dl class="fore4">
                    <dt>售后服务</dt>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue/321-981.html">售后政策</a></dd>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue/list-132.html">价格保护</a></dd>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue/130-978.html">退款说明</a></dd>
                    <dd><a rel="nofollow"   href="//myjd.jd.com/repair/repairs.action">返修/退换货</a></dd>
                    <dd><a rel="nofollow"   href="//help.jd.com/user/issue/list-50.html">取消订单</a></dd>
                </dl>
                <dl class="fore5">
                    <dt>特色服务</dt>
                    <dd><a   href="//help.jd.com/user/issue/list-133.html">夺宝岛</a></dd>
                    <dd><a   href="//help.jd.com/user/issue/list-134.html">DIY装机</a></dd>
                    <dd><a rel="nofollow"   href="//fuwu.jd.com/">延保服务</a></dd>
                    <dd><a rel="nofollow"   href="//o.jd.com/market/index.action">点点E卡</a></dd>
                    <dd><a rel="nofollow"   href="//mobile.jd.com/">点点通信</a></dd>
                    <dd><a rel="nofollow"   href="//s.jd.com/">点点DD+</a></dd>
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
            <a rel="nofollow"   href="http://imollyunfei.top/mv/">
                关于我们
            </a>
            |
            <a rel="nofollow"   href="http://imollyunfei.top/mv/">
                联系我们
            </a>
            |
            <a rel="nofollow"   href="http://imollyunfei.top/mv/">
                人才招聘
            </a>
            |
            <a rel="nofollow"   href="http://imollyunfei.top/mv/">
                商家入驻
            </a>
            |
            <a rel="nofollow"   href="http://imollyunfei.top/mv/">
                广告服务
            </a>
            |
            <a rel="nofollow"   href="http://imollyunfei.top/mv/">
                手机点点
            </a>
            |
            <a   href="http://imollyunfei.top/mv/">
                友情链接
            </a>
            |
            <a   href="http://imollyunfei.top/mv/">
                销售联盟
            </a>
            |
            <a href="http://imollyunfei.top/mv/"  >
                点点社区
            </a>
            |
            <a href="http://imollyunfei.top/mv/"  >
                点点公益
            </a>
            |
            <a   href="http://imollyunfei.top/mv/" clstag="pageclick|keycount|20150112ABD|9">English
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
	
	//下面是热卖商品--每次随机从数据库加载6个--封装成一个无参函数
	function getHotGoods() {
		 $
         .ajax({
             type: 'get',
             url: 'searchHotGoodsServlet',
             async: false,
             data: {},
             dataType: 'json',
             success: function (data) {
					//如果不是空数据--再进行数据装载
             	if (data!="") {
             		//首先进行ul清空--进行li数据组装
                 	$(".leftoverflow .c-list").html("");
             		var strData="";
             		//由于后台限定了返回数据仅有6条，因此不必担心数据过多，DIV无法容纳
                 	for (var i = 0; i < data.length; i++) {
                 		//先进行数据组装--最后才进行数据写入
                 		strData+="<a href='detail.jsp?goodCode="+data[i]['goodCode']+"'><li class='list-item' clstag='channel|keycount|4118|theme_left_2_17'><div class='p-img'><a href='detail.jsp?goodCode="+data[i]['goodCode']+"'  ><img width='100'   height='100'  src='"+data[i]['picture']+"'></a></div><a class='p-name' href='detail.jsp?goodCode="+data[i]['goodCode']+"'  title='"+data[i]['name']+"' style='height:41px;'>"+data[i]['name']+"</a><div class='p-price'>"+data[i]['price']+"</div></li></a>";
                 		}
                 	console.log("strData: "+strData)
                 	//数据组装完毕，下面开始数据装载
                 	$(".leftoverflow .c-list").html(strData);
					}
             }
         })
	}	
	
	//下面是打折商品--每次随机从数据库加载6个--封装成一个无参函数
	function getDiscountGoods() {
		 $
         .ajax({
             type: 'get',
             url: 'searchDiscountGoodsServlet',
             async: false,
             data: {},
             dataType: 'json',
             success: function (data) {
					//如果不是空数据--再进行数据装载
             	if (data!="") {
             		//首先进行ul清空--进行li数据组装
                 	$(".rightoverflow .c-list").html("");
             		var strData="";
             		//由于后台限定了返回数据仅有6条，因此不必担心数据过多，DIV无法容纳
                 	for (var i = 0; i < data.length; i++) {
                 		//先进行数据组装--最后才进行数据写入
                 		strData+="<a href='detail.jsp?goodCode="+data[i]['goodCode']+"'><li class='list-item' clstag='channel|keycount|4118|theme_left_2_17'><div class='p-img'><a href='detail.jsp?goodCode="+data[i]['goodCode']+"'  ><img width='100'   height='100'  src='"+data[i]['picture']+"'></a></div><a class='p-name' href='detail.jsp?goodCode="+data[i]['goodCode']+"'  title='"+data[i]['name']+"' style='height:41px;'>"+data[i]['name']+"</a><div class='p-price'>"+data[i]['price']+"</div></li></a>";
                 		}
                 	console.log("strData: "+strData)
                 	//数据组装完毕，下面开始数据装载
                 	$(".rightoverflow .c-list").html(strData);
					}
             }
         })
	}
	
	//页面加载时执行操作
	$(function() {
		//页面加载时获取随机热门商品6个
		getHotGoods();
		//页面加载时获取随机打折商品6个
		getDiscountGoods();
	})
	
	//额外点击热门商品或者打折商品span时也将进行更新
	$(".spanL").click(function() {
		//随机获取6个热门商品
		getHotGoods();
	})
	
	$(".spanR").click(function() {
		//随机获取6个打折商品
		getDiscountGoods();
	})
	
	
		
</script>

</body>
</html>