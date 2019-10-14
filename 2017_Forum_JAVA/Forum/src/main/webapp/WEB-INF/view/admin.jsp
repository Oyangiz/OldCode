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
    <title>Admin</title>
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
<%@include file="top.jsp"%>
<div class="view-body">
<%@ include file="adminheader.jsp" %>

<!--右侧内容-->
<div class="view-product background-color">
    <div class="padding-big background-color">
        <div class="account-info clearfix">


            <div class="text-box-main min-width-300 fl">
                <dl>
                    <dt class="padding-big-left lists-border-list clearfix">
                    <div class="title fl padding-big-top padding-big-bottom">
                        <p>HI,admin</p>
                        <p class="margin-small-top clearfix">

                        </p>
                    </div>
                    <span class="fr icon-head">
										<img src="http://user.haidao.la/avatar.php?uid=1504&type=virtual&size=middle" alt="账户头像">
									</span>
                    </dt>
                    <dd class="padding-big clearfix">
                        <p class="w50 fl">
                            当前在线：1个用户
                    </dd>
                </dl>


            </div>





            <div class="text-box-main min-width-300 fl margin-right-none">
                <dl>
                    <dt class="padding-big lists-border-list clearfix">
                    <div class="fl title">
                        <p>交流群：</p>
                        <p class="text-sliver text-default margin-small-top">
                            <em class="h3 text-golden margin-big-right">群：</em>620826080
                        </p>
                    </div>
                    <div class="fr">
                        <a class="button btn-orange text-white" href="http://jq.qq.com/?_wv=1027&k=28Xajoq" target="_blank">点击加入</a>
                    </div>
                    </dt>
                    <dd class="padding-big">
                        <div class="account-class text-hidden">
                            <p>在使用中有任何问题，欢迎随时联系！</p>
                        </div>
                    </dd>
                </dl>
            </div>
        </div>



    <div class="account-product margin-big-top clearfix">
            <div class="text-box-main padding-big fl mine-product">
                <h2 class="h6 margin-big-bottom">我的信息</h2>
                <div class="mine-product-content clearfix">
                    <ul class="w50 fl lists">

                        <li class="w70 lists-border-list">
                            <p class="border-list-text">身份
                                <a class="text-main fr" href="#">管理员</a>
                            </p>
                        </li>
                        <li class="w70 lists-border-list">
                            <p class="border-list-text">账号等级：
                                <a class="text-main fr" href="#">NO1</a>
                            </p>
                        </li>

                        <li class="w70 lists-border-list">
                            <p class="border-list-text">住址：
                                <a class="text-main fr" href="#">天津工业大学</a>
                            </p>
                        </li>

                    </ul>
                    <ul class="w50 fl lists">

                        <li class="w70 lists-border-list">
                            <p class="border-list-text">用户名
                                <a class="text-main fr" href="#">byb</a>
                            </p>
                        </li>
                        <li class="w70 lists-border-list">
                            <p class="border-list-text">职业：
                                <a class="text-main fr" href="#">程序员</a>
                            </p>
                        </li>
                        <li class="w80 lists-border-list">
                            <p class="border-list-text">邮箱
                                <a class="text-main fr" href="#">software@sin.com</a>
                            </p>
                        </li>
                    </ul>
                </div>
            </div>

        </div>

    <div class="account-product margin-big-top clearfix">
        <div class="text-box-main padding-big fl mine-product">
            <iframe name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=99" width="160" height="36" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
        </div>

    </div>
</div>
</div>



<script>
    $(".sidebar-title").live('click', function() {
        if ($(this).parent(".sidebar-nav").hasClass("sidebar-nav-fold")) {
            $(this).next().slideDown(200);
            $(this).parent(".sidebar-nav").removeClass("sidebar-nav-fold");
        } else {
            $(this).next().slideUp(200);
            $(this).parent(".sidebar-nav").addClass("sidebar-nav-fold");
        }
    });
</script>
</body>
</html>
