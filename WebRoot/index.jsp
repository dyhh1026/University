<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>index</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="<%=path %>/css/index.css" />
    
          <%
             String regestinfosuccess="注册";
             String logininfoyes="登录";
             String regest="";
             String login="";
            
			if(session.getAttribute("regestinfosuccess")!=null){
			regest=(String) session.getAttribute("regestinfosuccess");
			regestinfosuccess="";
			}
			if(session.getAttribute("logininfoyes")!=null){
			login=(String) session.getAttribute("logininfoyes");
			regestinfosuccess="";
			logininfoyes="";
			regest="";
			} 
			 
			
		%>
		
			

	
       
	</head>
	<body >
		<div class="nav">	
			<div class="containered navde">
			<div class="logo"><img src="img/Kubo.png" alt="" /></div>
			<div class="serch">
			 <form action="servlet/ListServlet" method="post">
				<input type="text" name="info" id="" value="" autocomplete="off"  placeholder="搜索您想看的视频" />
				<div class="serchbutton"><span></span>
				<button type="submit" style="background-color:green;border: 0px;outline:none;">搜索</button>
				</div>
				</form>
			</div>
			<div class="user">
			
				<span></span>
				<span><%=regest%></span>
				<!-- <div class="dropdown" style="display:inline;"> -->
				
				<span style="font-size: 25px;" data-toggle="dropdown"><%=login%></span>
				
				
				<div class="dropdown-menu">
                <a class="dropdown-item" href="servlet/Exit?exit=exit">退出</a>
                </div> 
				 
				
				<span><a href="#" data-toggle="modal" data-target="#regest"><%=regestinfosuccess%></a></span>	
				<span><a href="#" data-toggle="modal" data-target="#login"><%=logininfoyes%></a></span>	
			
			</div>
			</div>
		</div>
		<div class="lunbo">	
		
			<div id="box">
    <div id="imgBackground">
        <ul>
            <li><a href="servlet/IntroduceServlet?id=1"><img src="img/bai.jpg" alt="1.jpg"></a> </li>
            <li><a href="servlet/IntroduceServlet?id=15"><img src="img/ru.jpg" alt="2.jpg"></a> </li>
            <li><a href="servlet/IntroduceServlet?id=16"><img src="img/chonglai.jpg" alt="3.jpg"></a> </li>
            <li><a href="servlet/IntroduceServlet?id=17"><img src="img/x.jpg" alt="4.jpg"></a> </li>
            <li><a href="servlet/IntroduceServlet?id=18"><img src="img/beijingdianying.jpg" alt="5.jpg"></a> </li>
            <li><a href="servlet/IntroduceServlet?id=19"><img src="img/wangyuan.jpg" alt="6.jpg"></a> </li>
            <li><a href="servlet/IntroduceServlet?id=20"><img src="img/xulu.jpg" alt="7.jpg"></a> </li>
            <li><a href="servlet/IntroduceServlet?id=21"><img src="img/cy.jpg" alt="8.jpg"></a> </li>
        </ul>
    </div>
    
    <div id="description" >
        <ul>
            	    <li><a href="servlet/IntroduceServlet?id=1">新白：许仙白素贞婚后生活</a></li>
			      	<li><a href="servlet/IntroduceServlet?id=15">奔跑吧3：李晨杠上“猫屎”</a></li>
			      	<li><a href="servlet/IntroduceServlet?id=16">如果爱重来：张书豪婚姻大作战</a></li>
			      	<li><a href="servlet/IntroduceServlet?id=17">向往的生活：周笔畅变怪力少女</a></li>
			      	<li><a href="servlet/IntroduceServlet?id=18">北京国际电影节：在线影展</a></li>
			      	<li><a href="servlet/IntroduceServlet?id=19">我是唱作人：王源成段子手</a></li>
			      	<li><a href="servlet/IntroduceServlet?id=20">北斗星男友：徐璐张铭恩异星恋</a></li>
			      	<li><a href="servlet/IntroduceServlet?id=21">晨阳：型男卧底组合引燃缉毒战</a></li>
        </ul>
    </div>
    
