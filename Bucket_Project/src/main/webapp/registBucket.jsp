<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이미지 후기 등록</title>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-2.2.4.min.js"></script>
</head>
<body>

	<div class="contents">
		<table width="1000px" height="300px" border="1">
			<form action="/registBucket" method="post"
				enctype="multipart/form-data">
				<input type="hidden" name="writerId" value="${param.loginedUser}">
			<tr>
				<td align="center">이미지 후기<input type="file" name="image"></td>
			</tr>
			<tr>
				<td align="center" >제목 <input type="text" name="title" /></td>
			</tr>

			<tr>
				<td align="center" >후기<br><textarea name="contents" cols="100" rows="20"></textarea></td>
			</tr>
		</table>
			<button type="submit" class="btn" style="float: left">게시</button>
		<button type="button" class="btn" style="float: left"
			onclick="javascript:history.back()">취소</button>
		</form>
	</div>
</body>
</html>