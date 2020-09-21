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
				<li class="layui-nav-item "><a
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

	<div class="layui-hide-xs">
		<c:choose>
			<c:when test="${loginUser.userName != null}">
				<div class="fly-panel fly-column">
					<div class="layui-container">
						<ul class="layui-clear">
							<li
								class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><span
								class="fly-mid"></span></li>

							<!-- 用户登入后显示 -->

						</ul>
						<div class="fly-column-right layui-hide-xs">
							<a href="add1.jsp" class="layui-btn">发帖</a>
						</div>
					</div>
				</div>
			</c:when>
		</c:choose>


	</div>

	<div class="layui-container">
		<div class="layui-row layui-col-space15">
			<div class="layui-col-md8 content detail">

				<div class="fly-panel detail-box">
					<c:forEach items="${meAndAllFriendTopic}" var="item">

						<h1>话题：${item.webtext}</h1>


						<div class="fly-detail-info">

							<div class="fly-admin-box" data-id="123">

								<!-- <span class="layui-btn layui-btn-xs jie-admin" type="set" field="status" rank="0" style="background-color:#ccc;">取消加精</span> -->
							</div>
							<span class="fly-list-nums"> <a href="#comment"><i
									class="iconfont" title="回答">&#xe60c;</i> <a class="zan"
									href="${pageContext.request.contextPath }/servlet/DianpraiseAction1?topicId=${item.topicId }">点赞(${item.praisecount })</a></a>
								<i class="iconfont" title="人气">&#xe60b;</i> ${item.praisecount }
							</span>
						</div>
						<div class="detail-about">
							<a class="fly-avatar" href="${pageContext.request.contextPath }/servlet/TopicListAction9?userId=${item.users.userId}"> <img
								src="${item.users.userimg }" alt="nice">
							</a>
							<div class="fly-detail-user">
								<a href="index.jsp" class="fly-link"> <a
									href="${pageContext.request.contextPath }/servlet/TopicListAction9?userId=${item.users.userId}"><cite>
											${item.users.niceName}: </cite></a> <i class="iconfont icon-renzheng"
									title="认证信息：{{ rows.user.approve }}"></i> <i
									class="layui-badge fly-badge-vip">VIP3</i> <span>(发起人)</span>
								</a>

							</div>
							<div class="detail-hits" id="LAY_jieAdmin" data-id="123">
								<a>发表时间:</a> <span>${item.time }</span>
							</div>
						</div>
					</c:forEach>
				</div>

				<div class="fly-panel detail-box" id="flyReply">
					<fieldset class="layui-elem-field layui-field-title"
						style="text-align: center;">
						<legend>帖子</legend>
					</fieldset>
					<div class="layui-form layui-form-pane">
						<form action="CommentServlet1?method=add" method="post">
							<div class="layui-form-item layui-form-text">
								<a name="comment"></a>
								<div class="layui-input-block">
									<c:forEach items="${meAndAllFriendTopic}" var="item">

										<input type="hidden" name="time" id="mypwd1">
										<input type='hidden' name="userId" value="${loginUser.userId}" id="userid">
										<input type='hidden' name="topicId" id="topicid"
											value="${item.topicId}">
										<textarea id="L_content" name="commentcontent" required
											lay-verify="required" placeholder="请输入内容"
											class="layui-textarea fly-editor" style="height: 150px;"></textarea>
									</c:forEach>
								</div>
							</div>
							<div class="layui-form-item">

								<button class="layui-btn submit" lay-filter="*" lay-submit>发布</button>
							</div>
						</form>
					</div>
					<ul class="jieda" id="jieda">


						<c:forEach items="${meAndAllFriendTopic}" var="item">


							<c:forEach var="f" items="${item.list1}">

								<li data-id="111"><a name="item-1111111111"></a>
									<div class="detail-about detail-about-reply">
										<a class="fly-avatar" href=""> <img src="${f.userimg }"
											alt=" ">
										</a>
										<div class="fly-detail-user">
											<a href="" class="fly-link"> <a
												href="${pageContext.request.contextPath }/servlet/TopicListAction9?userId=${f.comment_userId }"><cite>
														${f.nicename}: </cite></a> <i class="iconfont icon-renzheng"
												title="认证信息：学生"></i> <i class="layui-badge fly-badge-vip">VIP2</i>
											</a>
											<c:if test="${item.users.userId == f.comment_userId }">
												<span>(楼主)</span>
											</c:if>
										</div>
										<div class="detail-hits">
											<span style="color: gray">发帖时间 ：${f.time }</span>
										</div>
									</div>
									<div class="detail-body jieda-body photos">
										<p>${f.comment_content}</p>
									</div> <c:forEach var="v" items="${f.list2}">
										<div class="detail-hits">
											<span style="color: gray">回复时间 ： ${v.nicename}</span>
										</div>
										<p>${v.time}  回复   ${f.nicename}:   ${v.ccontent}</p>
										<hr>
									</c:forEach>
									<div class="jieda-reply">
										<span class="jieda-zan" type="zan"> <i
											class="iconfont icon-zan"></i> <em>0</em>
										</span> <span type="reply"> <i
											class="iconfont icon-svgmoban53"> </i> 回复
										</span>
										<div class="jieda-admin">
											<span type="edit">编辑</span>
											<c:if test="${loginUser.userId == f.comment_userId|| f.comment_userId=='123456'}">
												<a
													href="CommentServlet1?method=del&comment_id=${f.comment_Id}&topicId=${item.topicId}">
													<span type="del">删除</span>
												</a>
											</c:if>		

											<span class="jieda-accept" type="accept">采纳</span>
										</div>
									</div></li>



								<div class="qutton" id="qutton_comment">
									<div class="qutton_dialog" id="commentDialog">
										<form action="CommentServlet1?method=add1" method="post">
											<textarea name="c_content" id="commentInput"
												placeholder="回复内容" class="layui-textarea fly-editor"
												style="height: 60px; width: 400px"></textarea>
											<input type="hidden" name="c_commentid"
												value="${f.comment_Id}"> <input type="hidden"
												name="c_commentuserid" value="${loginUser.userId}"> <input
												type='hidden' name="topicId" id="topicId"
												value="${item.topicId}"> <input type="hidden"
												name="time" id="mypwd"> <input class="layui-btn"
												type="submit" value="回复">
									</div>
									</form>
								</div>



							</c:forEach>
						</c:forEach>

						<!-- 无数据时 -->
						<!-- <li class="fly-none">消灭零回复</li> -->
					</ul>


				</div>
			</div>


			<div class="layui-col-md4">
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



				<div class="fly-panel" style="padding: 20px 0; text-align: center;">
					<img src="res/images/weixin.jpg" style="max-width: 100%;"
						alt="layui">
					<p style="position: relative; color: #666;">微信扫码关注 研社区 公众号</p>
				</div>

			</div>
		</div>
	</div>


	<div class="fly-footer">
		<p>研社区 2019 &copy; 盈风小组 出品</p>
		<p>石家庄铁道大学</p>

	</div>

	<script src="../../res/layui/layui.js"></script>
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
  ,avatar: '../../res/images/avatar/00.jpg'
  ,experience: 83
  ,sex: '男'
};
layui.config({
  version: "3.0.0"
  ,base: '../../res/mods/'
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
    document.getElementById("mypwd1").value = document.getElementById("time").innerHTML;
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