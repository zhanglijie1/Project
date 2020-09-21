<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>菜单</title>
</head>

<!--图标样式-->
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">

<link rel="stylesheet" href="css/index.css" />

<body>

<div class="s-side">

	<ul>
		<!--这部分是导航栏信息。-->
		<li class="s-firstItem first">
			<a href="#">
				<i class="fa fa-home"></i>
				<span>欢迎，${username}</span>
			</a><br>
			 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp[<a href="index1.jsp" target="_top" class="left-font01">退出</a>]&nbsp&nbsp
			[<a href="mainfra.html" target="mainFrame" class="left-font01">填报流程</a>]
		</li>
		
	
		<li class="first">
			<div class="d-firstNav s-firstNav">
				<i class="fa fa-bars"></i>	                    
				<span>统计表在线填报</span>
				<i class="fa fa-caret-right fr" ></i>
			</div>
			<ul class="d-firstDrop s-firstDrop">
				<li class="s-secondItem">
					<i class="fa fa-minus-square-o"></i>
					<a href="fengmian.jsp" target="mainFrame">封面</a>
				</li>
				<li class="s-secondItem">
					<i class="fa fa-minus-square-o"></i>
					<a href="table1.1.jsp" target="mainFrame">一.基本信息</a>
				</li>
				<li class="s-secondItem">
					<i class="fa fa-minus-square-o"></i>
					<a href="table2.1.jsp" target="mainFrame">二.主要研究方向和体系结构</a>
				</li><li class="s-secondItem">
					<i class="fa fa-minus-square-o"></i>
					<a href="table.3.1.jsp" target="mainFrame">三.人员情况</a>
				</li><li class="s-secondItem">
					<i class="fa fa-minus-square-o"></i>
					<a href="table4.1.jsp" target="mainFrame">四.科研用房和仪器设备</a>
				</li><li class="s-secondItem">
					<i class="fa fa-minus-square-o"></i>
					<a href="table5.1.jsp" target="mainFrame">五.年度经费筹集和支出情况</a>
				</li><li class="s-secondItem">
					<i class="fa fa-minus-square-o"></i>
					<a href="table6.1.jsp" target="mainFrame">六.年度研发项目情况</a>
				</li><li class="s-secondItem">
					<i class="fa fa-minus-square-o"></i>
					<a href="table7.1.1.jsp"target="mainFrame">七.年度研发成果产出情况</a>
				</li><li class="s-secondItem" >
					<i class="fa fa-minus-square-o"></i>
					<a href="table8.1.jsp"target="mainFrame">八.开放合作情况</a>
				</li><li class="s-secondItem">
					<i class="fa fa-minus-square-o"></i>
					<a href="table9.1.1.jsp" target="mainFrame">九.成果转化和对外服务情况</a>
				</li><li class="s-secondItem">
					<i class="fa fa-minus-square-o"></i>
					<a href="table10.1.jsp" target="mainFrame">十.人才培养情况</a>
				</li><li class="s-secondItem">
					<i class="fa fa-minus-square-o"></i>
					<a href="shouci2.jsp" target="mainFrame">平台维护</a>
				
			</ul>
		</li>
		<li class="first">
			<div class="d-firstNav s-firstNav">
				<i class="fa fa-bars"></i>	                    
				<span>统计表提交上报</span>
				<i class="fa fa-caret-right fr" ></i>
			</div>
			
			</li>
			
	
			<li class="first">
			<div class="d-firstNav s-firstNav">
				<i class="fa fa-bars"></i>	                    
				<span>统计表查看</span>
				<i class="fa fa-caret-right fr" ></i>
			</div>
			
				<ul class="d-firstDrop s-firstDrop">
				<li class="s-secondItem">
					<i class="fa fa-minus-square-o"></i>
					<a href="a.jsp" target="mainFrame">查询</a>
				</li>
				
					<li class="s-secondItem">
					<i class="fa fa-minus-square-o"></i>
					<a href="b.jsp" target="mainFrame">图谱</a>
				</li>
				<li class="s-secondItem">
					<i class="fa fa-minus-square-o"></i>
					<a href="gaojijiansuo.jsp" target="mainFrame">高级检索</a>
				</li>
				</li>
				<li class="s-secondItem">
					<i class="fa fa-minus-square-o"></i>
					<a href="quanwenjiansuo.jsp" target="mainFrame">全文检索</a>
				     </li>
					<li class="s-secondItem">
					<i class="fa fa-minus-square-o"></i>
					<a href="achakan.jsp" target="mainFrame">调查表查看</a>
				     </li>
			
			
				
					<li class="s-secondItem">
					<i class="fa fa-minus-square-o"></i>
					<a href="shuzhuangchaxun.jsp" target="mainFrame">树状查询</a>
				     </li>
					<li>
					<div class="d-secondNav s-secondNav">
						<i class="fa fa-minus-square-o"></i>
						<span>指标</span>
						<i class="fa fa-caret-right fr "></i>
					</div>
					<ul class="d-secondDrop s-secondDrop">
					    <div  class="d-secondNav s-secondNav">
						<i class="fa fa-minus-square-o"></i>
						<a href="a.jsp" target="mainFrame">批准日期</a>
						<i class="fa fa-caret-right fr "></i>
						</div>
					<ul class="d-secondDrop s-secondDrop">
					    <li class="s-thirdItem">
							<a href="ChaxunServlet?method=search1&name1=2019&diaochaname=pzrq" target="mainFrame">2019年</a>
						</li>
							<li class="s-thirdItem">
							<a href="ChaxunServlet?method=search1&name1=2018&diaochaname=pzrq" target="mainFrame">2018年</a>
						</li>
							<li class="s-thirdItem">
							<a href="ChaxunServlet?method=search1&name1=2017&diaochaname=pzrq" target="mainFrame">2017年</a>
						</li>
							<li class="s-thirdItem">
							<a href="ChaxunServlet?method=search1&name1=2016&diaochaname=pzrq" target="mainFrame">2016年</a>
						</li>
					
					</ul>
					
						<div  class="d-secondNav s-secondNav">
						<i class="fa fa-minus-square-o"></i>
						<span>平台级别</span>
						<i class="fa fa-caret-right fr "></i>
						</div>
					<ul class="d-secondDrop s-secondDrop">
					    <li class="s-thirdItem">
							<a href="ChaxunServlet?method=search1&name1=国级&diaochaname=ptjb" target="mainFrame">国级</a>
						</li>
							<li class="s-thirdItem">
							<a href="ChaxunServlet?method=search1&name1=省级&diaochaname=ptjb" target="mainFrame">省级</a>
						</li>
							<li class="s-thirdItem">
							<a href="ChaxunServlet?method=search1&name1=市级&diaochaname=ptjb" target="mainFrame">市级</a>
						
					
					</ul>
					
							<div  class="d-secondNav s-secondNav">
						<i class="fa fa-minus-square-o"></i>
						<span>平台类型</span>
						<i class="fa fa-caret-right fr "></i>
						</div>
					<ul class="d-secondDrop s-secondDrop">
					    <li class="s-thirdItem">
							<a href="ChaxunServlet?method=search1&name1=研究院&diaochaname=ptlx" target="mainFrame">研究院</a>
						</li>
							<li class="s-thirdItem">
							<a href="ChaxunServlet?method=search1&name1=学院&diaochaname=ptlx" target="mainFrame">学院</a>
						</li>
							<li class="s-thirdItem">
							<a href="ChaxunServlet?method=search1&name1=公司&diaochaname=ptlx" target="mainFrame">公司</a>
						
					
					</ul>
					</ul>
					
				</li>
				</ul>
				
			
			<li class="first">
			<div class="d-firstNav s-firstNav">
				<i class="fa fa-bars"></i>	                    
				<span>统计表提交上报</span>
				<i class="fa fa-caret-right fr" ></i>
			</div>
			
			</li>
	
			<li class="first">
			<div class="d-firstNav s-firstNav">
				<i class="fa fa-bars"></i>	                    
					<span><a href="http://kgview.las.ac.cn/discover" target="mainFrame">点状新云图</a></span>
				<i class="fa fa-caret-right fr" ></i>
			</div>
			
			</li>
	
</div>
	
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/index.js" ></script>
<div style="text-align:center;">

</div>
</body>	
</html>