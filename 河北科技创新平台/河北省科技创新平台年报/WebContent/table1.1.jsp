<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
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
<%
	     Object message = request.getAttribute("message");
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	     </script>
	<%} %>
	
	 <%
			 String a="";String b="";String c="";String d="";String e="";String f="";String g="";
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hebei?useSSL=false", "root","199126");
				//使用Statement对象
				Statement stmt = con.createStatement();
				String s = "select * from weihu where username ='"
					 +session.getAttribute("username") + "'";
				ResultSet rs = stmt.executeQuery(s);

				int i=1;
				while (rs.next()) {
					a=rs.getString(2);
					b=rs.getString(3);
					c=rs.getString(4);
					d=rs.getString(5);
					e=rs.getString(6);
					f=rs.getString(7);
					g=rs.getString(8);
					
					
				}
				rs.close();
				stmt.close();
				con.close();
			} catch (Exception e1) {
				out.println("Exception:" + e1.getMessage());
			}
    

		%>
<body class="ContentBody">
  <form action="jibenServlet?method=add" method="post"  >
<div class="MainDiv">
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >当前位置->统计表填报->1.基本信息</th>
  </tr>
   <!--startprint-->
  </table>
 <table width="1236px" border="1px">
        	<tr colspan="6" style="text-align:left">&nbsp;一、基本信息</th>
    				</tr>
<!-- 1到3行 -->
    				<tr>
    					<td>平台名称</td>
    					<td colspan="2"><%=b %>
    					<input type="hidden" id="ptmc" name="username" value="${username}" style="width:100%;height:26px"/></td>
    					<td>平台编号</td>
    					<td colspan="2"><%=a %></td>
    				</tr>
    				<tr>
    					<td>批准年月</td>
    					<td colspan="2"><%=g %></td>
    					<td>批准文号</td>
    					<td colspan="2"><%=f %></td>
    				</tr>
    				<tr>
    					<td>技术领域</td>
    					<td colspan="5" style="background-color:#FFFFFF">
    						<select id="jsly" name="jsly">
    							<option value="测试一">测试一</option>
    							<option value="测试二">测试二</option>
    						</select>
    					</td>
    				</tr>
<!-- 4到6行 -->
    				<tr>
    					<td>平台级别</td>
    					<td colspan="2" style="background-color:#FFFFFF">
    						<select id="ptjb" name="ptjb">
    							<option value="<%=d%>"><%=d %></option>
    							
    						</select>
						</td>
    					<td>所在市县（区）</td>
    					<td colspan="2"><input type="text" id="szsx" name="szsx" style="width:100%;height:26px"/></td> 
    				</tr>
    				<tr>
    					<td>平台组织形态</td>
    					<td colspan="2" style="background-color:#FFFFFF">
    						<select id="ptzzxt" name="ptzzxt">
    							<option value="独立法人">独立法人</option>
    							<option value="企业法人">企业法人</option>
    							<option value="依托单位独自建设">依托单位独自建设</option>
    						</select>
    					</td>
    					<td>京津冀共建</td>
    					<td colspan="2" style="background-color:#FFFFFF">
    						<select id="jjjgj" name="jjjgj">
    							<option value="是">是</option>
    							<option value="否">否</option>
    						</select>
    					</td>
    				</tr>
    				<tr>
    					<td>服务的国民经济行业</td>
    					<td style="background-color:#FFFFFF">1.<input type="text" id="fwgmjj1" name="fwgmjj1" style="width:90%;height:26px"/></td>
    					<td style="background-color:#FFFFFF">2.<input type="text" id="fwgmjj2" name="fwgmjj2" style="width:90%;height:26px"/></td>
    					<td colspan="3" style="background-color:#FFFFFF">3.<input type="text" id="fwgmjj3" name="fwgmjj3" style="width:90%;height:26px"/></td>
    				</tr>
<!-- 7到9行 -->
    				<tr>
    					<td	>所属的主要学科</td>
    					<td style="background-color:#FFFFFF">1.<input type="text" id="ssxk1" name="ssxk1" style="width:90%;height:26px"/></td>
    					<td style="background-color:#FFFFFF">2.<input type="text" id="ssdxk2" name="ssxk2" style="width:90%;height:26px"/></td>
    					<td colspan="3" style="background-color:#FFFFFF">3.<input type="text" id="ssxk3" name="ssxk3" style="width:90%;height:26px"/></td>
    				</tr>
    				<tr>
    					<td>依托单位名称</td>
    					<td colspan="2"><input type="text" id="ytdwmc" name="ytdwmc" value="<%=c%>"style="width:100%;height:26px"/></td>
    					<td>依托单位组织机构代码(社会信用代码)</td>
    					<td colspan="2"><input type="text" id="ytdwdm" name="ytdwdm" style="width:100%;height:26px"/></td>
    				</tr>
    				<tr>
    					<td>依托单位法人代表姓名</td>
    					<td colspan="2"><input type="text" id="ytdwxm" name="ytdwxm" style="width:100%;height:26px"/></td>
    					<td>办公电话</td>
    					<td colspan="2"><input type="text" id="bgdh" name="bgdh" style="width:100%;height:26px"/></td>
    				</tr>
