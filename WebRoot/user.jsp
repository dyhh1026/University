<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'user.jsp' starting page</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
	

  </head>
  
  <body>
  <form method="post" action="servlet/UploadServlet" enctype="multipart/form-data">
 
    <input type="file" name="uploadFile" />
    <br/><br/>
    <input type="submit" value="上传" />
</form>  
${message}
<video src="D:/apache-tomcat-7.0.69/webapps/Kubo/upload/mountain.mp4" controls width="400" height="500"></video>
<video src="D:\apache-tomcat-7.0.69\webapps\Kubo\upload\mountain.mp4" controls width="400" height="500"></video>
</body>
</html>
