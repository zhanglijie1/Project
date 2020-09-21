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
        <th colspan="7" align="left">表5-3 科技活动经费支出情况</th>
    </tr>
    <tr align="center">
        <td width="150">科技活动经费支出总额</td>
        <td width="150">人员工资及劳务费</td>
        <td width="150">基建费</td>
        <td width="150">仪器设备购置费</td>
        <td width="150">研发项目（课题）支出经费</td>
        <td width="150">日常运行和办公经费</td>
        <td width="150">其他支出</td>
    </tr>
    <tr height="25">
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="7" class="blue" style="font-size:80%">注:1."科技活动经费支出总额"由人员工资及劳务费、基建费、仪器设备购置费、研发项目支出经费、日常运行和办公经费及其他支出六部分组成，前五项不能归集的在其他支出中填报;<br>&nbsp;&nbsp;&nbsp;
       2."日常运行和办公经费"指除人员工资及劳务费之外的水、暖、电、办公用品、会议、差旅等保障运行的经费。</td>
    </tr>
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="下一步" class="button" onclick="alert('保存成功！');"/>　
    </div>
       </form>


</div>
</body>
</html>
