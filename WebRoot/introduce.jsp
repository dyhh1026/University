<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   
 
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/introducenew.css">
	  <% String regestinfosuccess="注册";
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
  
  <body>
   <c:forEach var="U" items="${vedio}">
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
				<span><%=login%></span>
				<span><a href="#" data-toggle="modal" data-target="#regest"><%=regestinfosuccess%></a></span>	
				<span><a href="#" data-toggle="modal" data-target="#login"><%=logininfoyes%></a></span>	
			
			</div>
			</div>
		</div>
		<div class="main">
		      <div class="containeredbody">
			  <div class="body">
			 
			  	<p>剧名：${U.title}</p>
			   <div class="vedio">
				<div id="dou"><span>${U.dou}</span><img  src="img/dou.jpg" alt="" /></div>
				
				<div class="left">
					<img src="${U.cover}" width="300px" height="300px" alt="" />
				</div>
				<div class="right">
	
					<p>${U.title}</p>
					<p>${U.updatetime}</p>
					<p>首播： ${U.firstplay}</p>
					<p>年份： ${U.year}</p>
					<p>地区： ${U.location}</p>
					<p>类型： ${U.smalltype}</p>
					<p>导演： ${U.maker}</p>
					<p>艺人： ${U.playman}</p>
					<a href="servlet/PlayServlet?id=${U.id }"><span></span>立即播放</a>
				</div>
			</div>
			
			
			<div class="footer">
			
				<hr />
				
			   </div>
				
				
			
		</div>
		</div></div>
		<div class="jianjie ">
			    <div class="containeredbody bg">
				<h4>简介</h4>
				
				<p>&nbsp;&nbsp;&nbsp;&nbsp;${U.intro}
                </p>
			</div>
			</div>
	</c:forEach>
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
        <input type="text" name="pwd" autocomplete="off"/>
       
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
        <input type="password" name="pwd" required autocomplete="off" placeholder="请输入6-16位密码" pattern="[a-zA-Z0-9]{6,16}" oninvalid="setCustomValidity('请输入6-16位密码');"/>
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
        <button type="submit" class="btn btn-primary">确定</button>
      </div>
 </form></div>
  </div>
</div>	
         <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
         <script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
         <script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	</body>
</html>
