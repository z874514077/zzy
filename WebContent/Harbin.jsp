<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8">
	<title>哈尔滨</title>
	<meta name="keywords" content="百度地图,百度地图API，百度地图自定义工具，百度地图所见即所得工具" />
     <meta name="description" content="百度地图API自定义地图，帮助用户在可视化操作下生成百度地图" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
		body {
		     background:url(pic/habin.jpg) ;background-size:cover; 
			position: relative;
		}
		ul.nav-pills {
			top: 20px;
			position: fixed;
		}
		div.col-sm-9 div {
			
			font-size: 15px;
		}
		#section1 {color: #fff; height: 500px;background: rgba(0,0,0,0.2);/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}
		#section20 {color: #fff; height: 200px;background: rgba(0,0,0,0.2);/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}
		#section21 {color: #fff;height: 400px;background: rgba(0,0,0,0.2);/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}
		#section22 {color: #fff; height: 200px;background: rgba(0,0,0,0.2);/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}
		#section23 {color: #fff; height: 400px;background: rgba(0,0,0,0.2);/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}
		#section30 {color: #fff; height: 200px;background: rgba(0,0,0,0.2);/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}
		#section31 {color: #fff; height: 400px;background: rgba(0,0,0,0.2);/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}
		#section32 {color: #fff; height: 200px;background: rgba(0,0,0,0.2);/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}
		#section33 {color: #fff; height: 400px;background: rgba(0,0,0,0.2);/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}
		#section40 {color: #fff; height: 200px;background: rgba(0,0,0,0.2);/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}
		#section41 {color: #fff; height: 400px;background: rgba(0,0,0,0.2);/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}
		#section42 {color: #fff; height: 200px;background: rgba(0,0,0,0.2);/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}
        #section43 {color: #fff; height: 400px;background: rgba(0,0,0,0.2);/*for IE*/ filter:alpha(opcity=60); /*css3 standard*/ opacity:0.6;}
		@media screen and (max-width: 810px) {
			#section1,  #section42  {
				margin-left: 150px;
			}
		}
		.Button{float: left;margin-left: 0px;}
			.Button a{display: block;}
			.Button button{width: 0px;height: 0px;background: #01A590;color: #fff;font-size: 32px;border: none;outline: none;}
			.Button img{width: 100px;height: 50px;}
		.iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
</head>
<body data-spy="scroll" data-target="#myScrollspy" data-offset="20">

<div class="container">
   
	<div class="row">
	
		<nav class="col-sm-3" id="myScrollspy">
			<div class="container-fluid"> 
			<div class="container-fluid"> 
			<ul class="nav nav-pills nav-stacked">
			
				<li class="active"><a href="#section1"><font color="#793301">路线概览</font></a></li>
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"><font color="#793301">Day 1</font> <span class="caret"></span></a>
					<ul class="dropdown-menu">
					    <li><a href="#section20"><font color="#793301">今日备忘</font></a></li>
						<li><a href="#section21"><font color="#793301">游玩攻略</font></a></li>
						<li><a href="#section22"><font color="#793301">交通攻略</font></a></li>
						<li><a href="#section23"><font color="#793301">餐饮攻略</font></a></li>                       
					</ul>
				</li>
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"><font color="#793301">Day 2</font><span class="caret"></span></a>
					<ul class="dropdown-menu">
					    <li><a href="#section30"><font color="#793301">今日备忘</font></a></li>
						<li><a href="#section31"><font color="#793301">游玩攻略</font></a></li>
						<li><a href="#section32"><font color="#793301">交通攻略</font></a></li>
						<li><a href="#section33"><font color="#793301">餐饮攻略</font></a></li>                       
					</ul>
				</li>
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"><font color="#793301">Day 3</font><span class="caret"></span></a>
					<ul class="dropdown-menu">
					    <li><a href="#section40"><font color="#793301">今日备忘</font></a></li>
						<li><a href="#section41"><font color="#793301">游玩攻略</font></a></li>
						<li><a href="#section42"><font color="#793301">交通攻略</font></a></li>
						<li><a href="#section43"><font color="#793301">餐饮攻略</font></a></li>                       
					</ul>
				</li>
				<div class="Button">
						<a href =index.jsp><img src="pic/return.jpg"/></a>
	             </div>
			</ul>
			</div>	
			</div>		
		</nav>
		<div class="col-sm-9">
		
		
			<div id="section1">    
				 <div style="width:650px;height:300px;border:#ccc solid 1px;" id="dituContent"></div>
				
				<p>D1中央大街步行街(2小时) → 圣·索菲亚大教堂(30分钟) → 防洪纪念塔(30分钟) → 斯大林公园(1小时) → 松花江(1小时)</p>
				<p>D2老道外(2小时) → 龙塔(2小时) → 果戈里大街(2小时) → 圣·阿列克谢耶夫教堂(20分钟) </p>
				<p>D3太阳岛公园(2小时) → 俄罗斯风情小镇(1小时) → 哈尔滨极地馆(3小时) </p>
				<h1>总结</h1>
				<p>夏季的哈尔滨绝对是避暑胜地，啤酒节和音乐节更让这座城市热闹非凡。</p>
			</div>
			<div id="section20"> 
				<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Day 1</h1>
				<h1>今日备忘</h1>
				<p>游览索菲亚教堂，参观防洪纪念塔，晚上住在中央大街</p>
			</div>
			<div id="section21"> 
				<h1>游玩攻略</h1>
				<p>今日的行程是早上9点出发，抵达号称亚洲最长的步行街——中央大街，由此开启第一天的游玩。这条街有精美绝伦的圣·索菲亚大教堂，著名的斯大林公园和防洪胜利纪念塔。晚上还可以参加中央大街的音乐节，记得一定要在这边吃顿正宗的俄餐哦！全程步行即可。</p>
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/zhongyangdajie.jpg"  >
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/jiaotang.jpg"  >
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/fangta.jpg"  >
				<h1>&nbsp;&nbsp;&nbsp;中央大街&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;索菲亚教堂&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;防洪纪念塔</h1>
			</div>
			<div id="section22"> 
				<h1>交通攻略</h1>
				<p>哈尔滨市内建议公交或者打车出行，方便快捷且便宜。哈尔滨黑车较多，切记不要打到黑车，一定要看清是正规出租，打表。另外哈尔滨出租都是以拼车为主，一定要注意。今日游览景点均在中央大街上，可从正门开始一路逛下去。</p>
			</div>   
			<div id="section23"> 
				<h1>餐饮攻略</h1>
				<p>哈尔滨美食特⾊：锅包肉、杀猪菜、大列巴、红肠等。因为今天一整天都在中央大街活动，午餐和晚餐可以就近在中央大街解决。老厨家的锅包肉是哈尔滨最正宗的，价格经济实惠。晚上可以选择一家俄式西餐厅。吃完正餐后可到街上吃一些特色小吃，烤红肠、炸冷面、马迭尔冰棍等。</p>
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/guobaorou.jpg"  >
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/madieer.jpg"  >
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/laochangchunbing.jpg"  >
				<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;锅包肉&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;马迭尔冰棍&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;老昌春饼</h1>
			</div>   
			<div id="section30"> 
				<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Day 2</h1>
				<h1>今日备忘</h1>
				<p>在老道外商业区买买买，然后去果戈里大街买买买，最后去龙塔买买买...</p>
			</div>        
			<div id="section31">         
				<h1>游玩攻略</h1>
				<p>由于第一天行程安排较满，建议把老道外放在第二天游览。今天主要是以逛特色街区和购物为主，先去哈尔滨的代表﻿老道外看历史建筑，那里美食很多。午饭后去果戈里大街逛逛特色纪念品，晚上在圣·阿列克谢耶夫教堂观看夜景</p>
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/laodaowai.jpg"  >
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/longta.jpg"  >
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/guogeli.jpg"  >
				<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;老道外&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龙塔&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;果戈里</h1>
			</div>
			<div id="section32">         
				<h1>交通攻略</h1>
				<p>从老道外到龙塔，需乘坐公交约50分钟，公交车24路，道外三道街站上车，龙塔下车即可。龙塔到果戈里大街，需乘坐公交约20分钟，公交车7路，龙塔站上车，革新街站下车即可。果戈里大街到圣·阿列克谢耶夫教堂步行三分钟即可。</p>
			</div>
			<div id="section33">         
				<h1>餐饮攻略</h1>
				<p>中午在老道外用餐，老道外有各式餐饮，东北菜、俄式餐、韩式餐、咖啡厅、各种小吃，应有尽有。晚饭在圣·阿列克谢耶夫教堂周边解决。</p>
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/zhangbaopu.jpg"  >
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/laorenyi.jpg"  >
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/luxiyaxicanting.jpg"  >
				<h1>&nbsp;&nbsp;&nbsp;张包铺&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;老仁义&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;露西亚西餐厅</h1>
			</div>
			<div id="section40"> 
				<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Day 3</h1>
				<h1>今日备忘</h1>
				<p>乘船去太阳岛，然后去看大白鲸....</p>
			</div>
			<div id="section41">         
				<h1>游玩攻略</h1>
				<p>今日主要行程是在太阳岛公园，这里有丰富多彩的娱乐活动，还能看雪雕景观哦~上午乘坐松花江缆车前往太阳岛及俄罗斯小镇，下午去哈尔滨极地馆观看白鲸表演。</p>
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/taiyangdao.jpg"  >
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/xiaozhen.jpg"  >
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/jidiguan.jpg"  >
				<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;太阳岛&nbsp;&nbsp;&nbsp;&nbsp;俄罗斯风情小镇&nbsp;&nbsp;哈尔滨极地馆</h1>
			</div>      
			<div id="section42">         
				<h1>交通攻略</h1>
				<p>哈尔滨市内建议公交或者打车出行，方便快捷且便宜。哈尔滨黑车较多，切记不要打到黑车，一定要看清是正规出租，打表。另外哈尔滨出租都是以拼车为主，一定要注意。太阳岛公园到俄罗斯风情小镇，步行10分钟即可。俄罗斯风情小镇到哈尔滨极地馆，全程2公里，可选择步行抵达，或是打车。</p>
			</div>
			<div id="section43">         
				<h1>餐饮攻略</h1>
				<p>中午逛完太阳岛公园，可以在附近随意吃点，如果不太饿可以选择在下一站风情小镇附近就餐。晚饭在哈尔滨极地馆周边，那边西餐厅较多，可以选择一家不错的尝尝哦！</p>
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/dongbeicai.jpg"  >
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/maomaoxunroudabing.jpg"  >
				<img alt="加载中..." title="图片加载中..."  width="220px" height="150px"  src="pic/harbin/laoshanghao.jpg"  >
				<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;东北菜&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;毛毛熏肉大饼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;老上号</h1>
			</div>
		</div>
	</div>
</div>

</body>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(127.831339,45.933286);//定义一个中心点坐标
        map.centerAndZoom(point,9);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"中央大街",content:"Day1&nbsp;游玩2小时",point:"126.624501|45.780604",isOpen:0,icon:{w:23,h:25,l:0,t:21,x:9,lb:12}}
		 ,{title:"索菲亚教堂",content:"Day1&nbsp;&nbsp;游玩30分钟",point:"126.633529|45.7766",isOpen:0,icon:{w:23,h:25,l:0,t:21,x:9,lb:12}}
		 ,{title:"防洪纪念塔",content:"Day1&nbsp;游玩30分钟",point:"126.623361|45.786939",isOpen:0,icon:{w:23,h:25,l:0,t:21,x:9,lb:12}}
		 ,{title:"斯大林林公园",content:"Day1&nbsp;游玩1小时",point:"126.620091|45.786084",isOpen:0,icon:{w:23,h:25,l:0,t:21,x:9,lb:12}}
		 ,{title:"松花江",content:"Day1&nbsp;游玩1小时",point:"126.62292|45.787417",isOpen:0,icon:{w:23,h:25,l:0,t:21,x:9,lb:12}}
		 ,{title:"龙塔",content:"Day2&nbsp;游玩2小时",point:"126.686858|45.753865",isOpen:0,icon:{w:23,h:25,l:46,t:21,x:9,lb:12}}
		 ,{title:"果戈里大街",content:"Day2&nbsp;游玩2小时",point:"126.671111|45.755012",isOpen:0,icon:{w:23,h:25,l:46,t:21,x:9,lb:12}}
		 ,{title:"太阳岛公园",content:"Day3&nbsp;游玩2小时",point:"126.605264|45.796901",isOpen:0,icon:{w:23,h:25,l:69,t:21,x:9,lb:12}}
		 ,{title:"俄罗斯风情小镇",content:"Day3&nbsp;游玩1小时",point:"126.608029|45.793169",isOpen:1,icon:{w:23,h:25,l:69,t:21,x:9,lb:12}}
		 ,{title:"哈尔滨极地馆",content:"Day3&nbsp;游玩3小时",point:"126.593564|45.791378",isOpen:0,icon:{w:23,h:25,l:69,t:21,x:9,lb:12}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb 

					-json.icon.x+10,-20)});
								marker.setLabel(label);
					            map.addOverlay(marker);
					            label.setStyle({
					                        borderColor:"#808080",
					                        color:"#333",
					                        cursor:"pointer"
					            });
								
								(function(){
									var index = i;
									var _iw = createInfoWindow(i);
									var _marker = marker;
									_marker.addEventListener("click",function(){
									    this.openInfoWindow(_iw);
								    });
								    _iw.addEventListener("open",function(){
									    _marker.getLabel().hide();
								    })
								    _iw.addEventListener("close",function(){
									    _marker.getLabel().show();
								    })
									label.addEventListener("click",function(){
									    _marker.openInfoWindow(_iw);
								    })
									if(!!json.isOpen){
										label.hide();
										_marker.openInfoWindow(_iw);
									}
								})()
					        }
					    }
					    //创建InfoWindow
					    function createInfoWindow(i){
					        var json = markerArr[i];
					        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
					        return iw;
					    }
					    //创建一个Icon
					    function createIcon(json){
					        var icon = new BMap.Icon("ttp://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb 

					        		+5,1),offset:new BMap.Size(json.x,json.h)})
					        		        return icon;
					        		    }
					        		    
					        		    initMap();//创建和初始化地图
					        		</script>

</html>