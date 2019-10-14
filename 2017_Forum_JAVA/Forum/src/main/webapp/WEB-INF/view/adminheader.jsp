<%--
  Created by IntelliJ IDEA.
  User: oyangiz
  Date: 2017/6/5
  Time: 上午1:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="view-sidebar">
    <div class="sidebar-content">
        <div class="sidebar-nav" style="border-bottom: 1px solid;border-color: #ffffff;font-size: 24px;color: #4637cd">
            <div class="sidebar-title">
                <a href="admin.do">
                    <span class="icon"><b class="fl icon-arrow-down"></b></span>
                    <span class="text-normal">仪表盘</span>
                </a>
            </div>
        </div>
        <!--会员管理-->
        <div class="sidebar-nav">
            <div class="sidebar-title">
                <a href="adminuser.do">
                    <span class="icon"><b class="fl icon-arrow-down"></b></span>
                    <span class="text-normal">会员管理</span>
                </a>
            </div>
            <ul class="sidebar-trans">
                <li>
                    <a href="adminuser.do">
                        <b class="sidebar-icon"><img src="/image/icon_author.png" width="16" height="16" /></b>
                        <span class="text-normal">修改会员信息</span>
                    </a>
                </li>
                <%--<li>--%>
                    <%--<a href="smsInfo.html">--%>
                        <%--<b class="sidebar-icon"><img src="/image/icon_message.png" width="16" height="16" /></b>--%>
                        <%--<span class="text-normal">删除会员</span>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <li>
                    <a href="adminuser.do">
                        <b class="sidebar-icon"><img src="/image/icon_message.png" width="16" height="16" /></b>
                        <span class="text-normal">限制会员活动</span>
                    </a>
                </li>
                <!-- <li>
                    <a href="#">
                        <b class="sidebar-icon"><img src="/image/icon_market.png" width="16" height="16" /></b>
                        <span class="text-normal">云市场</span>
                    </a>
                </li> -->
            </ul>
        </div>
        <!--帖子管理-->
        <div class="sidebar-nav">
            <div class="sidebar-title">
                <a href="adminpost.do?curPage=1">
                    <span class="icon"><b class="fl icon-arrow-down"></b></span>
                    <span class="text-normal">帖子管理</span>
                </a>
            </div>
            <ul class="sidebar-trans">
                <li>
                    <a href="adminpost.do?curPage=1">
                        <b class="sidebar-icon"><img src="/image/icon_cost.png" width="16" height="16" /></b>
                        <span class="text-normal">删除帖子</span>
                    </a>
                </li>
                <li>
                    <a href="adminpost.do?curPage=1">
                        <b class="sidebar-icon"><img src="/image/icon_authentication.png" width="16" height="16" /></b>
                        <span class="text-normal">修改帖子</span>
                    </a>
                </li>
                <li>
                    <a href="adminpost.do?curPage=1">
                        <b class="sidebar-icon"><img src="/image/icon_news.png" width="16" height="16" /></b>
                        <span class="text-normal">查看帖子</span>
                    </a>
                </li>

                <%--<li>--%>
                    <%--<a href="order.html">--%>
                        <%--<b class="sidebar-icon"><img src="/image/icon_order.png" width="16" height="16" /></b>--%>
                        <%--<span class="text-normal">订单管理</span>--%>
                    <%--</a>--%>
                <%--</li>--%>
            </ul>
        </div>
        <!--板块管理-->
        <div class="sidebar-nav">
            <div class="sidebar-title">
                <a href="admintopic.do">
                    <span class="icon"><b class="fl icon-arrow-down"></b></span>
                    <span class="text-normal">板块管理</span>
                </a>
            </div>
            <ul class="sidebar-trans">
                <li>
                    <a href="admintopic.do">
                        <b class="sidebar-icon"><img src="/image/icon_author.png" width="16" height="16" /></b>
                        <span class="text-normal">添加板块</span>
                    </a>
                </li>
                <li>
                    <a href="admintopic.do">
                        <b class="sidebar-icon"><img src="/image/icon_message.png" width="16" height="16" /></b>
                        <span class="text-normal">删除板块</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="sidebar-nav">
            <div class="sidebar-title">
                <a href="/toPost.do?pid=2">
                    <span class="icon"><b class="fl icon-arrow-down"></b></span>
                    <span class="text-normal">建议箱</span>
                </a>
            </div>
            <ul class="sidebar-trans">
                <li>
                    <a href="/toPost.do?pid=2">
                        <b class="sidebar-icon"><img src="/image/icon_author.png" width="16" height="16" /></b>
                        <span class="text-normal">查看建议</span>
                    </a>
                </li>

            </ul>
            <ul class="sidebar-trans">
                <li>
                    <a href="/goadminupdatenotice.do?id=4">
                        <b class="sidebar-icon"><img src="/image/icon_author.png" width="16" height="16" /></b>
                        <span class="text-normal">修改公告</span>
                    </a>
                </li>

            </ul>
        </div>
    </div>
</div>
<%--<h3><a href="adminuser.do">会员管理</a></h3>--%>
<%--<h3><a href="adminpost.do?curPage=1">帖子管理</a></h3>--%>
<%--<h3><a href="admintopic.do">板块管理</a></h3>--%>
</body>
</html>
