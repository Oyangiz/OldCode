<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: oyangiz
  Date: 2017/6/5
  Time: 上午4:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/css/identify.css" />
    <link rel="stylesheet" type="text/css" href="/css/layout.css" />
    <link rel="stylesheet" type="text/css" href="/css/account.css" />
    <link rel="stylesheet" type="text/css" href="/css/style1.css" />
    <link rel="stylesheet" type="text/css" href="/css/control_index.css" />

    <script type="text/javascript" src="/js/layer/layer.js"></script>
    <script type="text/javascript" src="/js/haidao.offcial.general.js"></script>
    <script type="text/javascript" src="/js/select.js"></script>
    <script type="text/javascript" src="/js/haidao.validate.js"></script>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<%--<body>--%>
<%--<%@include file="top.jsp"%>--%>
<%--<div class="view-body">--%>
    <%--<%@ include file="adminheader.jsp" %>--%>
<%--<div class="post">--%>
    <%--<div class="post-wrap">--%>
        <%--<div class="post-choice">--%>
            <%--<a href="#" class="post-choice-current">最近</a>--%>
        <%--</div>--%>

        <%--<ul class="post-list">--%>
            <%--<c:forEach items="${pageBean.list}" var="post">--%>
                <%--<li class="clearfix">--%>
                    <%--&lt;%&ndash;<div class="post-image">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<a href="toProfile.do?uid=${post.user.uid}"><img src="${post.user.headUrl}"></a>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                    <%--<div class="post-content">--%>
                        <%--<div class="post-title"><a href="toPost.do?pid=${post.pid}">${post.title}</a>&nbsp;&nbsp;&nbsp;<a href="toPost.do?pid=${post.pid}">查看</a>&nbsp;&nbsp;<a href="/goadminupdatepost.do?pid=${post.pid}">修改</a>&nbsp;&nbsp;<a href="deletepost.do?pid=${post.pid}">删除</a></div>--%>
                        <%--<div class="post-other">--%>
                            <%--<div class="post-other-left">--%>
                                <%--<span class="post-username"><a href="toProfile.do?uid=${post.user.uid}">${post.user.username}</a></span>--%>
                                <%--<span>&nbsp;发表</span>--%>
                                <%--<span class="post-time">&nbsp;${post.publishTime}</span>--%>
                                <%--<span>&nbsp;最后回复&nbsp;</span>--%>
                                <%--<span class="post-reply-time">${post.replyTime}</span>--%>
                            <%--</div>--%>
                            <%--<div class="post-other-right">--%>
                                <%--<span class="post-reply-count">回复 ${post.replyCount}</span>&nbsp;--%>
                                <%--<span class="post-like-count">赞 ${post.likeCount}</span>&nbsp;--%>
                                <%--<span class="post-scan-count">浏览 ${post.scanCount}</span>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</li>--%>
            <%--</c:forEach>--%>

        <%--</ul>--%>

        <%--&lt;%&ndash;分页导航&ndash;%&gt;--%>
        <%--<nav class="col-md-10 col-md-offset-2">--%>
            <%--<ul class="pagination pagination-sm">--%>
                <%--&lt;%&ndash;首页&ndash;%&gt;--%>
                <%--<li><a href="adminpost.do?curPage=1">首页</a></li>--%>
                <%--&lt;%&ndash;上一页&ndash;%&gt;--%>
                <%--<c:choose>--%>
                    <%--<c:when test="${pageBean.curPage!=1 }">--%>
                        <%--<li><a href="adminpost.do?curPage=${pageBean.curPage-1 }"><span>&laquo;</span></a></li>--%>
                    <%--</c:when>--%>
                    <%--<c:otherwise>--%>
                        <%--<li><span>&laquo;</span></li>--%>
                    <%--</c:otherwise>--%>
                <%--</c:choose>--%>
                <%--&lt;%&ndash;中间部分&ndash;%&gt;--%>
                <%--<c:choose>--%>
                    <%--<c:when test="${pageBean.allPage<=10 }">--%>
                        <%--<c:forEach begin="1" end="${ pageBean.allPage}" var="i">--%>
                            <%--<li class="pageNum"><a href="adminpost.do?curPage=${i }">${i }</a></li>--%>
                        <%--</c:forEach>--%>
                    <%--</c:when>--%>
                    <%--<c:when test="${pageBean.curPage<=5 }">--%>
                        <%--<c:forEach begin="1" end="10" var="i">--%>
                            <%--<li class="pageNum"><a href="adminpost.do?curPage=${i }">${i }</a></li>--%>
                        <%--</c:forEach>--%>
                    <%--</c:when>--%>
                    <%--<c:when test="${pageBean.allPage-pageBean.curPage<5 }">--%>
                        <%--<c:forEach begin="${pageBean.allPage-9 }" end="${ pageBean.allPage}" var="i">--%>
                            <%--<li class="pageNum"><a href="adminpost.do?curPage=${i }">${i }</a></li>--%>
                        <%--</c:forEach>--%>
                    <%--</c:when>--%>
                    <%--<c:otherwise>--%>
                        <%--<c:forEach begin="${pageBean.curPage-4 }" end="${ pageBean.curPage+5}" var="i">--%>
                            <%--<li class="pageNum"><a href="adminpost.do?curPage=${i }">${i }</a></li>--%>
                        <%--</c:forEach>--%>
                    <%--</c:otherwise>--%>
                <%--</c:choose>--%>
                <%--&lt;%&ndash;下一页&ndash;%&gt;--%>
                <%--<c:choose>--%>
                    <%--<c:when test="${pageBean.curPage!=pageBean.allPage }">--%>
                        <%--<li><a href="adminpost.do?curPage=${pageBean.curPage+1 }"><span>&raquo;</span></a></li>--%>
                    <%--</c:when>--%>
                    <%--<c:otherwise>--%>
                        <%--<li><span>&raquo;</span></li>--%>
                    <%--</c:otherwise>--%>
                <%--</c:choose>--%>
                <%--&lt;%&ndash;尾页&ndash;%&gt;--%>
                <%--<li><a href="adminpost.do?curPage=${pageBean.allPage}">尾页</a></li>--%>
            <%--</ul>--%>
        <%--</nav>--%>

    <%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</body>--%>

