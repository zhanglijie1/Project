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
        <th colspan="7" align="left">表3-5 固定人员构成</th>
    <tr align="center">
        <td>职称</td>
        <td>正高职称</td>
        <td>副高职称</td>
        <td>中级职称</td>
        <td>初级职称</td>
        <td>其他</td>
        <td>合计</td>
    </tr>
    </tr>
        <tr>
        <td align="center">合计</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center">博士</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center">硕士</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center">其他</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>

</table>
<table border="1" width="1236" style="margin-bottom:10px;">
    <tr align="center">
        <tr align="center">
       
        <td>年龄\工作</td>
          <td>合计</td>
        <td>≥60</td>
        <td>45-59</td>
        <td>30-44</td>
        <td>＜30</td>
    </tr>
    <tr>
        <td align="center">科研开发人员</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center">其他</td>
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
    </tr>
     <tr>
        <td colspan="6" class="blue" style="font-size:80%">注:上半部分表格按学位、职称结构填写；下半部分表格按年龄、工作岗位结构填写。</td>
    </tr>
  
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="下一步" class="button" onclick="alert('保存成功！');"/>　
    </div>
       </form>


</div>
</body>
</html>
