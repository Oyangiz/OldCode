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
	<link rel="stylesheet" type="text/css" href="/css/wangEditor.css">
	<link rel="stylesheet" type="text/css" href="/css/base.css">
	<link rel="stylesheet" type="text/css" href="/css/login.css">
	<style type="text/css">
		.main div{
            margin: 200px auto;
            width: 600px;
            font-size: 20px;
		}
	</style>
</head>
<body>
<%@ include file="../header.jsp" %>


	<!-- 中间主体板块 -->
	<div class="main w clearfix">
		<div>
			${info}
		</div>
	</div><!-- 主体结束 -->



<%@ include file="../footer.jsp" %>
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/base.js"></script>
</body>
</html>













