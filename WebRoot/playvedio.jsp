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
	 <link rel="stylesheet" href="<%=path %>/css/playvedio.css" />
    
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
  
  <body>
   <c:forEach var="A" items="${vedioplaylist}">
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
    <div class="body">
		<div class="containered">
			
		    ${A.lujin}
	        <div class="title">${A.title}:<span>&nbsp;&nbsp;&nbsp;</span></div>
		   <div class="footer">
		  
			  
				
				 <ul> 
			
					<li>
					<c:forEach var="B" items="${ji}">
					<a href="servlet/jione?idji=${B.number }&vedioid=${B.id}">
					${B.number}
					</a>
					</c:forEach>
					</li>
					
				</ul>
			</div>
		</div>
			
		</div>
	  <div class="comment">
				<form action="servlet/CommentServlet" method="post">
				 <textarea name="comment" required placeholder="我来说两句(最多输入180个字符)"  maxlength="180"></textarea>
	        
	              <%@page import="java.text.SimpleDateFormat" %>
	              <%@page import="java.util.Date" %>
	              <%SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd"); %>
	              
	              <input type="text" required value="<%=sdf.format(new Date()) %>" name="time"/>
	              <input type="text" value="${logininfoyes}" name="username"/>
	              <input type="text" value="${A.id}" name="vedioid"/>
	            <input type="submit" value="发布" placeholder="" />
	            <a href="servlet/PlayServlet?id=${A.id}"><img src="img/shuaxin.jpg" width="30" height="25"/>
	            </a>
	             
	        </form>
	       
		</div>
		<c:forEach var="P" items="${commentlist}">
		<div class="comment1">
			<div class="head">
				<div class="name">${P.username }</div>
				<div class="time">${P.time }</div>
			</div>
			<div class="">
				${P.comment}
			</div>
		</div>
		</c:forEach>
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
