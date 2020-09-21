<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>登录页面</title>

<link rel="stylesheet"
	href="css/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">
<link href="webstyle.css" rel="stylesheet">
</head>

<body>
	<div class="materialContainer">
		<form
			action="${pageContext.request.contextPath }/servlet/LoginAction?method=login"
			method="post">
			<div class="box">
				<div class="title">登录</div>
				<div class="input">
					<label for="username">用户名</label> <input type="text"
						name="username" id="username"> <span class="spin"></span>
				</div>
				<div class="input">
					<label for="password">密码</label> <input type="password"
						name="password" id="password"> <span class="spin"></span>
				</div>
				<div class="button login">
					<button>
						<span>登录</span> <i class="fa fa-check"></i>
					</button>
				</div>
			</div>
		</form>
		<form
			action="${pageContext.request.contextPath }/servlet/RegisterAction"
			method="post">
			<div class="overbox">
				<div class="material-button alt-2">
					<span class="shape"></span>
				</div>
				<div class="title">注册</div>
				
				<div class="input">
				<input type="hidden" name="time" id="mypwd">
					<label for="username1">用户名</label> <input type="text"
						name="username" id="username1" /> <span class="spin"></span>
				</div>
				<div class="input">
					<label for="password1">密码</label> <input type="password"
						name="password" id="password1" /> <span class="spin"></span>
				</div>
				<div class="input">
					<label for="nicename">设置昵称</label> <input type="text"
						name="nicename" id="nicename"> <span class="spin"></span>
				</div>
				<div class="button">
					<button>
						<span>注册</span>
					</button>
				</div>
			</div>
		</form>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/index.js"></script>
	</script>
	<script type="text/javascript">
	
	
  window.onload = function(){
    showTime();
  }
  
  function showTime(){
    var myDate = new Date();
    var year = myDate.getFullYear();
    var month = myDate.getMonth() + 1;
    var date = myDate.getDate();
    var dateArr = ["日","一",'二','三','四','五','六'];
    var day = myDate.getDay();
    var hours = myDate.getHours();
    var minutes = formatTime(myDate.getMinutes());
    var seconds = formatTime(myDate.getSeconds());
  
    var systemTime = document.getElementById("time");
    systemTime.innerHTML = " " + year + "年" + month +"月" + date + "日" +  " " + hours + ":" + minutes ;
    setTimeout("showTime()",500);
    document.getElementById("mypwd").value = document.getElementById("time").innerHTML;
  }
  
  //格式化时间：分秒。
  function formatTime (i){
    if(i < 10){
      i = "0" + i;
    }
    return i;
  }
  
  </script>
	<div id="time"></div>
</body>
</html>
