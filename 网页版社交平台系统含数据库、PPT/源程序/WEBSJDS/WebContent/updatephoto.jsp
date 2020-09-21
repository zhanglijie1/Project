<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>帐号设置</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="stylesheet" href="res/layui/css/layui.css">
<link rel="stylesheet" href="res/css/global.css">
</head>
<body>
	<%
		Object message = request.getAttribute("message");//放置一个字符串，并取出
		if (message != null && !"".equals(message)) {
	%>
	<script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>
		");
	</script>
	<%
		}
	%>
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

	<div class="layui-container fly-marginTop fly-user-main">
		<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="user">
    <li class="layui-nav-item">
      <a href="${pageContext.request.contextPath }/servlet/TopicListAction5?userId=${sessionScope.loginUser.userId}">
        <i class="layui-icon">&#xe609;</i>
        我的主页
      </a>
    </li>
    <li class="layui-nav-item  layui-this" >
      <a href="updatephoto.jsp">
        <i class="layui-icon">&#xe612;</i>
        修改头像
      </a>
    </li>
    <li class="layui-nav-item ">
      <a href="set.jsp">
        <i class="layui-icon ">&#xe620;</i>
        修改密码
      </a>
    </li>
     <li class="layui-nav-item">
      <a href="message.jsp">
        <i class="layui-icon ">&#xe620;</i>
        个人信息修改
      </a>
    </li>
  </ul>
		<div class="fly-panel fly-panel-user" pad20>
			<div class="layui-tab layui-tab-brief" lay-filter="user">
				<div class="layui-tab-content" style="padding: 20px 0;">
					<div class="layui-form layui-form-pane layui-tab-item layui-show">
						<div class="layui-form layui-form-pane layui-tab-item"></div>
						<form action="${pageContext.request.contextPath}/uppicture"
							method="post" enctype="multipart/form-data">
							<p>建议尺寸168*168，支持jpg、png、gif，最大不能超过50KB</p>
							<input type="hidden" name="name"
								value="${sessionScope.loginUser.userName}">
							<div></div>
							头像：<input type="file" name="uploadFile" id="img"
								οnchange="readFile()" />
							<hr>
							<input type="submit"
								class="layui-icon layui-form-item layui-btn " value="上传头像" />
						</form>
						<img src="" id="img1"> <span class="loading"></span>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="fly-footer">
		<p>研社区 2019 &copy; 盈风小组 出品</p>
		<p>石家庄铁道大学</p>

	</div>

	<script src="res/layui/layui.js"></script>
	<script>
		layui.cache.page = 'user';
		layui.cache.user = {
			username : '游客',
			uid : -1,
			avatar : 'res/images/avatar/00.jpg',
			experience : 83,
			sex : '男'
		};
		layui.config({
			version : "2.0.0",
			base : 'res/mods/'
		}).extend({
			fly : 'index'
		}).use('fly');

		function readFile() {
			//得到文件对象
			var imgFile = document.getElementById('img').files[0];
			//创建filereader对象
			var fileReader = new FileReader();
			//设置回调函数，即获取到文件路径后的操作
			fileReader.onload
			{
				document.getElementById('img1').src = fileReader.result;
			}
			//读取文件
			fileReader.readAsDataURL(imgFile);
		}
	</script>

</body>
</html>