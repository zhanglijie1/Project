<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>河北省科技创新平台年报统计系统</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->

</style>
<link href="css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>

<%
	     Object message = request.getAttribute("message");
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	     </script>
	<%} %>
	
	 <%
 if((String)session.getAttribute("username")==null){
		

	 
	%>
	     <script type="text/javascript">
	          alert("您未登录，请登陆后进入该界面");
	     </script>
	     <%} %>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>

  </tr>
</table>
<table width="562" border="0" align="center" cellpadding="0" cellspacing="0" class="right-table03">
  <tr>
    <td width="221"><table width="95%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
      
      <tr>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
          <tr>
            <td align="center"><img src="images/ico13.gif" width="107" height="97" /></td>
          </tr>
          <tr>
            <td height="40" align="center">&nbsp;</td>
          </tr>
          
        </table></td>
        <td><img src="images/line01.gif" width="5" height="292" /></td>
      </tr>
    </table></td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
    
     <form action="UserServlet?method=login" method="post" onsubmit="return check()">
      <tr>
        <td width="31%" height="35" class="login-text02">用户名称：<br /></td>
        <td width="69%"><input name="username" type="text" size="30" /></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">密　 码：<br /></td>
        <td><input name="password" type="password" size="30" /></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">验证码：<br /></td>
        <td><input name="code" type="text" size="15" /><img id="loginform:vCode" src="code.jsp"  onclick="javascript:document.getElementById('loginform:vCode'). src='code.jsp?'+Math.random();" /></td>
   
      </tr>
      <tr>
        <td height="35">&nbsp;</td>
        <td><input name="Submit2" type="submit" class="right-button01" value="确认登陆"  />
          <input name="Submit232" type="reset" class="right-button02" value="重 置" /></td>
      </tr>
</form>
    </table></td>
  </tr>
</table>
</body>
</html>