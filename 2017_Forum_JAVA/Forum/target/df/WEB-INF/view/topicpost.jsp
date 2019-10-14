<%--
  Created by IntelliJ IDEA.
  User: oyangiz
  Date: 2017/6/5
  Time: 下午5:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
    <title>Title</title>
</head>
<body>
<%@ include file="header.jsp" %>

<div class="main w clearfix">
    <div class="main-left">
        <div class="share">
            <div class="share-left"><span></span>${TopicName.name}</div>
            <div class="share-right">
                <a href="toPublish.do">
                    <span class="glyphicon glyphicon-pencil"></span>&nbsp;我要发布
                </a>
            </div>
        </div>
        <div class="post">
            <div class="post-wrap">
                <div class="post-choice">
                    <a href="#" class="post-choice-current">最近</a>
                    <%--<a href="#">最热</a>--%>
                    <%--<a href="#" class="post-choice-last">精华</a>--%>
                </div>

                <ul class="post-list">
                    <c:forEach items="${postList}" var="post">
                        <li class="clearfix">
                            <%--<div class="post-image">--%>
                                <%--<a href="toProfile.do?uid=${post.user.uid}"><img src="${post.user.headUrl}"></a>--%>
                            <%--</div>--%>
                            <div class="post-content">
                                <span class="glyphicon glyphicon-file"></span>&nbsp;
                                <div class="post-title"><a href="toPost.do?pid=${post.pid}">${post.title}</a></div>
                                <div class="post-other">
                                    <div class="post-other-left">
                                        <span>&nbsp;发表于</span>
                                        <span class="post-time">&nbsp;${post.publishTime}</span>
                                    </div>

                                </div>
                            </div>
                        </li>

                    </c:forEach>

                </ul>



            </div>
        </div>
    </div>
    <div class="main-right">

        <div class="hot-user">
            <div class="clearfix"><div class="hot-user-title"><span></span>&nbsp;近期活跃用户</div></div>
            <ul class="hot-user-list">
                <c:forEach items="${hotUserList}" var="user">
                    <li class="clearfix">
                        <a href="toProfile.do?uid=${user.uid}" class="hot-user-image"><img src="${user.headUrl}"></a>
                        <a href="toProfile.do?uid=${user.uid}" class="hot-user-name">${user.username}</a>
                    </li>
                </c:forEach>
            </ul>
        </div>

        <div class="hot-user">
            <div class="clearfix"><div class="hot-user-title"><span></span>&nbsp;近期加入用户</div></div>
            <ul class="hot-user-list">
                <c:forEach items="${userList}" var="user">
                    <li class="clearfix">
                        <a href="toProfile.do?uid=${user.uid}" class="hot-user-image"><img src="${user.headUrl}"></a>
                        <a href="toProfile.do?uid=${user.uid}" class="hot-user-name">${user.username}</a>
                    </li>
                </c:forEach>
            </ul>
        </div>

    </div>
</div>

<%@ include file="footer.jsp" %>
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/base.js"></script>
<script type="text/javascript">
    $(function(){
        var curPage = ${pageBean.curPage};
        $(".pageNum").each(function(){
            if($(this).text()==curPage){
                $(this).addClass("active");
            }
        });
    });

</script>
</body>
</html>
