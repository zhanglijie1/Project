<%@ page import ="java.text.SimpleDateFormat"
import=" java.util.Date"
language="java" import="java.sql.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>平台维护</title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css" type="text/css" media="all" />


<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
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
			<%
			
			SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");//设置日期格式
			String newsNo = "SZ"+df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
			%>
<table  align="center" width="900" border="0px" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >当前位置->平台信息维护->平台信息维护</th>
 </tr>
</table>

<form action="WeihuServlet?method=add" method="post"  >
<table  align="center" border="1" width="900" style="margin-bottom:10px;">
    
    <tr align="center">
        <td width="50">平台编号
         <input type="hidden" class="hidden" name='username' style="width:100%;height:30px" value="${username}"></td>
       <td  width="400" > <input type="text" class="hidden" name='ptbh' style="width:100%;height:30px" value="<%=newsNo %>"readonly></td>
        <td width="50">平台名称</td>
        <td width="400"><input type="text" class="text" name='ptmc' style="width:100%;height:30px" value=""></td>
     
    </tr>
    <tr align="center">
        <td width="50">依托单位</td>
       <td  width="400"><input type="text" class="text" name='ytdw' style="width:100%;height:30px" value=""></td>
        <td width="50"></td>
        <td width="400"></td>
     
    </tr>
    <tr align="center">
        <td width="50">平台级别</td>
       <td  width="400"><select id="ptjb" name="ptjb">
							<option value="国级">国级</option>
							<option value="省级">省级</option>
							<option value="市级">市级</option>

					</select>
					
						
        <td width="50">平台类型</td>
					<td width="400"><select id="ptlx" name="ptlx">
							<option value="研究院">研究院</option>
							<option value="学院">学院</option>
							<option value="公司">公司</option>

					</select></td>

				</tr>
     <tr align="center">
        <td width="50">批准文号</td>
       <td  width="400"><input type="text" class="text" name='pzwh' style="width:100%;height:30px" value=""></td>
        <td width="50">批准日期</td>
        <td width="400"><input type="text" class="text" name='pzrq' style="width:100%;height:30px" value=""></td>
     
    </tr>
    
    
  
       </table>
       
     <div style="width: 80%; text-align: center">
       <input type="submit" name="Submit" value="保存" class="button" />　
      <input type="button" name="Submit" value="取消" class="button" onclick="window.location.href='index.jsp'"/>　
    </div>
       </form>


</div>
</body>
</html>
