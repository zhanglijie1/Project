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
<title>为考研提供强大动力</title>
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
					<c:when test="${sessionScope.loginUser.userName == null}">
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
		<a href=""> <img class="fly-case-banner" src="images/case.png"
			alt="">
		</a>
		<div class="fly-case-btn">
			<a href="add1.jsp" class="layui-btn layui-btn-big fly-case-active"
				data-type="push">发布话题</a> <a
				href="${pageContext.request.contextPath }/servlet/TopicListAction6?username=${sessionScope.loginUser.userName}"
				class="layui-btn layui-btn-primary layui-btn-big">我的话题</a>

		</div>

	</div>
	<div class="fly-main" style="overflow: hidden;">
		<div class="layui-tab layui-tab-brief">
			<ul class="layui-tab-title">
				<li class="layui-this"><a
					href="${pageContext.request.contextPath }/servlet/TopicListAction2">全部话题</a></li>

			</ul>
		</div>

		<c:if test="${!empty requestScope.meAndAllFriendTopic}">
			<ul class="fly-case-list">
				<c:forEach var="t" items="${requestScope.meAndAllFriendTopic}">
					<li data-id="123"><a class="fly-case-img"
						href="${pageContext.request.contextPath }/servlet/TopicListAction3?topicId=${t.topicId }">
							<img src="images/fly.jpg" alt="研社区"> <cite
							class="layui-btn layui-btn-primary layui-btn-small">去围观</cite>
					</a>
						<h2>
							<a href="" target="_blank">研社区</a>
							<c:if
								test="${sessionScope.loginUser.userName == t.users.userName ||sessionScope.loginUser.userName == '123456'}">
								<a
									href="${pageContext.request.contextPath }/servlet/DeleteAction3?topicId=${t.topicId }"
									class="delete">删除</a>
							</c:if>

						</h2>
						<p class="fly-case-desc">${t.webtext}</p>
						<div class="fly-case-info">
							<a class="fly-case-user"
								target="_blank"> <img src="${t.users.userimg }"></a>
							<p class="layui-elip" style="font-size: 12px;">
								<span style="color: #666;"><c:if
										test="${sessionScope.loginUser.userName != t.users.userName }">
										<a><cite>${t.users.niceName} : </cite></a>
									</c:if> <c:if
										test="${sessionScope.loginUser.userName == t.users.userName }">
										<a><cite>自己 : </cite></a>
									</c:if></span> ${t.time }
							</p>
							<p>
								获得<a class="fly-case-nums fly-case-active" href="javascript:;"
									data-type="showPraise" style="padding: 0 5px; color: #01AAED;">(${t.praisecount })</a>个赞
							</p>
							<a class="zan"
								href="${pageContext.request.contextPath }/servlet/DianpraiseAction1?topicId=${t.topicId }"><button
									class="layui-btn layui-btn-primary fly-case-active">点赞</button></a>

						</div></li>
				</c:forEach>

			</ul>
		</c:if>
		<!-- <blockquote class="layui-elem-quote layui-quote-nm">暂无数据</blockquote> -->

		<div style="text-align: center;">
			<div class="laypage-main">
				<span class="laypage-curr">1</span> <a href="">2</a><a href="">3</a>
				<a href="">4</a> <a href="">5</a> <span>…</span> <a href=""
					class="laypage-last" title="尾页">尾页</a> <a href=""
					class="laypage-next">下一页</a>
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
</body>
</html>