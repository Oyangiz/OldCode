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
	<link rel="stylesheet" type="text/css" href="/css/wangEditor.css">
	<link rel="stylesheet" type="text/css" href="/css/base.css">
	<link rel="stylesheet" type="text/css" href="/css/editProfile.css">
</head>
<body>
<%@ include file="header.jsp" %>


	<!-- 中间主体板块 -->
	<div class="main w clearfix">
		<div class="edit-header"><span></span>&nbsp;编辑信息</div>
		<form action="editProfile.do" method="post">
			<div class="edit-title">
                <input type="hidden" name="uid" value="${user.uid}">
				用户名：<input type="text" name="username" value="${user.username}">
			</div>
			<div class="edit-title">
				签&nbsp;&nbsp;&nbsp;名：<input type="text" name="description" value="${user.description}">
			</div>
			<div class="edit-title">
				位&nbsp;&nbsp;&nbsp;置：<input type="text" name="position" value="${user.description}">
			</div>
			<div class="edit-title">
				学&nbsp;&nbsp;&nbsp;校：<input type="text" name="school" value="${user.school}">
			</div>
			<div class="edit-title">
				工&nbsp;&nbsp;&nbsp;作：<input type="text" name="job" value="${user.job}">
			</div>
			<div class="relative">
				<button class="edit-submit">确认编辑</button>
			</div>
		</form>

        <div style="margin-top: 60px;"></div>
		<div class="edit-header"><span></span>&nbsp;修改密码</div>
		<form action="updatePassword.do" method="post">
			<div class="edit-title">
                <div class="text-danger">${passwordError}</div>
				原密码：<input type="password" name="password">
			</div>
			<div class="edit-title">
				新密码：<input type="password" name="newpassword">
			</div>
			<div class="edit-title">
				确&nbsp;&nbsp;&nbsp;认：<input type="password" name="repassword">
			</div>
			<div class="relative">
				<button class="edit-submit">确认修改</button>
			</div>
		</form>

        <div style="margin-top: 60px;"></div>
        <div class="edit-header"><span></span>&nbsp;更换头像</div>
        <form action="updateHeadUrl.do" method="post" enctype="multipart/form-data">
            <div class="edit-title">
				<span class="text-danger">${error3}</span>
                <input type="file" name="myFileName">
            </div>
            <div class="relative">
                <button class="edit-submit">确认更新</button>
            </div>
        </form>

	</div><!-- 主体结束 -->


<%@ include file="footer.jsp" %>
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>

</body>
</html>













