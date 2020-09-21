<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
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
      <th class="tablestyle_title" >当前位置->统计表填报->三.人员情况</th>
 </tr>
</table>
<div style="margin-bottom:10px style="margin-top:10px;">
	<a href="table.3.1.jsp"><button type="button" class="button">表3-1</button></a>
	<a href="table3.2.jsp"><button type="button" class="button">表3-2</button></a>
	<a href="table3.3.jsp"><button type="button" class="button">表3-3</button></a>
	<a href="table3.4.jsp"><button type="button" class="button">表3-4</button></a>
	<a href="table3.5.jsp"><button type="button" class="button">表3-5</button></a>
	<a href="table3.6.jsp"><button type="button" class="button">表3-6</button></a>
	<a href="table3.7.jsp"><button type="button" class="button">表3-7</button></a>
		<a href="table3.8.jsp"><button type="button" class="button">表3-8</button></a>
</div>
<form action="SanServlet?method=add2" method="post" >
<table border="1" width="1236" style="margin-bottom:10px;">
  <tr bgcolor="#A9A9A9">
        <th colspan="9" align="left">表3-2 年内新增固定人员列表</th>
    </tr>
    <tr align="center">
        <td>姓名</td>
        <td width="50">性别</td>
        <td>出生年月</td>
        <td>学历</td>
        <td>学位</td>
        <td>毕业院校</td>
        <td>所学专业</td>
        <td>职称</td>
        <td>人才层次</td>
    </tr>
     <%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hebei?useSSL=false", "root","199126");
				//使用Statement对象
				Statement stmt = con.createStatement();
				String s = "select * from san2 where username ='"
					 +session.getAttribute("username") + "'";
				ResultSet rs = stmt.executeQuery(s);

				int i=1;
				while (rs.next()) {
					
					out.println("<tr><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td> <td>" + rs.getString(5) + "</td><td>" + rs.getString(6) + "</td><td>" + rs.getString(7) + "</td><td>" + rs.getString(8) + "</td><td>" + rs.getString(9) + "</td><td>" + rs.getString(10) + "</td>	</tr>");
					session.setAttribute("i", i);
				}
				rs.close();
				stmt.close();
				con.close();
			} catch (Exception e) {
				out.println("Exception:" + e.getMessage());
			}
    

		%>
    <tr height="25">
        <td><input type="text" name="xzname"  style="width:100%;height:26px" class ="text"value="">
        <input type="hidden" name="username"  style="width:100%;height:26px" class ="text"value="${username}"></td>
        <td><input type="text" name="xzsex"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xzbirth"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xzxl"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xzxw"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xzbyyx"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xzsxzy"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xzzc"  style="width:100%;height:26px" class ="text"value=""></td>
        <td><input type="text" name="xzrccc"  style="width:100%;height:26px" class ="text"value=""></td>
    </tr>
    
    <tr>
        <td colspan="9" class="blue" style="font-size:80%">注：人才层次包括院士、千人计划、万人计划、长江学者、国家杰出青年、其他国家级称号、省级称号</td>
    </tr>
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="下一步" class="button"/>　
    </div>
       </form>


</div>
</body>
</html>
