<%@ page import ="java.text.SimpleDateFormat"
import=" java.util.Date"
language="java" import="java.sql.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>平台维护</title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css" type="text/css" media="all" />


<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>
<body class="ContentBody">
<div class="MainDiv">
<%
	     Object message = request.getAttribute("message");
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	     </script>
	<%} %>
			 <%
			 String a=null;String b=null;String c=null;String d=null;String e=null;String f=null;String g=null;
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
<table  align="center" width="900" border="0px" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >当前位置->平台信息维护->平台信息维护</th>
 </tr>
</table>

<form action="WeihuServlet?method=update" method="post"  >
<table  align="center" border="1" width="900" style="margin-bottom:10px;">
    
    <tr align="center">
        <td width="50">平台编号
         <input type="hidden" class="hidden" name='username' style="width:100%;height:30px" value="${username}"></td>
       <td  width="400" > <input type="text" class="hidden" name='ptbh' style="width:100%;height:30px" value="<%=a%>"readonly></td>
        <td width="50">平台名称</td>
        <td width="400"><input type="text" class="text" name='ptmc' style="width:100%;height:30px" value="<%=b%>"></td>
     
    </tr>
    <tr align="center">
        <td width="50">依托单位</td>
       <td  width="400"><input type="text" class="text" name='ytdw' style="width:100%;height:30px" value="<%=c%>"></td>
        <td width="50"></td>
        <td width="400"></td>
     
    </tr>
    <tr align="center">
        <td width="50">平台级别</td>
       <td  width="400"><input type="text" class="text" name='ptjb' style="width:100%;height:30px" value="<%=d%>"></td>
        <td width="50">平台类型</td>
        <td width="400"><input type="text" class="text" name='ptlx' style="width:100%;height:30px" value="<%=e%>"></td>
     
    </tr>
     <tr align="center">
        <td width="50">批准文号</td>
       <td  width="400"><input type="text" class="text" name='pzwh' style="width:100%;height:30px" value="<%=f%>"></td>
        <td width="50">批准日期</td>
        <td width="400"><input type="text" class="text" name='pzrq' style="width:100%;height:30px" value="<%=g%>"></td>
     
    </tr>
   

    
  
       </table>
       
     <div style="width: 80%; text-align: center">
       <input type="submit" name="Submit" value="修改" class="button" />　
      <input type="button" name="Submit" value="取消" class="button" onclick="window.location.href='index.jsp'"/>　
    </div>
       </form>


</div>
</body>
</html>
