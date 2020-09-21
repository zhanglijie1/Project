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
<%
	     Object message = request.getAttribute("message");
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	     </script>
	<%} %>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
 
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
      <form action="UserServlet?method=update" method="post" >
       <tr>
        <td height="35" class="login-text02">原  始  密　码：<br /></td>
        <td><input name="password" type="password" size="33" />
        <input name="username" type="hidden" size="33" value="${username}" /></td>
      </tr>
 <tr>
        <td height="35" class="login-text02">新  密　码：<br /></td>
        <td><input name="repassword" type="repassword" size="33" /></td>
      </tr>

      <tr>
        <td height="35">&nbsp;</td>
        <td><input name="Submit2" type="submit" class="right-button01" value="确认"  />
          <input name="Submit232" type="reset" class="right-button02" value="重 置" /></td>
      </tr>
      </form>
    </table></td>
  </tr>
</table>
</body>
</html>