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
      <th class="tablestyle_title" >当前位置->统计表填报->七.年度研发成果产出情况</th>
 </tr>
</table>
<div style="margin-bottom:10px style="margin-top:10px;">
	<a href="table7.1.1.jsp"><button type="button">表7-1-1</button></a>
	<a href="table7.1.2.jsp"><button type="button">表7-1-2</button></a>
	<a href="table7.1.3.jsp"><button type="button">表7-1-3</button></a>
	<a href="table7.2.1.jsp"><button type="button">表7-2-1</button></a>
	<a href="table7.2.2.jsp"><button type="button">表7-2-2</button></a>
	<a href="table7.3.1.jsp"><button type="button">表7-3-1</button></a>
	<a href="table7.3.2.jsp"><button type="button">表7-3-2</button></a>
	<a href="table7.4.1.jsp"><button type="button">表7-4-1</button></a>
	<a href="table7.4.2.jsp"><button type="button">表7-4-2</button></a>
	<a href="table7.5.1.jsp"><button type="button">表7-5-1</button></a>
	<a href="table7.6.1.jsp"><button type="button">表7-6-1</button></a>
	<a href="table7.6.2.jsp"><button type="button">表7-6-2</button></a>
	<a href="table7.7.1.jsp"><button type="button">表7-7-1</button></a>
</div>
<form action="" method="post"  target="mainFrame" enctype="multipart/form-data" name="form" target="sypost" >
<table border="1" width="1236" style="margin-bottom:10px;">
<tr bgcolor="#A9A9A9">
        <th colspan="12" align="left">表7-1 发表论文专著</th>
    </tr>
    <tr bgcolor="#A9A9A9">
        <th colspan="12" align="left">表7-1-3 发表的重要论文列表（限10篇）</th>
    </tr>
    <tr align="center">
        <td width="50">序号</td>
        <td width="200">论文题目</td>
        <td width="150">发表时间</td>
        <td width="200">作者姓名(位次)</td>
        <td width="150">刊物名称</td>
        <td width="150">年、卷、期、页</td>
        <td width="150">期刊类别</td>
        <td width="150">国际索引SCI</td>
        <td width="150">国际索引EI</td>
        <td width="150">国际索引ISTP</td>
        <td width="150">他引次数</td>
        <td width="150">影响因子</td>
    </tr>
    <tr>
        <td align="center">1.</td>
        <td><input type="text" class="text" name='zzmc' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="text" name='zzmc' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="text" name='zzmc' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="text" name='zzmc' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="text" name='zzmc' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="text" name='zzmc' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="text" name='zzmc' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="text" name='zzmc' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="text" name='zzmc' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="text" name='zzmc' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="text" name='zzmc' style="width:100%;height:26px" value=""></td>
    </tr>
    
    <tr>
        <td colspan="12" class="blue" style="font-size:80%">注:1."期刊类别"指国际刊物、国内核心期刊、国内一般期刊，凡未正式发表的论文不得计入；<br>&nbsp;&nbsp;&nbsp;
        2.论文必须有平台的固定人员或流动人员署名以及平台单位署名，与平台没有权属关系的不计入；<br>&nbsp;&nbsp;&nbsp;
        3."年、卷、期、页":比如论文在某期刊的2015年第92卷第3期第28-29页发表,在表中填为2015,92(3):28-29。</td>
    </tr>
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="下一步" class="button" onclick="alert('保存成功！');"/>　
    </div>
       </form>


</div>
</body>
</html>