<!-- 10到12行 -->    				
    				<tr>
    					<td>依托单位类型</td>
    					<td colspan="5" style="background-color:#FFFFFF">
    						<select id="ytdwlx" name="ytdwlx">
    							<option value="科研机构">科研机构</option>
    						</select>
    					</td>
    				</tr>
    				<tr>
    					<td>共建单位</td>
    					<td colspan="5" style="background-color:#FFFFFF;font-size:10px">
    						<input type="text" id="gjdw" name="gjdw" style="width:50%;height:26px"/>
    						<font color="#FF0000">*&nbsp;一次填写共建单位，以“:”区分</font>
    					</td>
    				</tr>
    				<tr>
    					<td>平台网络名称</td>
    					<td colspan="2"><input type="text" id="ptwlmc" name="ptwzmc" style="width:100%;height:26px"/></td>
    					<td>网址</td>
    					<td colspan="2"><input type="text" id="wz" name="wz" style="width:100%;height:26px"/></td>
    				</tr>
<!-- 13到15行 -->     				
    				<tr>
    					<td>平台通讯地址</td>
    					<td colspan="2"><input type="text" id="pttxdz" name="pttxdz" style="width:100%;height:26px"/></td>
    					<td>邮编</td>
    					<td colspan="2"><input type="text" id="yb" name="yb" style="width:100%;height:26px"/></td>
    				</tr>
    				<tr>
    					<th colspan="6" style="text-align:left">&nbsp;平台主任（院长）</th>
    				</tr>
    				<tr>
    					<td>姓名</td>
    					<td colspan="2"><input type="text" id="xm" name="name" style="width:100%;height:26px"/></td>
    					<td>性别</td>
    					<td colspan="2" style="background-color:#FFFFFF">
    						<select id="xb" name="sex">
    							<option value="男">男</option>
    							<option value="女">女</option>
    						</select>
    					</td>
    				</tr>
<!-- 16到18行 -->     				
    				<tr>
    					<td>出生年月</td>
    					<td colspan="2"><input type="text" id="csny" name="birth" style="width:100%;height:26px"/></td>
    					<td>职称</td>
    					<td colspan="2" style="background-color:#FFFFFF">
    						<select id="zc" name="zc">
    							<option value="研究员（自然科学）">研究员（自然科学）</option>
    							<option value="教师">教师</option>
    						</select>
    					</td>
    				</tr>
    				<tr>
    					<td>所学专业</td>
    					<td colspan="2"><input type="text" id="sxzy" name="sxzy" style="width:100%;height:26px"/></td>
    					<td>学历</td>
    					<td colspan="2" style="background-color:#FFFFFF">
    						<select id="xl" name="xl">
    							<option value="学士">学士</option>
    							<option value="研究生">研究生</option>
    							<option value="硕士研究生">硕士研究生</option>
    							<option value="博士研究生">博士研究生</option>
    						</select>
    					</td>
    				</tr>
    				<tr>
    					<td>学位</td>
    					<td colspan="2" style="background-color:#FFFFFF">
    						<select id="xw" name="xw">
    							<option value="学士">学士</option>
    							<option value="研究生">研究生</option>
    							<option value="硕士">硕士</option>
    							<option value="博士">博士</option>
    						</select>
    					</td>
    					<td>办公电话</td>
    					<td colspan="2"><input type="text" id="bgdh" name="bgdh1" style="width:100%;height:26px"/></td>
    				</tr>
<!-- 19-21行 -->    				
    				<tr>
    					<td>手机</td>
    					<td colspan="2"><input type="text" id="sj" name="phone" style="width:100%;height:26px"/></td>
    					<td>E-mail地址</td>
    					<td colspan="2"><input type="text" id="email" name="email" style="width:100%;height:26px"/></td>
    				</tr>
    				<tr>
    					<td colspan="6" style="background-color:#FFFFFF;font-size:10px">
    						<font color="#3333FF">注：1.“平台编号”：与用户名相同，有平台批准单位同意配置派发。<br/>
    						&nbsp;&nbsp;&nbsp;&nbsp;2.“所在市县（区）”：从行政区域代码中选择。<br/>
    						&nbsp;&nbsp;&nbsp;&nbsp;3.“所属的主要学科”：按国家标准（学科分类与代码）
    						（GB/T 13745-2009）按国家学科分类，填写三级小类。<br/>
    						&nbsp;&nbsp;&nbsp;&nbsp;4.“依托单位组织机构代码”：填写依托单位的法人机构代码或社会信用代码。<br/>
    						&nbsp;&nbsp;&nbsp;&nbsp;5.“平台通讯地址”：是指平台办公所在地地址。</font>
    					</td>
    				</tr>
        </tbody>
    </table>
    <!--endprint-->
    <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="保存" class="button"/>　
			
	  <input type="submit" name="Submit2" value="保存并下一步" class="button" onclick="window.history.go(-1);"/>
    </div>

</div>
 <input type="button" onclick="doPrint()" value="打印"/>
</form>
</body>
<script>
    function doPrint() {

        bdhtml = window.document.body.innerHTML;
        sprnstr = "<!--startprint-->";
        eprnstr = "<!--endprint-->";
        prnhtml = bdhtml.substr(bdhtml.indexOf(sprnstr) + 17);
        prnhtml = prnhtml.substring(0, prnhtml.indexOf(eprnstr));

        //window.document.body.innerHTML =document.getElementById("mainbody").innerHTML;
        //window.print();

        window.document.body.innerHTML = prnhtml;
        window.print();
        window.document.body.innerHTML = bdhtml;
    }
</script>
</html>
