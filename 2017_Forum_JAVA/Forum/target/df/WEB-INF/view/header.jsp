<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" import="java.util.*" %>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="header-body">
    <div class="myContainer" style="width: 100%;height: 300px">
        <div class="carousel slide" id="carousel-777575" style="width: 100%;height: 300px">
            <ol class="carousel-indicators">
                <li class="active" data-slide-to="0" data-target="#carousel-777575">
                </li>
                <li data-slide-to="1" data-target="#carousel-777575">
                </li>
                <li data-slide-to="2" data-target="#carousel-777575">
                </li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <img class="myImg" alt="" src="https://ws3.sinaimg.cn/large/006tNbRwly1fgbg4t91o6j30sg0iyjtp.jpg" style="height:300px"/>
                    <div class="carousel-caption">
                        <h1>
                            开发者论坛
                        </h1>
                        <p>
                            我们的论坛
                        </p>
                    </div>
                </div>
                <div class="item">
                    <img class="myImg" alt="" src="https://ws2.sinaimg.cn/large/006tNbRwly1fgbg5uo9p8j30sg0j6my5.jpg" style="height: 300px"/>
                    <div class="carousel-caption">
                        <h1>
                            开发者论坛
                        </h1>
                        <p>
                            你们的论坛
                        </p>
                    </div>
                </div>
                <div class="item">
                    <img class="myImg" alt="" src="https://ws4.sinaimg.cn/large/006tNbRwly1fgbg6j2pzqj30i20baaa5.jpg" style="height: 300px"/>
                    <div class="carousel-caption">
                        <h1>
                            开发者论坛
                        </h1>
                        <p>
                            大家的论坛
                        </p>
                    </div>
                </div>
            </div> <a class="left carousel-control" href="#carousel-777575" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-777575" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
        </div>
    </div>
</div>
<!--bootstrap的导航-->
<nav class="container-custom" style="background-color: #2e964b">
    <ul class="menu">
        <li><a href="toIndex.do"><i class="fa fa-home"></i>&nbsp;首页</a></li>
        <li><a href="listTopic.do"><i class="fa fa-tags"></i>&nbsp;板块</a></li>
        <li><a href="/toPost.do?pid=1"><i class="fa fa-sun-o fa-file"></i>&nbsp;新手指南</a></li>
        <li><a href="/toPost.do?pid=2"><i class="fa fa-envelope-o"></i>&nbsp;建议箱</a></li>

        <li><a href="toMessage.do"><i class="fa fa-globe"></i>&nbsp;消息</a></li>

    <c:choose>
    <c:when test="${sessionScope.uid != null}">
        <li><a href="#"><i class="fa fa-tags"></i>&nbsp;菜单</a>
            <ul class="submenu">
                <li><a href="toMyProfile.do">个人主页</a></li>
                <c:if test="${sessionScope.uid == 1}">
                <li><a href="admin.do">管理面板</a></li>
                </c:if>
                <li><a href="logout.do">退出登录</a></li>

            </ul>
        </li>
        </c:when>
        <c:otherwise>
        <li><a href="toLogin.do"><i class="fa fa-envelope-o"></i>&nbsp;登录</a></li>

        <li><a href="toLogin.do#register"><i class="fa fa-globe"></i>&nbsp;注册</a></li>

        </c:otherwise>
        </c:choose>
    </ul>
</nav>
