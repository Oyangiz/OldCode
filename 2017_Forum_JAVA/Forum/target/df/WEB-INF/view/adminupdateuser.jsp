<%--
  Created by IntelliJ IDEA.
  User: oyangiz
  Date: 2017/6/6
  Time: 上午2:22
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
<%--<form action="/adminupdateuser.do" method="post">--%>
    <%--tid<input id="uid" name="uid" value="${updateuser.uid}" readonly="readonly">--%>
    <%--username<input id="username" name="username" value="${updateuser.username}">--%>
    <%--description<input id="description" name="description" value="${updateuser.description}">--%>
    <%--<input type="submit" value="update">--%>
<%--</form>--%>
<%--</div>--%>
<%--</body>--%>

<body>
<%@include file="top.jsp"%>
<div class="view-body">
    <%@ include file="adminheader.jsp" %>
    <div class="view-product background-color">
        <div class="container-fluid">
            <div class="row">
                <h3>updateUser&nbsp;&nbsp;</h3>
                <div class="col-md-5"></div>
                <div class="col-md-2"><h2>修改会员信息</h2></div>
                <div class="col-md-5"></div>
                <div class="col-md-12">
                    <form role="form" action="/adminupdateuser.do" method="post">
                        <div class="form-group">
                            <label for="uid">uid</label>
                            <input class="form-control" type="text" id="uid" name="uid" value="${updateuser.uid}" readonly="readonly">
                            <label for="username">userName</label>
                            <input class="form-control" type="text" id="username" name="username" value="${updateuser.username}">
                            <label for="description">description</label>
                            <input class="form-control" type="text" id="description" name="description" value="${updateuser.description}">
                        </div>
                        <input class="btn btn-success" type="submit" value="update">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
