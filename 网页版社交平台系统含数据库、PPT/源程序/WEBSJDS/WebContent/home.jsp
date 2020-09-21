<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>用户主页</title>
<link rel="stylesheet" href="res/layui/css/layui.css">
<link rel="stylesheet" href="res/css/global.css">
</head>
<body style="margin-top: 65px;">

	<div class="fly-header layui-bg-black">
		<div class="layui-container">
			<a class="fly-logo"
				href="${pageContext.request.contextPath }/servlet/TopicListAction">
				<img src="images/logo.png" alt="研社区">
			</a>
			<ul class="layui-nav fly-nav layui-hide-xs">
				<li class="layui-nav-item layui-this"><a
					href="${pageContext.request.contextPath }/servlet/TopicListAction"><i
						class="iconfont icon-jiaoliu"></i>研之学问</a></li>
				<li class="layui-nav-item"><a
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
	<c:forEach items="${meAndAllFriendTopic}" var="item">
		<div class="fly-home fly-panel" style="background-image: url();">
			<img src="${item.userimg}" alt="nive"> <i
				class="iconfont icon-renzheng" title="研社区认证"></i>
			<c:if test="${sessionScope.loginUser.niceName != item.nicename }">

				<h1>
					<a><cite> ${item.nicename} </cite></a> <i class="iconfont icon-nan"></i>

				</h1>
			</c:if>
			<c:if test="${sessionScope.loginUser.niceName == item.nicename }">
				<h1>
					<a><cite>${item.nicename}(自己)</cite></a> <i
						class="iconfont icon-nan"></i>

				</h1>

			</c:if>


			<p class="fly-home-info">
				 <i
					class="iconfont icon-shijian"></i><span>${item.usertime} 加入</span> <i
					class="iconfont icon-chengshi"></i><span>来自杭州</span>
			</p>

			<p class="fly-home-sign">（${item.usergx}）</p>

			<div class="fly-sns" data-user="">
			<c:if test="${sessionScope.loginUser.userName == '123456' && item.nicename!='社区管理员' }">
			<a href="DeleteServlet1?method=del&userId=${item.userId }"
					class="layui-btn layui-btn-normal fly-imActive"
					data-type="addFriend">删除用户</a> 
			</c:if>
			<c:if test="${sessionScope.loginUser.userName != '123456' }">
			
			</c:if>
				
					
			</div>

		</div>

		<div class="layui-container">
			<div class="layui-row layui-col-space15">
				<div class="layui-col-md6 fly-home-jie">
					<div class="fly-panel">
						<h3 class="fly-panel-title">${item.nicename}  最近发表的博文</h3>



						<ul class="jie-row">
							<c:forEach var="v" items="${item.list1}">

								<li><span class="fly-jing">精</span> <a
									href="${pageContext.request.contextPath }/servlet/TopicListAction1?topicId=${v.topicId }"
									class="jie-title"> ${v.webtext}</a> <i>${v.time }</i> <em
									class="layui-hide-xs">已获得(${v.praisecount })个赞</em></li>

							</c:forEach>
							<!-- <div class="fly-none" style="min-height: 50px; padding:30px 0; height:auto;"><i style="font-size:14px;">没有发表任何求解</i></div> -->
						</ul>


					</div>
				</div>

			</div>
		</div>
	</c:forEach>
	<div class="fly-footer">
		<p>研社区 2019 &copy; 盈风小组 出品</p>
		<p>石家庄铁道大学</p>

	</div>

	<script src="res/layui/layui.js"></script>
	<script>
layui.cache.page = 'user';
layui.cache.user = {
  username: '游客'
  ,uid: -1
  ,avatar: 'res/images/avatar/00.jpg'
  ,experience: 83
  ,sex: '男'
};
layui.config({
  version: "3.0.0"
  ,base: 'res/mods/'
}).extend({
  fly: 'index'
}).use('fly');
</script>

</body>
</html>