<body>
<%@include file="top.jsp"%>
<div class="view-body">
    <%@ include file="adminheader.jsp" %>
        <div class="view-product background-color">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <table class="table">
                            <thead align="center">
                                <td width="80%">贴文</td>
                                <td>查看</td>
                                <td>修改</td>
                                <td>删除</td>
                            </thead>
                            <tbody>
                            <c:forEach items="${pageBean.list}" var="post">
                                <tr class="success">
                                        <%--<div class="post-image">--%>
                                        <%--<a href="toProfile.do?uid=${post.user.uid}"><img src="${post.user.headUrl}"></a>--%>
                                        <%--</div>--%>


                                            <td>
                                                <a href="toPost.do?pid=${post.pid}">${post.title}</a>
                                            </td>
                                            <td>
                                                <a href="toPost.do?pid=${post.pid}"><button class="btn btn-info btn-block">查看</button></a>
                                            </td>
                                            <td>
                                                <a href="/goadminupdatepost.do?pid=${post.pid}"><button class="btn btn-info btn-block">修改</button></a>
                                            </td>
                                            <td>
                                                <a href="deletepost.do?pid=${post.pid}"><button class="btn btn-info btn-block">删除</button></a>
                                            </td>
                                </tr>
                                <tr class="warning">
                                    <td colspan="4">
                                        <div class="col-md-12">
                                            <strong><small><a href="toProfile.do?uid=${post.user.uid}">${post.user.username}</a></small></strong>
                                            <strong><small><span>发表于：</span></small></strong>
                                            <strong><small><span>${post.publishTime}</span></small></strong>&nbsp;&nbsp;&nbsp;&nbsp;
                                            <strong><small><span>最后回复：</span></small></strong>
                                            <strong><small><span>${post.replyTime}</span></small></strong>&nbsp;&nbsp;&nbsp;&nbsp;
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                            <tfoot>
                                <td colspan="4" align="center">
                                    <!--分页导航-->
                                <ul class="pagination pagination-lg">
                                    <%--首页--%>
                                    <li><a href="adminpost.do?curPage=1">首页</a></li>
                                    <%--上一页--%>
                                    <c:choose>
                                        <c:when test="${pageBean.curPage!=1 }">
                                            <li><a href="adminpost.do?curPage=${pageBean.curPage-1 }"><span>&laquo;</span></a></li>
                                        </c:when>
                                        <c:otherwise>
                                            <li><span>&laquo;</span></li>
                                        </c:otherwise>
                                    </c:choose>
                                    <%--中间部分--%>
                                    <c:choose>
                                        <c:when test="${pageBean.allPage<=10 }">
                                            <c:forEach begin="1" end="${ pageBean.allPage}" var="i">
                                                <li class="pageNum"><a href="adminpost.do?curPage=${i }">${i }</a></li>
                                            </c:forEach>
                                        </c:when>
                                        <c:when test="${pageBean.curPage<=5 }">
                                            <c:forEach begin="1" end="10" var="i">
                                                <li class="pageNum"><a href="adminpost.do?curPage=${i }">${i }</a></li>
                                            </c:forEach>
                                        </c:when>
                                        <c:when test="${pageBean.allPage-pageBean.curPage<5 }">
                                            <c:forEach begin="${pageBean.allPage-9 }" end="${ pageBean.allPage}" var="i">
                                                <li class="pageNum"><a href="adminpost.do?curPage=${i }">${i }</a></li>
                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>
                                            <c:forEach begin="${pageBean.curPage-4 }" end="${ pageBean.curPage+5}" var="i">
                                                <li class="pageNum"><a href="adminpost.do?curPage=${i }">${i }</a></li>
                                            </c:forEach>
                                        </c:otherwise>
                                    </c:choose>
                                    <%--下一页--%>
                                    <c:choose>
                                        <c:when test="${pageBean.curPage!=pageBean.allPage }">
                                            <li><a href="adminpost.do?curPage=${pageBean.curPage+1 }"><span>&raquo;</span></a></li>
                                        </c:when>
                                        <c:otherwise>
                                            <li><span>&raquo;</span></li>
                                        </c:otherwise>
                                    </c:choose>
                                    <%--尾页--%>
                                    <li><a href="adminpost.do?curPage=${pageBean.allPage}">尾页</a></li>
                                </ul>
                                </td>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
</div>
</body>

</html>
