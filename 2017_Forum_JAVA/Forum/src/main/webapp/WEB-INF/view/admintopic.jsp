<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: oyangiz
  Date: 2017/6/6
  Time: 上午12:47
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

<%--<h1>板块管理&nbsp;&nbsp;</h1>--%>


<%--<h2>添加新的板块</h2>--%>
<%--<form action="/addtopic.do" method="post">--%>
    <%--tid<input id="tid" name="tid">--%>
    <%--name<input id="name" name="name">--%>
    <%--content<input id="content" name="content">--%>
    <%--image url<input id="image" name="image">--%>
    <%--<input type="submit" value="add">--%>
<%--</form>--%>


<%--<div class="topic-list">--%>
    <%--<div class="topic-list-wrap clearfix">--%>
        <%--<c:forEach items="${adminTopicList}" var="topic" varStatus="status">--%>

                    <%--<div class="topic-odd relative">--%>
                        <%--&lt;%&ndash;<a href="#" class="topic-image"><img src="${topic.image}"></a>&ndash;%&gt;--%>
                        <%--<div class="topic-content">--%>
                            <%--<a href="topicpost.do?ttid=${topic.tid}" class="topic-name">${topic.name}</a>--%>
                            <%--&lt;%&ndash;<a href="#" class="topic-desc">&ndash;%&gt;--%>
                                    <%--${topic.content}--%>
                            <%--&lt;%&ndash;</a>&ndash;%&gt;--%>
                            <%--<a href="topicpost.do?ttid=${topic.tid}" class="topic-name">查看帖子</a>--%>
                            <%--<a href="goupdatetopic.do?tid=${topic.tid}" class="topic-name">修改</a>--%>
                            <%--<a href="deletetopic.do?tid=${topic.tid}" class="topic-name">删除</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>

        <%--</c:forEach>--%>
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

                <div class="col-md-5"></div>
                <div class="col-md-2"><h1>板块管理</h1></div>
                <%--<div class="topic-list">--%>
                    <%--<div class="topic-list-wrap clearfix">--%>
                        <%--<c:forEach items="${adminTopicList}" var="topic" varStatus="status">--%>

                            <%--<div class="topic-odd relative">--%>
                                    <%--&lt;%&ndash;<a href="#" class="topic-image"><img src="${topic.image}"></a>&ndash;%&gt;--%>
                                <%--<div class="topic-content">--%>
                                    <%--<a href="topicpost.do?ttid=${topic.tid}" class="topic-name">${topic.name}</a>--%>
                                        <%--&lt;%&ndash;<a href="#" class="topic-desc">&ndash;%&gt;--%>
                                        <%--${topic.content}--%>
                                        <%--&lt;%&ndash;</a>&ndash;%&gt;--%>
                                    <%--<a href="topicpost.do?ttid=${topic.tid}" class="topic-name">查看</a>--%>
                                    <%--<a href="goupdatetopic.do?tid=${topic.tid}" class="topic-name">修改</a>--%>
                                    <%--<a href="deletetopic.do?tid=${topic.tid}" class="topic-name">删除</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>

                        <%--</c:forEach>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <div class="col-md-5"><br></div>
                <div class="col-md-5"><h2>板块列表</h2></div>
                <div class="col-md-5"></div>
                <div class="col-md-12">
                    <table class="table table-condensed" align="center">
                        <thead>
                        <tr>
                            <th>板块ID</th>
                            <th>板块名称</th>
                            <th>板块描述</th>
                            <th width="6.66%" align="center">查看</th>
                            <th width="6.66%" align="center">修改</th>
                            <th width="6.66%" align="center">删除</th>
                        </tr>
                        </thead>
                        <tbody>
<c:forEach items="${adminTopicList}" var="topic" varStatus="status">
                        <tr class="success">
                            <td>${topic.tid}</td>
                            <td>${topic.name}</td>
                            <td>${topic.content}</td>
                            <td colspan="1">
                                <button type="button" class="btn btn-success btn-block" href="topicpost.do?ttid=${topic.tid}"><a href="topicpost.do?ttid=${topic.tid}">查看</a></button>
                            </td>
                            <td>
                                <button type="button" class="btn btn-success btn-block" href="goupdatetopic.do?tid=${topic.tid}"><a href="goupdatetopic.do?tid=${topic.tid}">修改</a></button>
                            </td>
                            <%--<c:if test="${topic.tid > 12}">--%>
                            <td>
                                <button type="button" class="btn btn-success btn-block" href="deletetopic.do?tid=${topic.tid}"><a href="deletetopic.do?tid=${topic.tid}">删除</a></button>
                            </td>
                            <%--</c:if>--%>
                        </tr>
</c:forEach>
                        </tbody>
                    </table>
                </div>

                <div class="col-md-5"></div>
                <div class="col-md-2"><h2>添加板块</h2></div>

                    <div class="col-md-5"></div>
                    <div class="col-md-12">
                        <form role="form" action="/addtopic.do" method="post">
                            <div class="form-group">
                                <label for="tid">tid</label>
                                <input class="form-control" type="text" id="tid" name="tid">
                                <label for="name">name</label>
                                <input class="form-control" type="text" id="name" name="name">
                                <label for="content">content</label>
                                <input class="form-control" type="text" id="content" name="content">
                                <label for="image">image url</label>
                                <input class="form-control" type="text" id="image" name="image" value="https://mgame-f.netease.com/forum/201705/20/000427q3100fjo9fojoow1.png">
                            </div>
                            <input class="btn btn-success btn-lg btn-block" type="submit" value="添加">
                        </form>
                    </div>



            </div>

        </div>
    </div>
</div>
</body>
</html>
