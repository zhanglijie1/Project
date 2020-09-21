<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	     Object chaxun = request.getAttribute("chaxun");
	     if(chaxun!=null && !"".equals(chaxun)){
	 
	%>
	     
	
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

<% }
else {
	out.print("请查询");
}
%> 
</body>
</html>