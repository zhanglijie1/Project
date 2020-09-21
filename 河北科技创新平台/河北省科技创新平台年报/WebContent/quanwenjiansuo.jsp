<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 5px 15px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 10px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button2 {
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
}

.button2:hover {
    background-color: #008CBA;
    color: white;
}

.button3 {
    background-color: white; 
    color: black; 
    border: 2px solid #f44336;
}

.button3:hover {
    background-color: #f44336;
    color: white;
}


</style>
</head>
<body>

<div style="width:1200px;float:left;">
<form action="QuanwenServlet?method=search" method="post" >
<table  width="1200	" height="90"border="1" cellspacing="0"style="border-color:#FFFFFF;">
        <tr bgcolor="#CCFFFF" height="30">
			<td colspan="7"><font color="grey">&nbsp;&nbsp;&nbsp;当前位置<i class="my-icon nav-icon icon_5"></i>全文检索<i class="my-icon nav-icon icon_5"></i></font></td>
		</tr>
		<tr>
				<td colspan="5"><input type="text" name="NAME" value=""
					style="width: 1200px; height: 26px" /></td>
				<td><input type="submit" name="Submit" class="button button3"value="查找"
					style="height: 26px"></td>
			</tr>
</table>
</form>
<%
	     Object list = request.getAttribute("list");
	     if(list!=null && !"".equals(list)){
	 
	%>
	     

<div style="overflow:auto;float:bottom;">
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
		<c:forEach items="${list}" var="item" varStatus="status">
			<tr>
			<td>${item.ptbh}</td>
				<td>${item.ptmc}</td>
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
	<%} 
	     else{
	    	 out.println("请查询");
	     }
	%>
</div>

</div >






</body>
</html>