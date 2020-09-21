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
      <th class="tablestyle_title" >当前位置->统计表填报->六.年度研发项目情况</th>
 </tr>
</table>
<div style="margin-bottom:10px style="margin-top:10px;">
	<a href="table6.1.jsp"><button type="button" class="button">表6-1</button></a>
	<a href="table6.2.jsp"><button type="button" class="button">表6-2</button></a>
</div>
<form action="" method="post"  target="mainFrame" enctype="multipart/form-data" name="form" target="sypost" >
<table border="1" width="1236" style="margin-bottom:10px;">
  <tr bgcolor="#A9A9A9">
        <th colspan="6" align="left">表6-2 在研项目汇总表</th>
    </tr>
    <tr align="center">
        <td colspan="2" rowspan="2" width=""></td>
        <td colspan="2" width="">在研项目数</td>
        <td colspan="2" width="">在研项目金额</td>
    </tr>
    <tr>
        <td width="150"></td>
        <td>其中：当年新立项</td>
        <td width="150"></td>
        <td>其中：当年新立项</td>
    </tr>
    <tr>
        <td colspan="2" align="center">合计</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td rowspan="5" width="100" align="center">政府项目</td>
        <td width="100" align="center">国家级</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center">省级</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center">市级</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center">县级</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center">小计</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2" align="center">自选项目</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2" align="center">受托项目</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="10" class="blue" style="font-size:80%">注：政府项目指国家、省、市、县财政资金支持的项目。自选项目含创新平台自主立项的独自研发项目和主动与他人合作的研发项目。受托项目指创新平台接受外 单位委托的独立研发项目和合作研发项目。</td>
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
