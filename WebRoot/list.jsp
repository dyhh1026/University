<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/list.css">

  </head>
  
  <body>
    <table class="container" cellspacing="10">
    <c:forEach var="U" items="${vedio}">
 			<tr>
				<td><img src="${U.cover}"/></td>
				<td> <p>${U.title}</p>
					  <p>简介：${U.intro}
					</p>
					  <p><a href="servlet/PlayServlet?id=${U.id }"><span></span>立即播放</a></p>
				</td>
			</tr>
			</c:forEach>
		</table>
  </body>
</html>
