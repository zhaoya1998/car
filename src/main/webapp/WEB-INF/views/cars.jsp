
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
	   location.href="/driver/cars?page="+page
   }
   </script>
</head>
<body>
	<div class="container">
		<h3 align="center">${sessionScope.driver.name },您可以的租以下车型:</h3>
		<hr>
		<c:forEach items="${info.list}" var="c">
			<div style="float: left; margin-right: 5px">
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
			<a href="/index"><button type="button" class="btn btn-link">返回主页</button></a>
		</div>
	</div>
</body>
</html>