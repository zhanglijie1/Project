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
      <th class="tablestyle_title" >当前位置->统计表填报->九.成果转化和对外服务情况</th>
 </tr>
</table>
<div style="margin-bottom:10px style="margin-top:10px;">
	<a href="table9.1.1.jsp"><button type="button" class="button">表9-1-1</button></a>
	<a href="table9.1.2.jsp"><button type="button" class="button">表9-1-2</button></a>
	<a href="table9.2.1.jsp"><button type="button" class="button">表9-2-1</button></a>
	<a href="table9.2.2.jsp"><button type="button" class="button">表9-2-2</button></a>
	<a href="table9.3.1.jsp"><button type="button" class="button">表9-3-1</button></a>
	<a href="table9.3.2.jsp"><button type="button" class="button">表9-3-2</button></a>
</div>
<form action="" method="post"  target="mainFrame" enctype="multipart/form-data" name="form" target="sypost" >
<table border="1" width="1236" style="margin-bottom:10px;">
  <tr bgcolor="#A9A9A9">
        <th colspan="3" align="left">表9-2 技术咨询、技术服务合同情况</th>
    </tr>
    <tr bgcolor="#A9A9A9">
        <th colspan="3" align="left">表9-2-1 技术咨询、技术服务合同汇总表</th>
    </tr>
    <tr align="center">
        <td width="400">分类</td>
        <td width="400">项目数</td>
        <td width="400">合同金额（万元）</td>
    </tr>
    <tr>
        <td align="center">技术咨询合同</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center">技术服务合同</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center">合计</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="3" class="blue" style="font-size:80%">注：技术培训纳入技术服务。</td>
    </tr>
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="下一步" class="button" onclick="alert('保存成功！');"/>　
    </div>
       </form>


</div>
</body>
</html>