</div>


			<div class="title" >
				<div class="containered titles">
				   <ul>
					 <li><a href="index.jsp" style="color:green;">首页</a></li>
					 <li><a href="servlet/TypelistServlet?typeid=1">电影</a></li>
					 <li><a href="servlet/TypelistServlet?typeid=2">电视剧</a></li>
					 <li><a href="servlet/TypelistServlet?typeid=3">综艺</a></li>
					 <li><a href="">动漫</a></li>
					 <li><a href="">热播</a></li>
				   </ul>
				</div>
				
			</div>
		</div>
		
		<div class="main containered">
			<div class="section">
				<div class="sectiontitle">
					<div class="stleft" >为你推荐</div>
					<div class="stright">
						<a href="">全部</a>
						<a href="">韩剧</a>
						<a href="">日剧</a>
						<a href="">泰剧</a>
						<a href="">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="coverlist">
					<div class="cover">
						<a href="servlet/IntroduceServlet?id=1">
						<span>更新至24集</span>
						</a>
						<div class="coverdetile">
							<div class="jianjie">新白娘子传奇</div>
							<div class="zhuyan">主演：于朦胧/鞠婧祎/裴子添</div>
						</div>
					</div>
					
					<div class="cover">
						<a href="servlet/IntroduceServlet?id=2">
						<span>34集全</span>
						</a>
						<div class="coverdetile">
							<div class="jianjie">珊珊来了</div>
							<div class="zhuyan">主演：赵丽颖/张翰</div>
						</div>
					</div>
					<div class="cover">
						<a href="servlet/IntroduceServlet?id=3">
						<span>54集全</span>
						</a>
						<div class="coverdetile">
							
							<div class="jianjie">爱你一万年</div>
							<div class="zhuyan">主演：黄子韬/尹正/赵艺</div>
						</div>
					</div>
					<div class="cover">
						<a href="servlet/IntroduceServlet?id=4">
						<span>50集全</span>
						</a>
						<div class="coverdetile">
						<div class="jianjie">琅琊榜</div>
						<div class="zhuyan">主演：胡歌/王凯 /靳东</div>
						</div>
					</div>
					<div class="cover">
						<a href="servlet/IntroduceServlet?id=5">
						<span>63集全</span>
						</a>
						<div class="coverdetile">
						<div class="jianjie">封神英雄榜</div>
						<div class="zhuyan">主演：张馨予/陈键锋</div>
						</div>
					</div>
					<div class="cover">
						<a href="servlet/IntroduceServlet?id=6">
						<span>38集全</span>
						</a>
						<div class="coverdetile">
						<div class="jianjie">何以笙箫默</div>
						<div class="zhuyan">主演：唐嫣/钟汉良</div>
						</div>
					</div>
					
				</div>
				
			</div>
			<div class="section">
				<div class="sectiontitle">
					<div class="stleft" >正在热映电影</div>
					<div class="stright">
						<a href="">正在热播</a>
						<a href="">即将上映</a>
						<a href="">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="coverlist">
					<div class="cover">
						<a href="servlet/IntroduceServlet?id=7">
						<span>2018</span>
						</a>
						<div class="coverdetile">
						<div class="jianjie">替嫁新娘</div>
						<div class="zhuyan">主演：陆恩欣/黄景瑜/尹正</div>
						</div>
					</div>
					<div class="cover">
						<a href="servlet/IntroduceServlet?id=8">
						<span>2019</span>
						</a>
						<div class="coverdetile">
						<div class="jianjie">古墓惊魂</div>
						<div class="zhuyan">主演：简佳琳 /萧钰洪 /马雪非</div>
						</div>
					</div>
					<div class="cover">
						<a href="servlet/IntroduceServlet?id=9">
						<span>2019</span>
						</a>
						<div class="coverdetile">
						<div class="jianjie">超级老爸</div>
						<div class="zhuyan">主演：石强 /马思彤</div>
						</div>
					</div>
					<div class="cover">
						<a href="servlet/IntroduceServlet?id=10">
						<span>1996</span>
						</a>
						<div class="coverdetile">
						<div class="jianjie">赌神3</div>
						<div class="zhuyan">主演：成龙/阮经天/钟楚曦</div>
						</div>
					</div>
				
					
				</div>
				
			</div>
			<div class="section">
				<div class="sectiontitle">
					<div class="stleft" >热播综艺</div>
					<div class="stright">
						<a href="">热门综艺</a>
						<a href="">自制综艺</a>
						<a href="">精彩推荐</a>
						<a href="">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="coverlist">
					<div class="cover">
						<a href="servlet/IntroduceServlet?id=11">
						<span>4-10期</span>
						</a>
						<div class="coverdetile">
							<div class="jianjie">王牌对王牌</div>
							<div class="zhuyan">朱孝天回应F4不和传闻</div>
						</div>
						
					</div>
					
					
					<div class="cover">
						<a href="servlet/IntroduceServlet?id=12">
						<span>4-20期</span>
						</a>
						<div class="coverdetile">
							<div class="jianjie">坑王驾到</div>
							<div class="zhuyan">天象异陡然生变故 难交差赌徒起歹心</div>
						</div>
					</div>
					<div class="cover">
						<a href="servlet/IntroduceServlet?id=13">
						<span>4-06期</span>
						</a>
						<div class="coverdetile">
							<div class="jianjie">声临其境</div>
							<div class="zhuyan">秦昊严屹宽催泪“父子对白”</div>
						</div>
					</div>
					<div class="cover">
						<a href="servlet/IntroduceServlet?id=14">
						<span>4-18期</span>
						</a>
						<div class="coverdetile">
							<div class="jianjie">声音的抉择</div>
							<div class="zhuyan">尚雯婕寻找来“电”声音 左立张阳阳兄弟对垒</div>
						</div>
					</div>
					
				</div>
				
			</div>
			
			<div class="section">
				<div class="sectiontitle">
					<div class="stleft" >最近更新</div>
					<div class="stright">
						<a href="">全部</a>
						<a href="">韩剧</a>
						<a href="">日剧</a>
						<a href="">泰剧</a>
						<a href="">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="coverlist">
					<div class="cover">
						<a href="bai.com">
						<span>更新至20集</span>
						</a>
						<div class="coverdetile">
							<div class="jianjie">如果可以这样爱</div>
							<div class="zhuyan">主演：佟大为/刘诗诗/保剑锋</div>
						</div>
					</div>
					<div class="cover">
						<a href="bai.com">
						<span>更新20集</span>
						</a>
						<div class="coverdetile">
							<div class="jianjie">铁探</div>
							<div class="zhuyan">主演：袁伟豪/惠英红/姜皓文</div>
						</div>
					</div>
					<div class="cover">
						<a href="bai.com">
						<span>更新至30集</span>
						</a>
						<div class="coverdetile">
							<div class="jianjie">夜空中最闪亮的星</div>
							<div class="zhuyan">主演：黄子韬/吴倩/牛俊峰</div>
						</div>
					</div>
					<div class="cover">
						<a href="bai.com">
						<span>更新至38集</span>
						</a>
						<div class="coverdetile">
							<div class="jianjie">重耳传奇</div>
							<div class="zhuyan">主演：王龙华/张含韵/麦迪娜</div>
						</div>
					</div>
					<div class="cover">
						<div class="cover">
						<a href="bai.com">
						<span>更新至15集</span>
						</a>
						<div class="coverdetile">
							<div class="jianjie">趁我们还年轻</div>
							<div class="zhuyan">主演：张云龙/乔欣/刘芮麟</div>
						</div>
					</div>
					</div>
					<div class="cover">
						<a href="bai.com">
						<span>更新至4集</span>
						</a>
						<div class="coverdetile">
							<div class="jianjie">我是顾家男</div>
							<div class="zhuyan">主演：黄健玮/杨谨华/谢佳见</div>
						</div>
					</div>
					
				</div>
				
			</div>
			<div class="section">
				<div class="sectiontitle">
					<div class="stleft" >精彩动漫</div>
					<div class="stright">
						<a href="">全部</a>
						<a href="">国产动漫</a>
						<a href="">日本动漫</a>
						<a href="">动漫推荐</a>
						<a href="">更多&gt;&gt;</a>
					</div>
				</div>
				<div class="coverlist">
					<div class="cover">
						<a href="bai.com">
						<span>更新至25集</span>
						</a>
						<div class="coverdetile">
							<div class="jianjie">万古仙穹 第3季</div>
							<div class="zhuyan">呆萌蛇妖 在线烧烤</div>
						</div>
					</div>
					<div class="cover">
						<div class="cover">
						<a href="bai.com">
						<span>更新至25集</span>
						</a>
						<div class="coverdetile">
							<div class="jianjie">刀剑神域  Alicization</div>
							<div class="zhuyan">人工智能进化之战</div>
						</div>
					</div>
					</div>
					<div class="cover">
						<div class="cover">
						<a href="bai.com">
						<span>更新至19集</span>
						</a>
						<div class="coverdetile">
							<div class="jianjie">少年歌行</div>
							<div class="zhuyan">有温度的少年江湖</div>
						</div>
					</div>
					</div>
					<div class="cover">
						<div class="cover">
						<a href="bai.com">
						<span>26集全</span>
						</a>
						<div class="coverdetile">
							<div class="jianjie">魔法禁书目录</div>
							<div class="zhuyan">科学魔法幻想曲</div>
						</div>
					</div>
					</div>
					
					
				</div>
				
			</div>
			</div>
		<footer>
			<div class="footerbody containered">
			  <div class="footertitlecon">
			  	<p>关于我们</p>
			  	<p>公司介绍</p>
			  	<p>新闻动态</p>
			  	<p>联系方式</p>
			  	<p>用户协议</p>
			  </div>
			  <div class="footertitlecon">
			  	<p>About us</p>
			  	<p>Investor Relations</p>
			    <p>Media Center</p>
			  </div>
			  <div class="footertitlecon">
			  	<p>内容合作</p>
			  	<p>酷博账号</p>
			  	<p>酷博内容合作标准</p>
			  	<p>酷博会员合作标准</p>
			  </div>
			  <div class="footertitlecon">
			  	<p>技术合作</p>
			  	<p>安全应急响应中心</p>
			  </div>
			  <div class="footertitlecon">
			  	<p>招聘英才</p>
			  	<p>社会招聘</p>
			  	<p>校园招聘</p>
			  </div>
			  <div class="footertitlecon">
			  	<p>常见问题</p>
			  	<p>帮助中心</p>
			  	<p>侵权投诉</p>
			  </div>
			  
			</div>
			<div class="containered">
			<hr />
			</div>
			<div class="shangbiao">
				<div class="p">
					Copyright &copy;2019酷博视频 All Rights Reserved
				</div>
			</div>
		</footer>
  <div class="modal fade" id="login" >
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">登录</h5>
        <button type="button" class="close" data-dismiss="modal" >
          <span >&times;</span>
        </button>
      </div>
       <form action="servlet/LoginServlet" method="post">
      <div class="modal-body">
       
        <p>账号</p>
        <input type="text" name="name" autocomplete="off"/>
        <p>密码</p>
        <input type="password" name="pwd" autocomplete="off"/>
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
        <button type="submit" class="btn btn-primary">确定</button>
      </div>
 </form>
    </div>
  </div>
