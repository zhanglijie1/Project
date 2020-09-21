<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html style="background-color: #e2e2e2;">
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="keywords" content="{{ lay.base.keywords }}">
<meta name="description" content="{{ lay.base.description }}">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>发现 Layui 2017 年度最佳案例</title>
<link rel="stylesheet" href="res/layui/css/layui.css">
<link rel="stylesheet" href="res/css/global.css">
<style>
.header {
	border-bottom: 1px solid #404553;
	border-right: 1px solid #404553;
}
</style>
</head>
<body class="fly-full">

	<div class="fly-header layui-bg-black">
		<div class="layui-container">
			<a class="fly-logo"
				href="${pageContext.request.contextPath }/servlet/TopicListAction">
				<img src="images/logo.png" alt="研社区">
			</a>
			<ul class="layui-nav fly-nav layui-hide-xs">
				<li class="layui-nav-item"><a
					href="${pageContext.request.contextPath }/servlet/TopicListAction"><i
						class="iconfont icon-jiaoliu"></i>研之学问</a></li>
				<li class="layui-nav-item layui-this"><a
					href="${pageContext.request.contextPath }/servlet/TopicListAction2"><i
						class="iconfont icon-iconmingxinganli"></i>闲研碎语</a></li>
			</ul>

			<ul class="layui-nav fly-nav-user">

				<c:choose>
					<c:when test="${loginUser.userName == null}">
						<!-- 未登入的状态 -->
						<li class="layui-nav-item"><a
							class="iconfont icon-touxiang layui-hide-xs" href="login.jsp"></a>
						</li>
						<li class="layui-nav-item"><a href="login.jsp">登入</a></li>
						<li class="layui-nav-item"><a href="login.jsp">注册</a></li>

					</c:when>
					<c:otherwise>
						<!-- 登入后的状态 -->

						<li class="layui-nav-item"><a class="fly-nav-avatar"
							href="javascript:;"> <cite class="layui-hide-xs"><c:if test="${loginUser2 == null}">
							${loginUser.niceName}
							</c:if>
								<c:if test="${loginUser2 != null && loginUser2.userId==loginUser.userId}">
							${loginUser2.niceName}
							</c:if>
							<c:if test="${loginUser2 != null && loginUser2.userId != loginUser.userId}">
							${loginUser.niceName}
							</c:if>
							</cite>
								<i class="iconfont icon-renzheng layui-hide-xs" title="认证信息：码农"></i>
								<i class="layui-badge fly-badge-vip layui-hide-xs">SVIP8</i> <c:if
									test="${loginUser1 != null && loginUser1.userId==loginUser.userId}">
									<img src="${loginUser1.userimg}">
								</c:if> <c:if test="${loginUser1 == null}">
									<img src="${loginUser.userimg}">
								</c:if>
								<c:if test="${loginUser1 != null && loginUser1.userId != loginUser.userId}">
							<img src="${loginUser.userimg}">
							</c:if>

						</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="set.jsp"><i class="layui-icon">&#xe620;</i>基本设置</a>
								</dd>
								
								<dd>
								<dd>
									<a
										href="${pageContext.request.contextPath }/servlet/TopicListAction5?userId=${sessionScope.loginUser.userId}"
										data-type="chat"><i class="layui-icon"
										style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a>
								</dd>
								</dd>
								<hr style="margin: 5px 0;">
								<dd>
									<a href="login.jsp" style="text-align: center;">退出</a>
								</dd>
							</dl></li>
					</c:otherwise>
				</c:choose>

			</ul>
		</div>
	</div>

	<div class="fly-case-header">
		<p class="fly-case-year">2019</p>
		<a href="/case/{{ year }}/"> <img class="fly-case-banner" src="images/case.png"
			alt="">
		</a>

	</div>
<div class="layui-container fly-marginTop">
		<div class="fly-panel" pad20 style="padding-top: 5px;">
	<div class="layui-form layui-form-pane">
	<div class="layui-tab layui-tab-brief" lay-filter="user">
					<ul class="layui-tab-title">
						<li class="layui-this">发布话题</li>
					</ul>
					<div class="layui-form layui-tab-content" id="LAY_ucm"
						style="padding: 20px 0;">
						<div class="layui-tab-item layui-show">
		<form
			action="${pageContext.request.contextPath }/servlet/TopicAction3"
			method="post">
			<div class="layui-form-item layui-form-text">
				<a name="comment"></a>
				<div class="layui-input-block">
					<input type="hidden" name="time" id="mypwd">
					<textarea id="L_content" name="webtext" required
						lay-verify="required" placeholder="请输入内容"
						class="layui-textarea fly-editor" style="height: 150px;"></textarea>
				</div>
			</div>
			<div class="layui-form-item">
				<input type="hidden" name="jid" value="123">
				<button class="layui-btn" type="submit">发布话题</button>
			</div>
		</form>
	</div>
	</div>
	</div>

	<div class="fly-footer">
		<p>研社区 2019 &copy; 盈风小组 出品</p>
		<p>石家庄铁道大学</p>

	</div>

	<script src="res/layui/layui.js"></script>
	<script>
		layui.cache.page = 'case';
		layui.cache.user = {
			username : '游客',
			uid : -1,
			avatar : 'res/images/avatar/00.jpg',
			experience : 83,
			sex : '男'
		};
		layui.config({
			version : "3.0.0",
			base : 'res/mods/' //这里实际使用时，建议改成绝对路径
		}).extend({
			fly : 'index'
		}).use('fly');
	</script>
	<script type="text/javascript">
		window.onload = function() {
			showTime();
		}

		function showTime() {
			var myDate = new Date();
			var year = myDate.getFullYear();
			var month = myDate.getMonth() + 1;
			var date = myDate.getDate();
			var dateArr = [ "日", "一", '二', '三', '四', '五', '六' ];
			var day = myDate.getDay();
			var hours = myDate.getHours();
			var minutes = formatTime(myDate.getMinutes());
			var seconds = formatTime(myDate.getSeconds());

			var systemTime = document.getElementById("time");
			systemTime.innerHTML = " " + year + "年" + month + "月" + date + "日"
					+ " " + hours + ":" + minutes;
			setTimeout("showTime()", 500);
			document.getElementById("mypwd").value = document
					.getElementById("time").innerHTML;

		}

		//格式化时间：分秒。
		function formatTime(i) {
			if (i < 10) {
				i = "0" + i;
			}
			return i;
		}
	</script>
	<div id="time"></div>
</body>
</html>