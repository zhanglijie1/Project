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
        <th colspan="10" align="left">表3-7 现有固定人员、流动人员中高层次人才汇总表</th>
    </tr>
    <tr align="center">
        <td width="100">指标</td>
        <td width="100">院士</td>
        <td width="100">千人计划</td>
        <td width="100">万人计划</td>
        <td width="100">长江学者</td>
        <td width="100">国家杰出青年</td>
        <td width="100">其他国家级称号</td>
        <td width="100">省级称号</td>
    </tr>
    <tr>
        <td align="center">固定人员</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center">流动人员</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center">合计</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
  
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="下一步" class="button" onclick="alert('保存成功！');"/>　
    </div>
       </form>


</div>
</body>
</html>