</div>
  <div class="modal fade" id="regest">
  <div class="modal-dialog modal-dialog-centered" >
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">注册</h5>
        <button type="button" class="close" data-dismiss="modal" >
          <span>&times;</span>
        </button>
      </div>
      <form action="servlet/ZhuceServlet" method="post">
      <div class="modal-body">
       
        <p>账号</p>
        <input type="text" name="name" required autocomplete="off"/>
        <p>密码</p>
        <input type="password" name="pwd" required autocomplete="off" placeholder="请输入6-16位密码" pattern="[a-zA-Z0-9]{6,16}" oninvalid="setCustomValidity('请输入6-16位密码');" oninput="setCustomValidity('');"/>
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
        <button type="submit" class="btn btn-primary" >确定</button>
      </div>
 </form></div>
  </div>
</div>
	    
        <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
         <script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
         <script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	      <script>
	     addLoadEvent(aHover);
addLoadEvent(move(0));
var timec=null;
function addLoadEvent(func) {
    var oldonload=window.onload;
    if(typeof window.onload!="function")
    {
        window.onload=func;
    }
    else{
        window.onload=function () {
            oldonload();
            func();
        }
    }
}
function aHover() {
    var description=document.getElementById("description");
    var alist=description.getElementsByTagName("a");
    alist[0].style.color="green";
        alist[0].onmouseover=function (ev) {
            move(0);
        };
    alist[1].onmouseover=function (ev) {
        move(1);
    };
    alist[2].onmouseover=function (ev) {
        move(2);
    };
    alist[3].onmouseover=function (ev) {
        move(3);
    };
    alist[4].onmouseover=function (ev) {
        move(4);
    };
     alist[5].onmouseover=function (ev) {
        move(5);
    };
     alist[6].onmouseover=function (ev) {
        move(6);
    };
     alist[7].onmouseover=function (ev) {
        move(7);
    };
    

}
function play() {
    autoMove(0);
}
function autoMove(s) {
    var elem=document.getElementById("imgBackground");
    var description=document.getElementById("description");
    var alist=description.getElementsByTagName("a");
    var s=elem.style.top;
    var i=s/400;
    alist[i].style.color="green";
    elem.style.top=(-i)*400+"px";
    var timec=setTimeout(function () {
        autoMove(i+1);
    },3000);
}
function move(i) {
    var elem=document.getElementById("imgBackground");
    var description=document.getElementById("description");
    var alist=description.getElementsByTagName("a");
    if(timec)
    {
        clearTimeout(timec);
    }
    for(var j=0;j<alist.length;j++)
    {
        if(i==j)
        {
            alist[i].style.color="green";
        }
       else
        {
            alist[j].style.color="white";
        }
    }
    elem.style.top=(-i)*520+"px";
     timec=setTimeout(function () {
        if((i)<7)
        {
            move(i+1);
        }
        else {
            move(0);
        }
    },3000);
}

	      </script>
        </body>
</html>

