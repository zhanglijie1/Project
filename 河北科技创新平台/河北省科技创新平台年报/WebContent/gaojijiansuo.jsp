<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>选项</title>
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
<link href="css/css.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>

<script>
	$(document)
			.ready(
					function() {

						var MaxInputs = 2; //maximum input boxes allowed  
						var InputsWrapper = $("#InputsWrapper"); //Input boxes wrapper ID  
						var AddButton = $("#AddMoreFileBox"); //Add button ID  

						var x = InputsWrapper.length; //initlal text box count  
						var count = 0; //to keep track of text box added  

						$(AddButton)
								.click(
										function(e) //on add input button click  
										{
											if (x <= MaxInputs) //max input box allowed  
											{
												count++; //text box added increment  
												//add input box  
												$(InputsWrapper)
														.append(
																'<div><td><input type="button" value="—"class="removeclass button button2"></td><td><select name="key'+ count +'" style="width:50px;height:26px"	><option value="and">且</option><option value="or">或</option></select></td><td colspan="2"><select name="diaochaname'+ count +'" style="width:200px;height:26px"	><option value="ptmc">平台名称</option><option value="ptjb">平台级别</option><option value="name" selected>填表人</option></select></td><td colspan="2"><input type="text" name="name'+ count +'" id="field_'+ count +'" value="" style="width:300px;height:26px"/></td><td><select name="zhi'+ count +'" style="width:50px;height:26px"	><option value="1">精确</option><option value="0">模糊</option></select></td></div>');
												x++; //text box increment  
											}
											return false;
										});

						$("body").on("click", ".removeclass", function(e) { //user click on remove text  
							if (x > 1) {
								$(this).parent('div').remove(); //remove text box  
								x--; //decrement textbox  
							}
							return false;
						})

					});
</script>

<style>
* {
	margin: 0px;
	padding: 0px;
}

#dv {
	width: 100px;
	height: 100px;
	background-color: yellow;
	margin: 0px auto 0px;
}
</style>
</head>
<body>
	<form action="ChaxunServlet?method=search3" method="post">
		<div style="height: 200px">

			<div id="InputsWrapper">

				<tr>
					<td><input type="button" id="AddMoreFileBox"
						class="button button3" value="＋" style=""></td>
					<td colspan="2"><select name="diaochaname"
						style="width: 200px; height: 26px">
							<option value="ptmc">平台名称</option>
							<option value="ptjb">平台级别</option>
							<option value="name" selected>填表人</option>

					</select></td>
					<td colspan="2"><input type="text" name="name"
						style="width: 300px; height: 26px" /></td>

				</tr>
			

			</div>

		</div>
		<div
			style="float: left; width: 100%; text-align: center; margin-top: 15px">
				<table bgcolor="#FFFFFF" cellspacing="0" cellpadding="0" id="tjt">
					  <tr>
					    <td><span style="center"><strong>平台批准日期:</strong></span></td>
					    <td><input size='10' name="pzrq1"onclick='new Calendar().show(this);' id='beforeFind'/>----<input size='10' name="pzrq2"onclick='new Calendar().show(this);' id='afterFind'/></td>
					  </tr>
					</table>
			<input type="submit" class="button button3" name="Submit" value="搜索">
				
		</div>
		
	</form>
	<%
		Object chaxun = request.getAttribute("chaxun");
		if (chaxun != null && !"".equals(chaxun)) {
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
	<%
		} else {
			out.println("请查询");
		}
	%>
</body>
</html>
