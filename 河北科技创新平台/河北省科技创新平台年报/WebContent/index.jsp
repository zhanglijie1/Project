<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>河北省科技创新平台年报统计系统</title>
</head>

 <%
 if((String)session.getAttribute("username")==null){
	
 response.sendRedirect("login.jsp");} %>

<frameset rows="59,*" cols="*" frameborder="no" border="0" framespacing="0">
	<frame src="top.html" name="topFrame" scrolling=""
		noresize="noresize" id="topFrame" title="topFrame" />
	<frameset cols="213,*" frameborder="no" border="0" framespacing="0">
    <frame src="left1.jsp" name="leftFrame" scrolling="" noresize="noresize" id="leftFrame" title="leftFrame" />
    <frame src="mainfra.html" name="mainFrame" id="mainFrame" title="mainFrame" />
  </frameset>
</frameset>
<noframes><body>
</body>
</noframes></html>
