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
      <th class="tablestyle_title" >当前位置->统计表填报->六.年度研发项目情况</th>
 </tr>
</table>
<div style="margin-bottom:10px style="margin-top:10px;">
	<a href="table6.1.jsp"><button type="button" class="button">表6-1</button></a>
	<a href="table6.2.jsp"><button type="button" class="button">表6-2</button></a>
</div>
<form action="SixServlet?method=add1" method="post" >
<table border="1" width="1236" style="margin-bottom:10px;">
   <tr bgcolor="#A9A9A9">
        <th colspan="10" align="left">表6-1 主要研究方向（按建设方案确定的主要研究方向及其内容依次填写）</th>
    </tr>
    <tr align="center">
        <td width="40">序号</td>
        <td>项目来源</td>
        <td width="110">项目来源分类</td>
        <td>项目编号</td>
        <td width="300">项目名称</td>
        <td>计划类别</td>
        <td>起始时间</td>
        <td>截止时间</td>
        <td width="110">项目经费金额</td>
        <td>项目状态</td>
    </tr>
    <tr>
        <td align="center">1.</td>
        <td><input type="text" name="zyxmly"  style="width:100%;height:26px" class ="text"value="">
        <input type="hidden" name="username"  style="width:100%;height:26px" class ="text"value="${username}"></td>
        <td><input type="text" name="zyxmlyfl"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="zyxmbh"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="zyxmmc"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="zyjhlb"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="zyqssj"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="zyjzsj"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="zyxmjfje"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="zyxmzt"  style="width:100%;height:26px" class ="text"value=""></td>
    </tr>
    
    <tr>
        <td colspan="10" class="blue" style="font-size:80%">注:1.在研项目指本平台在本年度新立项、在研、结题的所有政府项目、自选项目、受托项目，与本平台无关的项目不得列入； <br>&nbsp;&nbsp;&nbsp;
       2."项目来源"填写下达部门；<br>&nbsp;&nbsp;&nbsp;
       3."计划类别"按计划、专项、基金的名称据实填写；<br>&nbsp;&nbsp;&nbsp;
       4."项目状态"按新立项、在研、结题三种状态填写。"新立项"指当年立项开题的项目；"在研"指往年开题当年继续进行的项目；"结题"指往年开题并在当年完成研发工作结题的项目；"立项并结题"指当年立项开题并完成研发工作结题的项目。</td>
    </tr>
  
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="保存" class="button" />　
 <input type="button" name="Submit" value="下一步" class="button" onclick="window.location.href='table6.2.jsp'"/>　
    </div>
       </form>


</div>
</body>
</html>
