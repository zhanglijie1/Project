<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table1.1</title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css" type="text/css" media="all" />
<%
	     Object message = request.getAttribute("message");
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	     </script>
	<%} %>

<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>
<body class="ContentBody">
<div class="MainDiv">
<table width="100%" border="0px" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >当前位置->统计表填报->七.年度研发成果产出情况</th>
 </tr>
</table>
<div style="margin-bottom:10px style="margin-top:10px;">
	<a href="table7.1.1.jsp"><button type="button">表7-1-1</button></a>
	<a href="table7.1.2.jsp"><button type="button">表7-1-2</button></a>
	<a href="table7.1.3.jsp"><button type="button">表7-1-3</button></a>
	<a href="table7.2.1.jsp"><button type="button">表7-2-1</button></a>
	<a href="table7.2.2.jsp"><button type="button">表7-2-2</button></a>
	<a href="table7.3.1.jsp"><button type="button">表7-3-1</button></a>
	<a href="table7.3.2.jsp"><button type="button">表7-3-2</button></a>
	<a href="table7.4.1.jsp"><button type="button">表7-4-1</button></a>
	<a href="table7.4.2.jsp"><button type="button">表7-4-2</button></a>
	<a href="table7.5.1.jsp"><button type="button">表7-5-1</button></a>
	<a href="table7.6.1.jsp"><button type="button">表7-6-1</button></a>
	<a href="table7.6.2.jsp"><button type="button">表7-6-2</button></a>
	<a href="table7.7.1.jsp"><button type="button">表7-7-1</button></a>
</div>
<form action="SevenServlet?method=add22" method="post">
<table border="1" width="1236" style="margin-bottom:10px;">
<tr bgcolor="#A9A9A9">
        <th colspan="6" align="left">表7-2 验收或鉴定的科学技术成果</th>
    </tr>
    <tr bgcolor="#A9A9A9">
        <th colspan="6" align="left">表7-2-2 验收或鉴定的重要科学技术成果列表</th>
    </tr>
    <tr align="center">
        <td width="50">序号</td>
        <td width="200">成果名称</td>
        <td width="200">成果类型</td>
        <td width="200">完成单位</td>
        <td width="200">主要完成人</td>
        <td width="200">成果取得时间</td>
    </tr>
    <tr>
        <td align="center">1.</td>
        <td><input type="text" class="text" name='yscgmc' style="width:100%;height:26px" value="">
        <input type="hidden" class="text" name='username' style="width:100%;height:26px" value="${username}"></td>
        <td><input type="text" class="text" name='yscglx' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="text" name='yscgwcdw' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="text" name='yscgzzwcr' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="text" name='yscgqdsj' style="width:100%;height:26px" value=""></td>
    </tr>
   
   
    <tr>
        <td colspan="12" class="blue" style="font-size:80%">注:1.成果完成单位有本平台，且主要完成人有本平台的固定人员或流动人员署名以及平台单位，与本平台没有权属关系的不计入。<br>&nbsp;&nbsp;&nbsp;
       2.“成果类型”指基础和应用基础研究、技术开发成果和消化吸收再创新成果。</td>
    </tr>
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="下一步" class="button"/>　
    </div>
       </form>


</div>
</body>
</html>
