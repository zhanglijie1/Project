<%@ page language="java"
 import="java.sql.*" 
import ="java.util.List"
import=" java.util.ArrayList"
import="com.hjf.entity.fengmian"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>table1.1</title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css" type="text/css" media="all" />


<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>
<body class="ContentBody">
<%
	     Object message = request.getAttribute("message");
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	     </script>
	<%} %> <%
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
	<%
			 String a2="";String b2="";String c2="";String d2="";String e2="";String f2="";String g2="";String h2="";
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hebei?useSSL=false", "root","199126");
				//使用Statement对象
				Statement stmt = con.createStatement();
				String s = "select * from fengmian where username ='"
					 +session.getAttribute("username") + "'";
				ResultSet rs = stmt.executeQuery(s);
				List<fengmian> list = new ArrayList<>();
						fengmian bean = null;
				while (rs.next()) {
					
				String a1=rs.getString(2);
				String b1=rs.getString(3);
				String c1=rs.getString(4);
				String d1=rs.getString(5);
				String e1=rs.getString(6);
				String f1=rs.getString(7);
				String g1=rs.getString(8);
				String h1=rs.getString(9);
					
			 bean=new fengmian(h1,a1,b1,c1,d1,e1,f1,g1);
				list.add(bean);
				}
				int i=list.size()-1;
				if(list.size()>0){
					
					a2=list.get(i).getGuanlibumen();
					b2=list.get(i).getName();
					d2=list.get(i).getBumen();
					c2=list.get(i).getTelephone();
					e2=list.get(i).getPhone();
					f2=list.get(i).getEmail();
					g2=list.get(i).getTime();
					
					
				}
				rs.close();
				stmt.close();
				con.close();
			} catch (Exception e10) {
				out.println("Exception:" + e10.getMessage());
			}
    %>
	
<form action="FengmianServlet?method=add" method="post"   >
<div class="MainDiv">
 <!--startprint-->
<table width="100%" border="0px" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >当前位置->统计表填报->封面</th>
 </tr>
  <table width="1250px" border="1px">
    <thead>
    <tr ><th colspan=4 style="text-align:left">河北省科技创新平台年度统计表（2019）</th></tr>
    </thead>
    <tbody>
    <tr>
        <td>平台名称：</td>
        <td><%=b %></td>
        <td>平台类型：</td>
        <td><%=d %></td>
    </tr>
    <tr>
        <td>依托单位：</td>
        <td><%=c %></td>
        <td>归口管理部门：</td>
        <td><input type="text" name ="guanlibumen" value="<%=a2%>"></td>
    </tr>
    <tr>
        <td>填表人：</td>
        <td><input type="text" name ="name" id ="name"value="<%=b2%>">
        <input type="hidden" name ="username" id ="namee" value= "${username}"></td>
        <td>填表所在部门：</td>
        <td><input type="text" name ="bumen" value="<%=c2%>"></td>
    </tr>
    <tr>
        <td>填表人联系电话：</td>
        <td><input type="text" name ="telephone"value="<%=d2%>"></td>
        <td>填表人手机号码：</td>
        <td><input type="text" name ="phone"value="<%=e2%>"></td>
    </tr>
    <tr>
        <td>E-mail地址：</td>
        <td><input type="text" name ="email"value="<%=f2%>"></td>
        <td>填表时间：</td>
        <td><input type="text" name ="time"value="<%=g2%>"></td>
    </tr>
    <tr >
        <td colspan="4">
        <p style="color:blue">注：</p>
        <ol style="color:blue">
            <li>“填表所在部门”为填表人在本平台的内设机构名称</li>
            <li>联系电话和手机号码请在英语半角的状态下输入</li>
        </ol>
        </td>
    </tr>
    </tbody>
</table>
 <!--endprint-->
  <div style="width: 80%; text-align: center">
      <input type="submit" name="Submit" value="保存" class="button"/>　
			
	  <input type="submit" name="Submit2" value="保存并下一步" class="button" onclick="window.history.go(-1);"/>
    </div>
</table>
</div>
</form>
           <input type="button" onclick="doPrint()" value="打印"/>
<script src="layui/layui.js" charset="utf-8"></script>
<script>
layui.use('table', function(){
  var table = layui.table;
  
  table.render({
    elem: '#test'
    ,url:'/test/table/demo3.json'
    ,toolbar: true
    ,title: '用户数据表'
    ,totalRow: true
    ,cols: [[
      {field:'id', title:'ID', width:80, fixed: 'left', unresize: true, sort: true, totalRowText: '合计行'}
      ,{field:'username', title:'用户名', width:120, edit: 'text'}
      ,{field:'email', title:'邮箱', width:150, edit: 'text'}
      ,{field:'experience', title:'积分', width:100, sort: true, totalRow: true}
      ,{field:'sex', title:'性别', width:80, edit: 'text', sort: true}
      ,{field:'logins', title:'登入次数', width:100, sort: true, totalRow: true}
      ,{field:'sign', title:'签名'}
      ,{field:'city', title:'城市', width:100}
      ,{field:'ip', title:'IP', width:120}
      ,{field:'joinTime', title:'加入时间', width:120}
    ]]
    ,page: true
    ,response: {
      statusCode: 200 //重新规定成功的状态码为 200，table 组件默认为 0
    }
    ,parseData: function(res){ //将原始数据解析成 table 组件所规定的数据
      return {
        "code": res.status, //解析接口状态
        "msg": res.message, //解析提示文本
        "count": res.total, //解析数据长度
        "data": res.rows.item //解析数据列表
      };
    }
  });
});
</script>
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
</body>
</html>
