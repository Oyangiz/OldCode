<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script src="/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="/js/jquery-3.2.1.min.js" type="text/javascript"></script>
	<script src="/js/main.js" type="text/javascript"></script>
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="/js/custom.js" type="text/javascript"></script>
	<script src="/js/plate.js" type="text/javascript"></script>

	<link rel="icon" href="/images/cool.png" type="image/x-icon">
	<link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="/css/bootstrap.min.css">
	<link rel="stylesheet" href="/css/main.css">
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="/css/custom.css">
	<link rel="stylesheet" href="/css/plate.css">
	<link rel="stylesheet" type="text/css" href="/css/base.css">
	<link rel="stylesheet" type="text/css" href="/css/topic.css">
</head>
<body>
<%@ include file="header.jsp" %>


	<div class="main w clearfix">
		<div class="main-left">
			<div class="share">
				<div class="share-left"><span class="glyphicon glyphicon-th-large"></span>&nbsp;板块</div>
				<div class="share-right">
					<a href="toPublish.do">
						<span class="glyphicon glyphicon-pencil"></span>&nbsp;我要发帖
					</a>
				</div>
			</div>

			<div class="topic-root">
				<div class="topic-root-wrap">
					<c:forEach items="${topicList}" var="topic">
                        <a href="topicpost.do?ttid=${topic.tid}">${topic.name}</a>
                    </c:forEach>

				</div>
			</div>
			<%--话题列表--%>
			<div class="topic-list">
				<div class="topic-list-wrap clearfix">
                    <c:forEach items="${topicList}" var="topic" varStatus="status">
                        <c:choose>
                            <c:when test="${status.count%2!=0}">
                                <div class="topic-odd relative">
                                    <a href="#" class="topic-image"><img src="${topic.image}"></a>
                                    <div class="topic-content">
                                        <a href="topicpost.do?ttid=${topic.tid}" class="topic-name">${topic.name}</a>
                                        <a href="#" class="topic-desc">${topic.content}</a>
                                    </div>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="topic-even relative">
                                    <a href="#" class="topic-image"><img src="${topic.image}"></a>
                                    <div class="topic-content">
                                        <a href="topicpost.do?ttid=${topic.tid}" class="topic-name">${topic.name}</a>
                                        <a href="#" class="topic-desc">${topic.content}</a>
                                    </div>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
				</div>
			</div>
			<div class="topic-more">
				<a href="#">更多</a>
			</div>
		</div>
		<div class="main-right">
			
			<div class="hot-user">
				<div class="clearfix"><div class="hot-user-title"><span></span>&nbsp;论坛公告</div></div>
				<ul class="hot-user-list">

					<li class="clearfix">
						${notice}
					</li>
					<li class="clearfix">

				</ul>
			</div>
		</div>
	</div>

	<div class="mask"></div>
	<div class="upon-mask">
		<form>
			<input type="text" name="" placeholder="请输入话题名称">
			<button>提交申请</button>
		</form>
		<span id="close-mask">×</span>
	</div>
<%@ include file="footer.jsp" %>
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/base.js"></script>
<script type="text/javascript">
	$(function(){

		var openMask = $("#open-mask");
		var closeMask = $("#close-mask");
		var mask = $(".mask");
		var uponMask = $(".upon-mask");

		openMask.click(function(){
			mask.show();
			uponMask.show();
		});

		closeMask.click(function(){
			mask.hide();
			uponMask.hide();
		});
	});
</script>
</body>
</html>













