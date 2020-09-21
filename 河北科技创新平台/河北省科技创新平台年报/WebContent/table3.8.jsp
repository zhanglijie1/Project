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
      <th class="tablestyle_title" >当前位置->统计表填报->三.人员情况</th>
 </tr>
</table>
<div style="margin-bottom:10px style="margin-top:10px;">
	<a href="table.3.1.jsp"><button type="button" class="button">表3-1</button></a>
	<a href="table3.2.jsp"><button type="button" class="button">表3-2</button></a>
	<a href="table3.3.jsp"><button type="button" class="button">表3-3</button></a>
	<a href="table3.4.jsp"><button type="button" class="button">表3-4</button></a>
	<a href="table3.5.jsp"><button type="button" class="button">表3-5</button></a>
	<a href="table3.6.jsp"><button type="button" class="button">表3-6</button></a>
	<a href="table3.7.jsp"><button type="button" class="button">表3-7</button></a>
	<a href="table3.8.jsp"><button type="button" class="button">表3-8</button></a>
</div>
<form action="SanServlet?method=add8" method="post"   >
<table border="1" width="1236" style="margin-bottom:10px;">
      <tr bgcolor="#A9A9A9">
        <th colspan="13" align="left">表3-8 现有固定人员、流动人员中高层次人才列表</th>
    </tr>
    <tr align="center">
        <td width="">姓名</td>
        <td width="40">性别</td>
        <td width="80">出生年月</td>
        <td width="">学历</td>
        <td width="">学位</td>
        <td width="">毕业院校</td>
        <td width="">所学专业</td>
        <td width="">职称</td>
        <td width="120">人才层次</td>
        <td width="80">固定/流动</td>
        <td width="100">工作性质</td>
        <td width="">人员状态</td>
        <td width="130">人事关系所在单位</td>
    </tr>
    <tr height="25">
        <td><input type="text" name="xygdname"  style="width:100%;height:26px" class ="text"value="">
        <input type="hidden" name="username"  style="width:100%;height:26px" class ="text"value="${username}"></td>
        <td><input type="text" name="xygdsex"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xygdbirth"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xygdxl"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xygdxw"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xygdbyyx"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xygdsxzy"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xygdzc"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xygdrccc"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xygdgd"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xygdgzxz"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xygdryzt"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xygdszdw"  style="width:100%;height:26px" class ="text"value=""></td>
    </tr>
    
    <tr>
        <td colspan="13" class="blue" style="font-size:80%">注：人才层次包括院士、千人计划、万人计划、长江学者、国家杰出青年、其他国家级称号、省级称号</td>
    </tr>
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="下一步" class="button" />　
    </div>
       </form>


</div>
</body>
</html>
