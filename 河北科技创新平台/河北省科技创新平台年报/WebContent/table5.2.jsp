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
        <th colspan="13" align="left">表5-1 政府资金和依托单位投入明细表</th>
    </tr>
    <tr align="center">
        <td colspan="5" width="400">政府资金</td>
        <td colspan="8" width="640">依托单位投入</td> 
    </tr>
    <tr align="center">
        <td rowspan="2" width="80">国家财政</td>
        <td rowspan="2" width="80">省级财政</td>
        <td rowspan="2" width="80">市级财政</td>
        <td rowspan="2" width="80">县级财政</td>
        <td rowspan="2" width="80">小计</td>
        <td colspan="2" width="160">年度运行经费</td>
        <td colspan="2" width="160">固定资产投资</td>
        <td colspan="2" width="160">科研项目（课题）经费</td>
        <td rowspan="2" width="80">其他</td>
        <td rowspan="2" width="80">小计</td>
    </tr>
    <tr align="center">
        <td width="80">人员工资</td>
        <td width="80">办公费用</td>
        <td width="80">设施</td>
        <td width="80">仪器设备</td>
        <td width="80">自主研发项目</td>
        <td width="80">合作研发项目</td>
    </tr>
    <tr height="25">
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr height="25">
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr height="25">
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="13" class="blue" style="font-size:80%">注：本表填写政府资金投入和依托单位投入两部分。“合作研发项目”指委托外单位（不包括共建单位）进行研发所投入的经费。</td>
    </tr>
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="下一步" class="button" onclick="alert('保存成功！');"/>　
    </div>
       </form>


</div>
</body>
</html>
