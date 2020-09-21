<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>调查表查看</title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css" type="text/css" media="all" />

 <link rel="stylesheet" type="text/css"  href="jsjquery-ui.css">
  <script src="js/jquery-1.12.1.js"></script>
   <script src="js/jquery-ui.js"></script>

<style type="text/css">

</style>
</head>
<body class="ContentBody">
<div class="MainDiv">
<%
	     Object message = request.getAttribute("message");
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	     </script>
	<%} %>
			
<table width="100%" border="0px" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >当前位置->调查表查看->调查表查看</th>
 </tr>
</table>
<div style="margin-top:10px;style="margin-:10px;">
<table>
		<form action="ChaxunServlet?method=search" method="post">
			<tr>
						<td colspan="2"><select name="diaochaname" style="width:200px;height:26px"	>
								<option value="ptmc">平台名称</option>
								<option value="pzrq">调查年度</option>
								<option value="name" selected>填表人</option>
								
						</select></td>
						<td colspan="2"><input type="text" name="name" style="width:300px;height:26px" /></td>
				<td ><input type="submit" name="Submit" value="搜索" style="width:50px;height:26px"></td>
			</tr>
		</form>
</table>
</div>

<table border="1" width="100%" style="margin-bottom: 10px;">
		<tr align="center">
		
			<td width="150">平台编号</td>
			<td width="150">平台名称</td>
			<td width="150">调查年度</td>
			<td width="150">管理部门</td>
			<td width="150">填表人</td>
			<td width="150">填报时间</td>
			<td width="150">平台级别</td>
			<td width="150">平台类型</td>
			<td width="150">当前状态</td>

			<td width="150">审核进度</td>
		</tr>

		<!-- forEach遍历出adminBeans -->
		<c:forEach items="${chaxun}" var="item" varStatus="status">
			<tr>
			<td>${item.ptbh}</td>
				<td><a href="table1.2.jsp?ptmc=${item.ptbh}">${item.ptmc}</a></td>
				
				<td>${item.pzrq}</td>
				<td>${item.guanlibumen}</td>
				<td>${item.name}</td>
				<td>${item.time}</td>
				<td>${item.ptjb}</td>
				<td>${item.ptlx}</td>
				<td>正在填报</td>
				<td>查看进度</td>
			</tr>
		</c:forEach>


	</table>


       
   
  


</div>
</body>
</html>
