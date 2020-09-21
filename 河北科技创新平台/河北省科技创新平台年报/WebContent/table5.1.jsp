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
      <th class="tablestyle_title" >当前位置->统计表填报->五.年度经费筹集和支出情况</th>
 </tr>
</table>
<div style="margin-bottom:10px style="margin-top:10px;">
	<a href="table5.1.jsp"><button type="button" class="button">表5</button></a>
	<a href="table5.2.jsp"><button type="button" class="button">表5-1</button></a>
	<a href="table5.3.jsp"><button type="button" class="button">表5-2</button></a>
	<a href="table5.4.jsp"><button type="button" class="button">表5-3</button></a>
</div>
<form action="" method="post"  target="mainFrame" enctype="multipart/form-data" name="form" target="sypost" >
<table border="1" width="1236" style="margin-bottom:10px;">
   <tr bgcolor="#A9A9A9">
        <th colspan="5" align="left">表5 经费筹集汇总表</th>
    </tr>
    <tr align="center">
        <td width="200">筹集经费总额</td>
        <td width="200">政府资金</td>
        <td width="200">依托单位投入</td>
        <td width="200">共建单位投入</td>
        <td width="200">对外经营服务收入</td>
    </tr>
    <tr height="25">
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="5" class="blue" style="font-size:80%">注：“筹集经费总额”由财政资金、依托单位投入、共建单位投入和对外经营服务收入四部分组成，本表由系统根据表5-1、5-2自动生成，不必填写。</td>
    </tr>
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="下一步" class="button" onclick="alert('保存成功！');"/>　
    </div>
       </form>


</div>
</body>
</html>
