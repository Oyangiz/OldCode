<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: oyangiz
  Date: 2017/6/5
  Time: 上午2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
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
<body>
<body>
<%@include file="top.jsp"%>
<div class="view-body">
    <%@ include file="adminheader.jsp" %>

    <div class="view-product background-color">
        <div class="container-fluid">
            <div class=""><div class=""><span></span><h3>会员管理</h3></div></div>
            <%--<ul class="">--%>
                <%--<c:forEach items="${adminUserList}" var="adminuser">--%>
                    <%--<li class="clearfix">--%>
                            <%--&lt;%&ndash;<a href="toProfile.do?uid=${adminuser.uid}" class="hot-user-image"><img src="${adminuser.headUrl}"></a>&ndash;%&gt;--%>
                            <%--${adminuser.uid} - ${adminuser.email} ---%>
                        <%--<a href="toProfile.do?uid=${adminuser.uid}" class="hot-user-name">${adminuser.username}</a>--%>

                        <%--- ${adminuser.description}--%>

                        <%--<c:if test="${adminuser.uid != 1}">--%>
                            <%--<a href="goadminupdateuser.do?uid=${adminuser.uid}">修改</a>--%>
                            <%--<a href="ban.do?uid=${adminuser.uid}">禁止登陆</a>--%>

                        <%--</c:if>--%>

                    <%--</li>--%>
                <%--</c:forEach>--%>
            <%--</ul>--%>
            <table class="table">
                <caption align="center">会员列表  </caption>
                <thead>
                <tr>
                    <th>id</th>
                    <th>会员名</th>
                    <th>描述</th>
                    <th>修改</th>
                    <th>禁止登录</th>
                </tr>
                </thead>
                <tbody>
<c:forEach items="${adminUserList}" var="adminuser">
                <tr class="success">
                    <td>${adminuser.uid}</td>
                    <td>${adminuser.username}</td>
                    <td>${adminuser.description}</td>
                    <c:if test="${adminuser.uid != 1}">
                    <td colspan="1">
                        <button type="button" class="btn btn-success"><a href="goadminupdateuser.do?uid=${adminuser.uid}">修改</a></button>
                    </td>
                    <td>
                        <button type="button" class="btn btn-success"><a href="ban.do?uid=${adminuser.uid}">禁止登陆</a></button>
                    </td>
                    </c:if>
                </tr>
</c:forEach>
                </tbody>
            </table>

        </div>
    </div>

</div>
</body>
</html>
