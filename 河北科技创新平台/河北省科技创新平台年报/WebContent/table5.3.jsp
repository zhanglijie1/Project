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
        <th colspan="12" align="left">表5-2 共建单位投入和对外经营服务收入明细表</th>
    </tr>
    <tr align="center">
        <td colspan="7" width="630">政府资金</td>
        <td colspan="5" width="450">依托单位投入</td> 
    </tr>
    <tr align="center">
        <td colspan="2" width="180">年度运行经费</td>
        <td colspan="2" width="180">固定资产投资</td>
        <td rowspan="2"width="90">科研项目（课题）经费</td>
        <td rowspan="2" width="90">其他</td>
        <td rowspan="2" width="90">小计</td>
        <td rowspan="2" width="90">联合研发</td>
        <td rowspan="2" width="90">技术转让</td>
        <td rowspan="2" width="90">技术咨询服务</td>
        <td rowspan="2" width="90">其他</td>
        <td rowspan="2" width="90">小计</td>
    </tr>
    <tr align="center">
        <td width="90">人员工资</td>
        <td width="90">办公费用</td>
        <td width="90">设施</td>
        <td width="90">仪器设备</td>
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
    </tr>
    <tr>
        <td colspan="12" class="blue" style="font-size:80%">注:1.本表填写共建单位投入和对外经营服务收入两部分。所有共建单位的投入合并填写;<br>&nbsp;&nbsp;&nbsp;
        2.对外经营服务收入中“联合研发”指外单位委托本平台进行研发的收入。</td>
    </tr>
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="下一步" class="button" onclick="alert('保存成功！');"/>　
    </div>
       </form>


</div>
</body>
</html>
