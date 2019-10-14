﻿<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" import="java.util.*" %>

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
	<link rel="stylesheet" type="text/css" href="/css/wangEditor.css">
	<link rel="stylesheet" type="text/css" href="/css/base.css">
	<link rel="stylesheet" type="text/css" href="/css/post.css">
</head>
<body>
<%@ include file="header.jsp" %>

	<!-- 中间主体板块 -->
	<div class="main w clearfix">

		<!-- 主体左部分 -->
		<div class="main-left">
			
			<!-- 帖子内容板块 -->
			<div class="post-content">
				<div class="post-title">
					<span class="glyphicon glyphicon-th"></span>&nbsp;${post.title}
				</div>
				<div class="post-user clearfix">
					<div class="user-image"><a href="toProfile.do?uid=${post.user.uid}"><img src="${post.user.headUrl}"></a></div>
					<div class="user-info">
						<div class="user-name">${post.user.username}</div>
						<div class="post-time">编辑于 ${post.publishTime}</div>
                        <div class="post-time">是否精华
                            <c:if test="${post.scanCount < 10}">不是</c:if>
                            <c:if test="${post.scanCount > 10 }">是</c:if>
                                  </div>
					</div>
					<div class="other-count">
						<span class="reply-count"><a>回复 ${post.replyCount}</a></span>&nbsp;
                        <c:choose>
                            <c:when test="${sessionScope.uid==null}">
                                <span class="up-count"><a>赞 ${post.likeCount}</a></span>&nbsp;
                            </c:when>
                            <c:when test="${liked==true}">
                                <span class="up-count"><a>已赞 ${post.likeCount}</a></span>&nbsp;
                            </c:when>
                            <c:when test="${sessionScope.uid!=null}">
                                <span class="up-count"><a href="#" id="like-button" style="color:#2e6da4;">赞 ${post.likeCount}</a></span>&nbsp;
                            </c:when>
                        </c:choose>
						<span class="scan-count"><a>浏览 ${post.scanCount}</a></span>
					</div>
				</div>
				<div class="post-desc">
					${post.content}
				</div>
			</div>

			<!-- 帖子回复内容板块 -->
			<div class="post-reply">
				<!-- 回复区标题 -->
				<div class="post-reply-title">
					<h2 class="reply-count"><span class="glyphicon glyphicon-th"></span>&nbsp;${post.replyCount}条回帖</h2>
					<a href="#reply-area">回复</a>
				</div>
				<!-- 回复区内容 -->
				<div class="post-reply-content">
					<!-- 回复条目 -->
                    <c:forEach items="${replyList}" var="reply" varStatus="status">
                        <div class="post-reply-item clearfix">
                            <div class="item-image"><a href="toProfile.do?uid=${reply.user.uid}"><img src="${reply.user.headUrl}"></a></div>
                            <div class="item-info">
                                <div class="item-user-name"><a href="#">${reply.user.username}</a></div>
                                <div class="item-content">${reply.content}</div>
                                <div class="item-date">发表于 ${reply.replyTime}</div>

                                <!-- 楼中楼，即嵌套的回复内容 -->
                                <div class="item-more">
                                    <c:forEach items="${reply.commentList}" var="comment">
                                        <%--一个wrap开始--%>
                                        <div class="item-wrap">
                                            <div class="item-more-1">
                                                <a href="toProfile.do?uid=${comment.user.uid}" class="item-more-user">${comment.user.username}</a>
                                                <span>：</span>
                                                <span class="item-more-content">${comment.content}</span>
                                            </div>

                                            <div class="item-more-date">${comment.commentTime}</div>
                                            <div class="item-more-other">
                                                <a href="#s${status.count}" class="item-more-reply">回复</a>&nbsp;
                                            </div>
                                        </div><!-- 一个wrap结束-->
                                    </c:forEach>

                                    <!-- 楼中楼的回复框 -->
                                    <div class="reply-input">
                                        <form action="comment.do" method="post">
                                            <input type="hidden" name="pid" value="${post.pid}"/>
                                            <input type="hidden" name="rid" value="${reply.rid}"/>
                                            <textarea id="s${status.count}" name="content"></textarea>
                                            <button type="submit">回复</button>
                                        </form>
                                    </div>
                                </div><!-- 楼中楼结束 -->

                            </div>
                            <div class="item-other">
                                <a href="#s${status.count}" class="item-reply">回复</a>&nbsp;
                            </div>

                        </div>
                    </c:forEach><!-- 回复条目结束 -->
				</div>
			</div>

			<!-- 回复区，富文本编辑器板块 -->
			<div id="reply-area" class="post-reply-textarea">
				<div style="width: 650px;margin: 10px 20px">
					<form action="reply.do" method="post" enctype="multipart/form-data">
						<input type="hidden" name="pid" value="${post.pid}" />
						<textarea name="content" id="textarea" style="height: 200px;max-height: 1000px;"></textarea>
						<button class="reply-button">回帖</button>
					</form>
				</div>
			</div>

		</div>


		<!-- 主体右部分 -->
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

<%@ include file="footer.jsp" %>
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/wangEditor.js"></script>
<script type="text/javascript" src="js/base.js"></script>
<script type="text/javascript">
    var editor = new wangEditor('textarea');

    editor.config.menus = [
        'source',
        '|',
        'bold',
        'underline',
        'italic',
        'strikethrough',
        'eraser',
        'fontsize',
        '|',
        'link',
        'table',
        'emotion',
        '|',
        'img',
        'insertcode',
        '|',
        'undo',
     ];
     
     //配置处理图片上传的路径，最好用相对路径
     editor.config.uploadImgUrl = 'upload.do';
     //配置图片上传到后台的参数名称
     editor.config.uploadImgFileName = 'myFileName';
    editor.create();

    //点赞按钮处理
    var likeButton = $("#like-button");
    var bindLikeButton = function() {
        likeButton.click(function() {
            likeButton.unbind('click'); //需要先禁用按钮（为防止用户重复点击）

            $.ajax({
                type:"GET",
                url:"ajaxClickLike.do",
                data:{pid:${post.pid}},
                success:function(response,status,xhr){
                    likeButton.text("已赞 "+response);
                    likeButton.removeAttr("href");
                    likeButton.removeAttr("style");
                    //likeButton.click(function(){console.log("Nothing happen!")});
                    //likeButton.attr({"id":"like-button1"});
                },
                error:function() {
                    console.log("Ajax error occurs.");
                    bindLikeButton(); //重新绑定按钮
                }
            });
        });
    }
    bindLikeButton();

</script>
</body>
</html>
