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
<title>研社区页面</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="keywords" content="fly,layui,前端社区">
<meta name="description" content="为考研学子提供强劲动力">
<link rel="stylesheet" href="res/layui/css/layui.css">
<link rel="stylesheet" href="res/css/global.css">
</head>
<body>

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

	<div class="layui-container fly-marginTop">
		<div class="fly-panel" pad20 style="padding-top: 5px;">
			<!--<div class="fly-none">没有权限</div>-->
			<div class="layui-form layui-form-pane">
				<div class="layui-tab layui-tab-brief" lay-filter="user">
					<ul class="layui-tab-title">
						<li class="layui-this">发表博客<!-- 编辑帖子 --></li>
					</ul>
					<div class="layui-form layui-tab-content" id="LAY_ucm"
						style="padding: 20px 0;">
						<div class="layui-tab-item layui-show">
							<form
								action="${pageContext.request.contextPath }/servlet/TopicAction"
								method="post" onsubmit="return check()">
								<div class="layui-row layui-col-space15 layui-form-item">
									<div class="layui-col-md9">
										<label for="L_title" class="layui-form-label">标题</label>
										<div class="layui-input-block">
											<input type="text" id="L_title" name="webtext" required
												lay-verify="required" autocomplete="off" class="layui-input">
											<!-- <input type="hidden" name="id" value="{{d.edit.id}}"> -->
										</div>
									</div>
								</div>

								<div class="layui-form-item layui-form-text">
									<div class="layui-input-block">
										<textarea id="L_content" name="content" placeholder="详细描述"
											required lay-verify="required" placeholder="详细描述"
											class="layui-textarea fly-editor" style="height: 260px;"></textarea>
									</div>
								</div>
								<div class="layui-form-item">
									<label for="L_vercode" class="layui-form-label">人类验证</label>
									<div class="layui-input-inline">
										<input type="hidden" name="time" id="mypwd"> <input
											type="text" id="L_vercode" name="vercode" required
											lay-verify="required" placeholder="请回答后面的问题"
											autocomplete="off" class="layui-input">
									</div>
									<div class="layui-form-mid">
										<span style="color: #c00;">1+1=?</span>
									</div>
								</div>
								<div class="layui-form-item">
									<button class="layui-btn" type="submit">立即发布</button>
								</div>
							</form>
							<script type="text/javascript">
		function check() {
			var L_title = document.getElementById("L_title");;
			var L_content = document.getElementById("L_content");
			var L_vercode = document.getElementById("L_vercode");
			//非空
			if(L_title.value == '') {
				alert('标题不能为空');
				L_title.focus();
				return false;
			}
			if(L_content.value == '') {
				alert('描述不能为空');
				L_content.focus();
				return false;
			}
			if(L_vercode.value != '2') {
				alert('验证错误，请重新验证');
				L_vercode.focus();
				return false;
			}
		}
	</script>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="fly-footer">
		<p>
			<a href="" target="_blank">研社区 </a> 2019 &copy; <a href=""
				target="_blank">盈风 出品</a>
		</p>
		<p>
			<a href="http://www.stdu.edu.cn/" target="_blank">石家庄铁道大学</a>
		</p>
	</div>

	<script src="res/layui/layui.js"></script>
	<script>
layui.cache.page = 'jie';
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