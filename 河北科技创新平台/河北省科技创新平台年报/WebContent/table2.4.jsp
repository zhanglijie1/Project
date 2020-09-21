    <%@ page language="java" import="java.sql.*"  pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table1.1</title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css" type="text/css" media="all" />

<%
	     Object message = request.getAttribute("message");
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	     </script>
	<%} %>
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
      <th class="tablestyle_title" >当前位置->统计表填报->二.主要研究方向和体系结构</th>
 </tr>
</table>
<div style="margin-bottom:10px style="margin-top:10px;">
	<a href="table2.1.jsp"><button type="button" class="button">表2-1</button></a>
	<a href="table2.2.jsp"><button type="button" class="button">表2-2</button></a>
	<a href="table2.3.jsp"><button type="button" class="button">表2-3</button></a>
	<a href="table2.4.jsp"><button type="button" class="button">表2-4</button></a>
	<a href="table2.5.jsp"><button type="button" class="button">表2-5</button></a>
</div>
<form action="ErServlet?method=add4" method="post"   >
<table border="1" width="1236" style="margin-bottom:10px;">
   <tr bgcolor="#A9A9A9">
        <th colspan="4" align="left">表2-4 中试生产线（基地）</th>
    </tr>
    <tr align="center">
        <td width="50">序号</td>
        <td width="550">中试生产线(基地)名称</td>
        <td width="250">所在单位</td>
        <td width="150">操作</td>
    </tr>
        <%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hebei?useSSL=false", "root","199126");
				//使用Statement对象
				Statement stmt = con.createStatement();
				String s = "select * from er4 where username ='"
					 +session.getAttribute("username") + "'";
				ResultSet rs = stmt.executeQuery(s);

				int i=1;
				while (rs.next()) {
					int sno = rs.getInt(1);
					out.println("<tr><td>" + i++ + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>"+"</td>	</tr>");
					session.setAttribute("i", i);
				}
				rs.close();
				stmt.close();
				con.close();
			} catch (Exception e) {
				out.println("Exception:" + e.getMessage());
			}
    

		%>
    <tr>
        <td align="center">${i}</td>
        <td><input type="text" class="text" name='zsscxjdmc' style="width:100%;height:26px" value="">
        <input type="hidden" class="text" name='username' style="width:100%;height:26px" value="${username}"></td>
        <td><input type="text" class="text" name='szdw' style="width:100%;height:26px" value=""></td>
        <td><input type="submit" name="Submit" value="添加并保存" class="button" />　
         <input type="reset" name="qingkong" value="清空" class="button" onclick="alert('清空成功！');"/>　</td>
    </tr>
  
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="button" name="Submit" value="下一步" class="button" onclick="window.location.href='table2.5.jsp'"/>
    </div>
       </form>


</div>
</body>
</html>
