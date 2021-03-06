
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/resource/css/bootstrap.min.css">
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
   function goPage(page){
	   location.href="/?page="+page
   }
</script>
</head>
<body>
	<div class="container">
		
		<h1 align="center">已发布的汽车</h1>
		<center>
		<a href="/add">去发布</a> <a href="/reg">去注册</a> <a href="/login">去登录<!-- </a>
		<a href="/driver/cars">我要租车</a> -->
		</center>
		<hr>
		<c:forEach items="${info.list}" var="c">
			<div style="float: left; margin-right: 10px">
				<dl>
					<dd>
						<img alt="" src="/pic/${c.picUrl }" style="width: 200px; height: 150px">
					</dd>
					<dd>品牌:${c.trademark }</dd>
					<dd>
						租金:<font color="red"> ${c.rent } 元</font>
					</dd>
				</dl>
			</div>
		</c:forEach>
		<div style="clear: both;">
			<jsp:include page="pages.jsp" />
		</div>
	</div>
</body>
</html>