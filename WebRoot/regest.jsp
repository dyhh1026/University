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
				
		
			
			</div>
			</div>
		</div>
 
  <div class="modal" style="display:block!important;">
  <div class="modal-dialog modal-dialog-centered" >
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">注册</h5>
        <button type="button" class="close" data-dismiss="modal" >
          <a href="index.jsp" style="font-size: 20px; ">已有账号，去登录</a>
        </button>
      </div>
      <form action="servlet/ZhuceServlet" method="post">
      <div class="modal-body">
         <% String regestinfoexist="";
           
			if(session.getAttribute("regestinfoexist")!=null){
			regestinfoexist=(String) session.getAttribute("regestinfoexist");}
			
			
			 %>
        <p>账号</p>
        <input type="text" name="name" required autocomplete="off"/><span style="color:red;"><%=regestinfoexist%></span>
        <p>密码</p>
        <input type="password" name="pwd"  required autocomplete="off"/>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" ><a href="index.jsp" style="color:#000;">确定</a></button>
        
     
        
      </div>
 </form></div>
  </div>
</div>
        <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
         <script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
         <script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	      <script>
	     
	      </script>
        </body>
</html>

