<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>左侧菜单栏</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	
}
-->
</style> 
<link href="css/css.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
function tupian(idt){
    var nametu="xiaotu"+idt;
    var tp = document.getElementById(nametu);
    tp.src="images/ico05.gif";//图片ico04为白色的正方形
	
	for(var i=1;i<30;i++)
	{
	  
	  var nametu2="xiaotu"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xiaotu'+i);
		if(tp2!=undefined)
	    {tp2.src="images/ico06.gif";}//图片ico06为蓝色的正方形
	  }
	}
}

function list(idstr){
	var name1="subtree"+idstr;
	var name2="img"+idstr;
	var objectobj=document.all(name1);
	var imgobj=document.all(name2);
	
	
	//alert(imgobj);
	
	if(objectobj.style.display=="none"){
		for(i=1;i<10;i++){
			var name3="img"+i;
			var name="subtree"+i;
			var o=document.all(name);
			if(o!=undefined){
				o.style.display="none";
				var image=document.all(name3);
				//alert(image);
				image.src="images/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="images/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="images/ico04.gif";
	}
}

</SCRIPT>

<body>
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">欢迎，<span class="left-font02">${username}</span></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[<a href="index1.jsp" target="_top" class="left-font01">退出</a>]
						[<a href="mainfra.html" target="mainFrame" class="left-font01">填报流程</a>]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		
      <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table01">
          <tr>
            <td height="29">
				<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img8" id="img8" src="images/nav02.gif" width="8" height="11" /></td>
						<td width="92%">
								<a>系统操作菜单</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>

		<!--  填报系统开始    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table01">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img8" id="img8" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('8');" >统计表在线填报</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree8" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu20" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="fengmian.jsp" target="mainFrame" class="left-font03" onClick="tupian('20');">封面</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="table1.1.jsp" target="mainFrame" class="left-font03" onClick="tupian('21');">一.基本信息</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu1" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="table2.1.jsp" target="mainFrame" class="left-font03" onClick="tupian('1');">二.主要研究方向和体系结构</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu2" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="table.3.1.jsp" target="mainFrame" class="left-font03" onClick="tupian('2');">三.人员情况</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu3" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="table4.1.jsp" target="mainFrame" class="left-font03" onClick="tupian('3');">四.科研用房和仪器设备</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu4" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="table5.1.jsp" target="mainFrame" class="left-font03" onClick="tupian('4');">五.年度经费筹集和支出情况</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu5" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="table6.1.jsp" target="mainFrame" class="left-font03" onClick="tupian('5');">六.年度研发项目情况</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu6" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="table7.1.1.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">七.年度研发成果产出情况</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu7" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="table8.1.jsp" target="mainFrame" class="left-font03" onClick="tupian('7');">八.开放合作情况</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu8" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="table9.1.1.jsp" target="mainFrame" class="left-font03" onClick="tupian('8');">九.成果转化和对外服务情况</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu9" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="table10.1.jsp" target="mainFrame" class="left-font03" onClick="tupian('9');">十.人才培养情况</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="shouci2.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">平台维护</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="shouci2.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">平台维护</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="shouci2.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">平台维护</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="shouci2.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">平台维护</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="shouci2.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">平台维护</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="shouci2.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">平台维护</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="shouci2.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">平台维护</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="shouci2.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">平台维护</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="shouci2.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">平台维护</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="shouci2.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">平台维护</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="shouci2.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">平台维护</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="shouci2.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">平台维护</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="shouci2.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">平台维护</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="shouci2.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">平台维护</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="shouci2.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">平台维护</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="shouci2.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">平台维护</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="shouci2.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">平台维护</a></td>
				</tr>
      </table>
		<!--  填报系统结束    -->

		

		<!--  提交系统开始    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table01">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img7" id="img7" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('7');" >统计表提交上报</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		
		<!--  提交系统结束    -->

        <!--  查看系统开始    -->

     	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table01">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img9" id="img9" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('9');" >统计表查看</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>

		<table id="subtree9" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="22" ><img id="xiaotu22" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="a.jsp" target="mainFrame" class="left-font03" 
						onClick="tupian('22');">查询</a></td>
				</tr>
				<tr>
				  <td width="9%" height="23" ><img id="xiaotu23" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="b.jsp" target="mainFrame" class="left-font03" 
						onClick="tupian('23');">图谱</a></td>
				</tr>
				
				<tr>
				  <td width="9%" height="23" ><img id="xiaotu24" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="achakan.jsp" target="mainFrame" class="left-font03" 
						onClick="tupian('24');">调查表查看</a></td>
				</tr>
					<tr>
				  <td width="9%" height="23" ><img id="xiaotu25" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="achakan.jsp" target="mainFrame" class="left-font03" 
						onClick="tupian('25');">树状查询</a></td>
				</tr>
			
      </table>
		
		<!--  查看系统结束    -->

	  <!--  用户系统开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table01">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img2" id="img2" src="images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('2');" >用户信息查看</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	

	  <!--  用户系统结束    -->

	 
		<!--  个人信息结束    -->

	  </TD>
  </tr>
  
</table>
</body>
</html>
