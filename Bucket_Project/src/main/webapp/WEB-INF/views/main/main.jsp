<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx">${pageContext.request.contextPath }</c:set>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>신고 리스트</title>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	padding-top: 100px;
	padding-left: 300px;
	background-image: url("img/stardust.png");
}

div {
	width: 1000px;
}
</style>

</head>
<body>

	<div class="form-group has-success has-feedback">
		<label class="control-label sr-only" for="inputGroupSuccess4">Input
			group with success</label>
		<div class="input-group">
			<span class="input-group-addon">@</span> <input type="text"
				class="form-control" id="inputGroupSuccess4"
				aria-describedby="inputGroupSuccess4Status">
		</div>
	</div>

	<div>
	<img src="..." alt="..." class="img-rounded">
	<img src="..." alt="..." class="img-circle">
	<img src="..." alt="..." class="img-thumbnail">
	</div><br><br>
	<div>
	<img src="..." alt="..." class="img-rounded">
	<img src="..." alt="..." class="img-circle">
	<img src="..." alt="..." class="img-thumbnail">
	</div>
	

</body>
</html>
