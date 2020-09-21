<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "com.hjf.dao.ChaxunDao"
import= "com.hjf.entity.Chaxun"
import ="java.util.List"


import=" java.util.ArrayList" %>
<html style="height: 100%">
   <head>
       <meta charset="utf-8">
   </head>
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
       <%
       List<Chaxun> list2 = new ArrayList<>();
       Chaxun chaxun = null;
       Chaxun chaxun1 = null;
         List<Chaxun> list=ChaxunDao.search1();
          for(int i=0;i<list.size();i++){
    	  String pzrq= list.get(i).getPzrq();
           chaxun=ChaxunDao.search2(pzrq);
          String pzrq1=chaxun.getPzrq();
     
          chaxun1=new Chaxun(pzrq1);
          
          list2.add(chaxun1);
         
          }
         for(int i=0;i<list.size()-1;i++){
       %>
var dom = document.getElementById("container");
var myChart = echarts.init(dom);
var app = {};
option = null;
option = {
    xAxis: {
        type: 'category',
        data: [<%  for(int a=0;a<list.size()-1;a++){
               out.print(list.get(a).getPzrq()+",");}
               out.print(list.get(list.size()-1).getPzrq());%>]
    },
    yAxis: {
        type: 'value'
    },
    series: [{
        data: [<%  for(int a=0;a<list.size()-1;a++){
               out.print(list2.get(a).getPzrq()+",");}
               out.print(list2.get(list.size()-1).getPzrq());%>],
        type: 'bar'
    }]
};
;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
}
<%}%>
</script>
   </body>
</html>