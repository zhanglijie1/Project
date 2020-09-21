<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<!--  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js"></script>
       <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-gl/dist/echarts-gl.min.js"></script>
       <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-stat/dist/ecStat.min.js"></script>
       <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/dataTool.min.js"></script>
       <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/china.js"></script>
       <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/world.js"></script>

       <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/bmap.min.js"></script>

<script>
	function ok1() {
		var a = document.getElementById("container");
		if (a.style.display == "none")
			a.style.display = "block";
		else
			a.style.display = "none";
	}
</script> -->


<body>

<table border="1" width="100%" style="margin-bottom:10px;">
  
      <tr align="center">
        <td style="width:50px;height:26px">序号</td>
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
						<td style="width:350px;height:40px">${item.i}</td>
					<td ><a href="table1.2.jsp?ptmc=${item.ptbh}"style="color:red" >${item.ptmc}</a></td>
					<td>${item.name}</td>
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

<!-- <a href="#" onmouseout="ok1();" onmouseover="ok1();">显示层</a>
<input type="button" value="条形图"   onclick="ok1();" >
	<div id="container" style="height:500%" >
		  <script type="text/javascript">
      
var dom = document.getElementById("container");
var myChart = echarts.init(dom);
var app = {};
option = null;
option = {
    xAxis: {
        type: 'category',
        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
    },
    yAxis: {
        type: 'value'
    },
    series: [{
        data: [100, 40,40, 40,40, 40, 40],
        type: 'bar'
    }]
};
;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
}
       </script>
	</div> -->


</body>
</html>