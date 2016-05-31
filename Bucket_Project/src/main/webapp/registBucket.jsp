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
<script type="text/javascript">
	var validate = function() {
		if (document.getElementById("image").value == "") {
			alert("이미지를 등록해주세요");
			return false;
		}
		if (document.getElementById("title").value == "") {
			alert("제목을 적어주세요");
			document.getElementById("title").focus();
			return false;
		}
		return true;
	};

	var join = function() {
		if (validate()) {
			document.getElementById("registBucket").submit();
		}
	};
</script>
</head>
<body>

	<div class="contents">
		<form action="/registBucket" method="post" id="registBucket"
			enctype="multipart/form-data">
			<table width="1000px" height="300px" border="1">
				<input type="hidden" name="writerId" value="${param.loginedUser}">
				<tr>
					<td align="center">이미지 후기<input type="file" id="image"
						name="image"></td>
				</tr>
				<tr>
					<td align="center">제목 <input type="text" id="title"
						name="title" /></td>
				</tr>
				<tr>
					<td align="center">후기<br>
					<textarea name="contents" cols="100" rows="20"></textarea></td>
				</tr>
			</table>
			<button type="submit" class="btn" style="float: left"
				onclick="join(); return false;">게시</button>
			<button type="button" class="btn" style="float: left"
				onclick="javascript:history.back()">취소</button>
		</form>
	</div>
</body>
</html>