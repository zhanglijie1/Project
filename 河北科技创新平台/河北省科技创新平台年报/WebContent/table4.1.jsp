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
      <th class="tablestyle_title" >当前位置->统计表填报->四.科研用房和仪器设备</th>
 </tr>
</table>
<div style="margin-bottom:10px style="margin-top:10px;">
	<a href="table4.1.jsp"><button type="button" class="button">表4-1</button></a>
	<a href="table4.2.jsp"><button type="button" class="button">表4-2</button></a>
	
</div>
<form action="" method="post"  target="mainFrame" enctype="multipart/form-data" name="form" target="sypost" >
<table border="1" width="1236" style="margin-bottom:10px;">
   <tr bgcolor="#A9A9A9">
        <th colspan="5" align="left">表4-1 科研和办公用房</th>
    </tr>
    <tr align="center">
        <td width="200">指标</td>
        <td width="200">建筑面积合计</td>
        <td width="200">其中：科研用房</td>
        <td width="200">其中：办公用房</td>
        <td width="200">其他用房</td>   
    </tr>
    <tr>
        <td align="center">年末总数</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center">本年增加</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center">本年减少</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
       </table>
       
     <div style="width: 80%; text-align: center">
       <input type="submit" name="Submit" value="保存" class="button" onclick="alert('保存成功！');"/>　
      <input type="submit" name="Submit" value="保存并下一步" class="button" onclick="alert('保存成功！');"/>　
    </div>
       </form>


</div>
</body>
</html>
