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
	<c:choose>
		<c:when test="${loginUser.userName != null}">
			<div class="fly-panel fly-column">
				<div class="layui-container">
					<div class="fly-column-right layui-hide-xs">
						<a href="add.jsp" class="layui-btn">发表博客</a>
					</div>
				</div>
			</div>
		</c:when>
	</c:choose>
	<div class="layui-container">
		<div class="layui-row layui-col-space15">
			<div class="layui-col-md8">
				<div class="fly-panel" style="margin-bottom: 0;">

					<div class="fly-panel-title fly-filter">
						<a
							href="${pageContext.request.contextPath }/servlet/TopicListAction"
							class="layui-this">综合</a> <span class="fly-mid"></span>

					</div>
					<c:if test="${!empty requestScope.meAndAllFriendTopic}">
						<ul class="fly-list">
							<c:forEach var="t" items="${requestScope.meAndAllFriendTopic}">
								<li><a href="${pageContext.request.contextPath }/servlet/TopicListAction5?userId=${t.users.userId }" class="fly-avatar"> <img
										src="${t.users.userimg }" alt="nive">
								</a>
									<h2>
										<a class="layui-badge">分享</a> <a
											href="${pageContext.request.contextPath }/servlet/TopicListAction1?topicId=${t.topicId }">${t.webtext}</a>
									</h2>
									<div class="fly-list-info">

										<c:if test="${loginUser.userName != t.users.userName }">
											<a
												href="${pageContext.request.contextPath }/servlet/TopicListAction5?userId=${t.users.userId }"
												link> <cite>${t.users.niceName}:</cite>
											</a>
										</c:if>
										<c:if test="${loginUser.userName == t.users.userName }">
											<a
												href="${pageContext.request.contextPath }/servlet/TopicListAction5?userId=${t.users.userId }"
												link> <cite>${t.users.niceName}:(自己)</cite>
											</a>
										</c:if>

										<span>${t.time }</span>


										<!--<span class="layui-badge fly-badge-accept layui-hide-xs">已结</span>-->
										<span class="fly-list-nums"> <span
											class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"><i
												class="iconfont icon-kiss"></i> <a>(${t.praisecount })人已点赞</a>
										</span>
										</span>
									</div>
									<div class="fly-list-badge">
										<!--<span class="layui-badge layui-bg-red">精帖</span>-->
									</div></li>
							</c:forEach>
						</ul>
					</c:if>
					<div style="text-align: center"></div>

				</div>
			</div>
			<div class="layui-col-md4">

				<div class="fly-panel">
					<h3 class="fly-panel-title">温馨通道</h3>
					<form
						action="${pageContext.request.contextPath }/servlet/SelectAction"
						method="post">
						<input type="text" id="L_vercode" name="webtext"
							placeholder="请输入想要搜索的标题" autocomplete="off" class="layui-input">
						<input type="text" id="L_vercode" name="username"
							placeholder="请输入想要搜索的用户名" autocomplete="off" class="layui-input">
						<input type="text" id="L_vercode" name="nicename"
							placeholder="请输入想要搜索的昵称" autocomplete="off" class="layui-input">
						<div class="layui-form-item">
							<button class="layui-btn" type="submit">搜索</button>
						</div>
					</form>
				</div>



				<div class="fly-panel">
					<div class="fly-panel-title">考研倒计时</div>
					<div class="fly-panel-main">
						<p class="fly-zanzhu" style="background-color: #5FB878;">
							<span id="t_d">00天</span> <span id="t_h">00时</span> <span
								id="t_m">00分</span> <span id="t_s">00秒</span>
						</p>
					</div>
				</div>

				<div class="fly-panel fly-rank fly-rank-reply" id="LAY_replyRank">
					<h3 class="fly-panel-title">相关软件</h3>
					<dl>
						<!--<i class="layui-icon fly-loading">&#xe63d;</i>-->
						<dd>
							<a> <img src="images/文都考研.png"><i>文都考研</i>
							</a>
						</dd>
						<dd>
							<a> <img src="images/考研题库通.png"><i>考研题库通</i>
							</a>
						</dd>
						<dd>
							<a> <img src="images/中国大学MOOC.png"><i>中国大学MOOC</i>
							</a>
						</dd>
						<dd>
							<a> <img src="images/考研帮.png"><i>考研帮</i>
							</a>
						</dd>
						<dd>
							<a> <img src="images/考研go.png"><i>考研go</i>
							</a>
						</dd>

						<dd>
							<a> <img src="images/有道考研.png"><i>有道考研</i>
							</a>
						</dd>
				</div>


				<dl class="fly-panel fly-list-one">
					<dt class="fly-panel-title">必关注网站</dt>
					<dd>
						<a href="https://yz.chsi.com.cn/">中国研究生招生信息网</a>

					</dd>
					<dd>
						<a href="http://www.chinakaoyan.com/">中国考研网 </a>

					</dd>
					<dd>
						<a href="http://www.kaoshidian.com/">考试点考研网 </a>

					</dd>
					<dd>
						<a href="http://www.eol.cn/">中国教育在线</a>

					</dd>
					<dd>
						<a href="http://www.kaoyan.com/">考研帮</a>

					</dd>

					<!-- 无数据时 -->
					<!--
        <div class="fly-none">没有相关数据</div>
        -->
				</dl>






			</div>
		</div>
	</div>

	<div class="fly-footer">
		<p>研社区 2019 &copy; 盈风小组 出品</p>
		<p>石家庄铁道大学</p>

	</div>

	<script src="res/layui/layui.js"></script>
	<script>
function GetRTime(){
	 var EndTime= new Date('2020/12/22 00:00:00');
       var NowTime = new Date();
       var t =EndTime.getTime() - NowTime.getTime();
       var d=Math.floor(t/1000/60/60/24);
       var h=Math.floor(t/1000/60/60%24);
       var m=Math.floor(t/1000/60%60);
       var s=Math.floor(t/1000%60);

       document.getElementById("t_d").innerHTML = d + "天";
       document.getElementById("t_h").innerHTML = h + "时";
       document.getElementById("t_m").innerHTML = m + "分";
       document.getElementById("t_s").innerHTML = s + "秒";
   }
   setInterval(GetRTime,0);
   
   
layui.cache.page = 'jie';
layui.cache.user = {
  username: '游客'
  ,uid: -1
  ,avatar: 'res/images/00.jpg'
  ,experience: 83
  ,sex: '男'
};
layui.config({
  version: "3.0.0"
  ,base: 'res/mods/'
}).extend({
  fly: 'index'
}).use(['fly', 'face'], function(){
  var $ = layui.$
  ,fly = layui.fly;
  //如果你是采用模版自带的编辑器，你需要开启以下语句来解析。
  /*
  $('.detail-body').each(function(){
    var othis = $(this), html = othis.html();
    othis.html(fly.content(html));
  });
  */
});
</script>
	<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_30088308'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/c.php%3Fid%3D30088308' type='text/javascript'%3E%3C/script%3E"));</script>

</body>
</html>