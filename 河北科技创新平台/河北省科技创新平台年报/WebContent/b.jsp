<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "com.hjf.dao.TenDao"
import ="java.util.List"
import= "com.hjf.entity.Ten" 
import="java.sql.*"
import=" java.util.ArrayList" %>
<!DOCTYPE html>
<html style="height: 100%">
   <head>
       <meta charset="utf-8">
   </head>
    <%

     List<Ten> table101=TenDao.list();
       String a="";
       int b=0;
       int c=0;
       int d=0;
       String e="";

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
       //	int i=1;
       	while (rs.next()) {
       		int id = rs.getInt("id");
       		String username2 = rs.getString("username");
       		String xyrclb2 = rs.getString("xyrclb");
       		String xyrcmc2 = rs.getString("xyrcmc");
       		String xyrcclsj2 = rs.getString("xyrcclsj");
       		String xyrcljdw2 = rs.getString("xyrcljdw");
         	bean = new Ten(username2, xyrclb2, xyrcmc2, xyrcclsj2, xyrcljdw2);
       		list.add(bean);
       		int i=list.size()-1;
       	
       		if(!list.isEmpty()){
       			 a=list.get(i).getA();
       			 b=Integer.parseInt(list.get(i).getB());
       			 c=Integer.parseInt(list.get(i).getC());
       			 d=Integer.parseInt(list.get(i).getD());
       			 e=list.get(i).getUsername();
       		
       		}
       		
       
       	}
       	rs.close();
       	stmt.close();
       	con.close();
       } catch (Exception e1) {
       	out.println("Exception:" + e1.getMessage());
       	
       }


       %>
   <body style="height: 100%; margin: 0">
       <div id="container" style="height: 100%"></div>
       <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js"></script>
       <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-gl/dist/echarts-gl.min.js"></script>
       <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-stat/dist/ecStat.min.js"></script>
       <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/dataTool.min.js"></script>
       <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/china.js"></script>
       <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/world.js"></script>
      
       <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/bmap.min.js"></script>
       <script type="text/javascript">
var dom = document.getElementById("container");
var myChart = echarts.init(dom);
var app = {};
option = null;
option = {
    xAxis: {
        type: 'category',
        boundaryGap: false,
        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
    },
    yAxis: {
        type: 'value'
    },
    series: [{
        data: [<%=a%>, <%=a%>, 901, 934, 1290, 1330, 1320],
        type: 'line',
        areaStyle: {}
    }]
};
;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
}
       </script>
   </body>
</html>