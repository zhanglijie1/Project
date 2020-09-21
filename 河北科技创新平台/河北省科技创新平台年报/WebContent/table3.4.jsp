<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table1.1</title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css" type="text/css" media="all" />


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

<form action="" method="post"  target="mainFrame" enctype="multipart/form-data" name="form" target="sypost" >
<table border="1" width="1236" style="margin-bottom:10px;">
 <tr bgcolor="#A9A9A9">
        <th colspan="4" align="left">表3-4 人员基本情况汇总表 </th>
    </tr>
    <tr align="center">
        <td width="200">指标</td>
        <td width="300">年末总人数</td>
        <td width="300">固定人员</td>
        <td width="200">流动人员</td>
    </tr>
    <tr>
        <td align="center">年末总数</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center">本年新增</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center">本年减少</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="4" class="blue" style="font-size:80%">注:1."年末总人数"为本年度截止12月31日的"固定人员"与"流动人员"之和；<br>&nbsp;&nbsp;&nbsp;
        2."本年新增"为年内新进人员数，"本年减少"为年内流出人员数。</td>
    </tr>
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="下一步" class="button" onclick="alert('保存成功！');"/>　
    </div>
       </form>


</div>
</body>
</html>
