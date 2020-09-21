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
<form action="SevenServlet?method=add11" method="post"  target="mainFrame"  >
<table border="1" width="1236" style="margin-bottom:10px;">
<tr bgcolor="#A9A9A9">
        <th colspan="8" align="left">7-1 发表论文专著</th>
    </tr>
    <tr bgcolor="#A9A9A9">
        <th colspan="8" align="left">表7-1-1 发表论文汇总表    单位：篇</th>
    </tr>
    <tr align="center">
        <td colspan="4" width="500">刊物发表论文</td>
        <td colspan="4" width="500">其中：国际三大索引</td>
    </tr>
    <tr align="center">
        <td>国际刊物</td>
        <td>国内核心</td>
        <td>国内一般</td>
        <td>合计</td>
        <td>SCI</td>
        <td>EI</td>
        <td>ISTP</td>
        <td>小计</td>
    </tr>
    <tr height="25">
        <td><input type="text" class="gjkw" name='gjkw' style="width:100%;height:26px" value=""> 
         <input  type="hidden" class="text" name='username' style="width:100%;height:26px" value="${username}"></td>
        <td><input type="text" class="gnkx" name='gnkx' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="gnyb" name='gnyb' style="width:100%;height:26px"value=""></td>
        <td><!-- <input type="text" class="hj" name='hj' style="width:100%;height:26px" value=""> --></td>
        <td><input type="text" class="sci" name='sci' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="ei" name='ei' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="isip" name='istp' style="width:100%;height:26px"value=""></td>
        <td><!-- <input type="text" class="xj" name='xj' style="width:100%;height:26px" value=""> --></td>
    </tr>
  
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="保存" class="button" "/>　
    </div>
       </form>


</div>
<script type="text/javascript">

    $('.gjkw').keyup(function (){
	var gjkw=Integer.parseInt($(".gjkw").val());
	var gjkx=Integer.parseInt($(".gjkx").val());
	gnyb=Integer.parseInt($(".gnyb").val());
	var hj=gjkw+gjkx+gnyb;
	$('.hj').html(hj);
	alert(hj);
	
	function textChanged2(){
		var gjkw=Integer.parseInt($(".gjkw").val());
		var gjkx=Integer.parseInt($(".gjkx").val());
		gnyb=Integer.parseInt($(".gnyb").val());
		var hj=gjkw+gjkx+gnyb;
		$('.hj').html(hj);
		}
	function textChanged3(){
		var gjkw=Integer.parseInt($(".gjkw").val());
		var gjkx=Integer.parseInt($(".gjkx").val());
		gnyb=Integer.parseInt($(".gnyb").val());
		var hj=gjkw+gjkx+gnyb;
		$('.hj').html(hj);
		}
	var hj=gjkw+gjkx+gnyb;
	$('.hj').html(hj);
	sci=Integer.parseInt($(".sci").val());
	ei=Integer.parseInt($(".ei").val());
	isip=Integer.parseInt($(".isip").val());

</script>
</body>
</html>
