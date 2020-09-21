<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table1.1</title>
<link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css" media="all" />


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
      <th class="tablestyle_title" >当前位置->统计表填报->八.开放合作情况</th>
 </tr>
</table>
<div style="margin-bottom:10px style="margin-top:10px;">
	<a href="table8.1.jsp"><button type="button" class="button">表8-1</button></a>
	<a href="table8.1.1.jsp"><button type="button" class="button">表8-1-1</button></a>
	<a href="table8.1.2.jsp"><button type="button" class="button">表8-1-2</button></a>
	<a href="table8.1.3.jsp"><button type="button" class="button">表8-1-3</button></a>
	<a href="table8.1.4.jsp"><button type="button" class="button">表8-1-4</button></a>
	<a href="table8.2.1.jsp"><button type="button" class="button">表8-2-1</button></a>
	<a href="table8.2.2.jsp"><button type="button" class="button">表8-2-2</button></a>
</div>
<form action="" method="post"  target="mainFrame" enctype="multipart/form-data" name="form" target="sypost" >
<table border="1" width="1236" style="margin-bottom:10px;">
  <tr bgcolor="#A9A9A9">
        <th colspan="5" align="left">表8-2 学术和技术交流情况</th>
    </tr>
    <tr bgcolor="#A9A9A9">
        <th colspan="5" align="left">表8-2-1 主办、承办学术（技术）会议汇总表</th>
    </tr>
    <tr align="center">
        <td width="300">合计</td>
        <td width="300">国际</td>
        <td width="300">全国</td>
        <td width="300">国内区域</td>
        <td width="300">省内</td>
    </tr>
    <tr height="25">
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="5" class="blue" style="font-size:80%">注：包括学术或技术指导委员会会议，同领域学术或技术交流会议。</td>
    </tr>
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="下一步" class="button" onclick="alert('保存成功！');"/>　
    </div>
       </form>


</div>
</body>
</html>
