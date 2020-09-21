<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "com.hjf.dao.TenDao"
import ="java.util.List"
import= "com.hjf.entity.Ten" 
import="java.sql.*"
import=" java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table10.1</title>
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
      <th class="tablestyle_title" >当前位置->统计表填报->十.人才培训情况</th>
 </tr>
</table>
<div style="margin-bottom:10px style="margin-top:10px;">
	<a href="table10.1.jsp"><button type="button" class="button">表10-1</button></a>
	<a href="table10.2.jsp"><button type="button" class="button">表10-2</button></a>
	
</div>

<form action="TenServlet?method=add1" method="post"   >
<table border="1" width="1236" style="margin-bottom:10px;">
  <tr bgcolor="#A9A9A9">
        <th colspan="5" align="left">表10-1 现有人才联合培养机构</th>
    </tr>
    <tr align="center">
        <td width="50">序号</td>
        <td width="400">类别</td>
        <td width="400">名称</td>
        <td width="200">成立时间</td>
        <td width="200">联建单位</td>
    </tr>
    <%

/**List<Ten> table101=TenDao.list();
String a=null;
String b=null;
String c=null;
String d=null;
String e=null;*/

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hebei?useSSL=false", "root","199126");
	//使用Statement对象
	Statement stmt = con.createStatement();
	String s = "select * from Ten1 where username ='"
		 +session.getAttribute("username") + "'";
	ResultSet rs = stmt.executeQuery(s);
	List<Ten> list = new ArrayList<>();
	Ten bean = null;
	int i=1;
	while (rs.next()) {
		int id = rs.getInt("id");
		String username2 = rs.getString("username");
		String xyrclb2 = rs.getString("xyrclb");
		String xyrcmc2 = rs.getString("xyrcmc");
		String xyrcclsj2 = rs.getString("xyrcclsj");
		String xyrcljdw2 = rs.getString("xyrcljdw");
		/*bean = new Ten(id, username2, xyrclb2, xyrcmc2, xyrcclsj2, xyrcljdw2);
		list.add(bean);
		int i=list.size()-1;
	
		if(!list.isEmpty()){
			 a=list.get(i).getA();
			 b=list.get(i).getB();
			 c=list.get(i).getC();
			 d=list.get(i).getD();
			 e=list.get(i).getUsername();
			
		}**/
		
		out.println("<tr><td>" + i++ + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6) + "</td>	</tr>");
		session.setAttribute("i", i);
	}
	rs.close();
	stmt.close();
	con.close();
} catch (Exception e1) {
	out.println("Exception:" + e1.getMessage());
	
}


%>
    <tr>
        <td align="center">1.</td>
        <td><input type="text" class="text" name='xyrclb' style="width:100%;height:26px" value="">
        <input type="hidden" class="text" name='username' style="width:100%;height:26px" value="${username}"></td>
        <td><input type="text" class="text" name='xyrcmc' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="text" name='xyrcclsj' style="width:100%;height:26px" value=""></td>
        <td><input type="text" class="text" name='xyrcljdw' style="width:100%;height:26px" value=""></td>
    </tr>
   
    <tr>
        <td colspan="5" class="blue" style="font-size:80%">注：类型包括院士工作站、博士后流动站、博士生培养基地、硕士生培养基地、本（专）科生实习基地等，按序填写。填写现在已有的人才联合培养机构。</td>
    </tr>
  
       </table>
       
     <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="保存" class="button" />　
    </div>
       </form>


</div>
</body>
</html>
