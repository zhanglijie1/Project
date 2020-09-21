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
      <th class="tablestyle_title" >当前位置->统计表填报->八.开放合作情况</th>
 </tr>
</table>
<div style="margin-bottom:10px style="margin-top:10px;">
	<a href="table8.1.jsp"><button type="button" class="button">表8-1</button></a>
	<a href="table8.1.1.jsp"><button type="button" class="button">表8-1-1</button></a>
	<a href="table8.1.2.jsp"><button type="button" class="button">表8-1-2</button></a>
	<a href="table8.1.3.jsp"><button type="button" class="button">表8-1-3</button></a>
	<a href="table8.1.4.jsp"><button type="button" class="button">表8-1-4</button></a>
	<a href="table8.2.1.jsp"><button type="button" class="button">表8-2-1</button></a>
	<a href="table8.2.2.jsp"><button type="button" class="button">表8-2-2</button></a>
</div>
<form action="" method="post"  target="mainFrame" enctype="multipart/form-data" name="form" target="sypost" >
<table border="1" width="1236" style="margin-bottom:10px;">
   <tr bgcolor="#A9A9A9">
        <th colspan="5" align="left">表8-1 合作研发项目</th>
    </tr>
    <tr bgcolor="#A9A9A9">
        <th colspan="5" align="left">表8-1 合作研发项目汇总表</th>
    </tr>
    <tr align="center">
        <td rowspan="2" width="200"></td>
        <td colspan="2" width="400">合同项目数</td>
        <td colspan="2" width="400">合同金额</td>
    </tr>
    <tr>
        <td width="150"></td>
        <td>其中：当年新立项</td>
        <td width="150"></td>
        <td>其中：当年新立项合同金额</td>
    </tr>
    <tr>
        <td>合计</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>联合研发项目</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>委托研发项目</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>受托研究项目</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>引进消化吸收再创新项目</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="5" class="blue" style="font-size:80%">注:1."联合研发项目"指本平台与共建单位之外的其他单位联合研究或开发的项目；<br>&nbsp;&nbsp;&nbsp;
        2."委托研发项目"指本平台委托共建单位之外的其他单位进行研究或开发的项目；<br>&nbsp;&nbsp;&nbsp;
        3."受托研究项目"指共建单位之外的其他单位委托本平台进行研究或开发的项目；<br>&nbsp;&nbsp;&nbsp;
        4."引进消化吸收再创新项目”指本平台引进他人技术成果进行二次开发的集成创新项目。</td>
    </tr>
  
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="下一步" class="button" onclick="alert('保存成功！');"/>　
    </div>
       </form>


</div>
</body>
</html>
