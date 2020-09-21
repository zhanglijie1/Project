<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <script type="text/javascript" src="js/dataTool.js"></script>
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <script src="js/jquery.min.js" type="text/javascript"></script>
      <link rel="stylesheet" href="layui/css/layui.css" media="all">    
  <script src="layui/layui.js" charset="UTF-8"></script>
<script type="text/javascript">
		layui.use([ 'tree', 'util' ], function() {
			var tree = layui.tree,util = layui.util;
			$.get('js/1.json', function(json) {
				tree.render({
					elem : '#tree', //默认是点击节点可进行收缩
					data : json,
					//showCheckbox : true	,
					id : 'diqu',
					click: function(obj){
						var data = obj.data;
						/* layer.msg('状态：'+ obj.state + '<br>节点数据：' + JSON.stringify(data.id)); */
						location.href="ChaxunServlet?method=search5&data="+data.title; 
					}
				});
				//按钮事件
				util.event('id', {
					setChecked : function() {
						tree.setChecked('diqu', [110000,120000,130100]); //勾选指定节点
					}
				});
			});
		});
	</script>
</head>


<div id="tree" class="demo-tree demo-tree-box" style="width:150px;float:left;"></div >
<div style="width:1100px;float:right;">

<%
	     Object chaxun = request.getAttribute("chaxun");
	     if(chaxun!=null && !"".equals(chaxun)){
	 
	%>
	    
<div style="overflow:auto;float:bottom;">
 <table border="1" width="100%" style="margin-bottom: 10px;">
		<tr align="center">
		
			<td width="150">平台编号</td>
			<td width="150">平台名称</td>
			<td width="150">平台级别</td>
			<td width="150">所在市县</td>
			<td width="150">平台主任</td>
			
		</tr>

		<!-- forEach遍历出adminBeans -->
		<c:forEach items="${chaxun}" var="item" varStatus="status">
			<tr>
			<td>${item.ptbh}</td>
				<td>${item.ptmc}</td>
				<td>${item.ptjb}</td>
				<td>${item.szsx}</td>
				<td>${item.name}</td>
				
			</tr>
		</c:forEach>


	</table>
	<% }else{
		out.print("请查询");
	}
	%>

</div>

</div >





</body>
</html>