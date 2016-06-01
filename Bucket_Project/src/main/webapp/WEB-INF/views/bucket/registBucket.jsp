<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이미지 후기 등록</title>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/css/style.css" rel="stylesheet">
<script	src="/resources/js/jquery-2.2.4.min.js"></script>
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

	var regist = function() {
		if (validate()) {
			document.getElementById("registBucket").submit();
		}
	};
</script>
</head>
<body>

	<div class="contents">
		<form action="${ctx}/registBucket" method="post" id="registBucket"
			enctype="multipart/form-data">
			<input type="hidden" name="writerId" value="${bucket.writerId}"/>
				<input type="hidden" name="bucketId" value="${bucket.bucketId}"/>
			<table width="1000px" height="300px" border="1">
				<tr>
					<td align="center">이미지 후기 <input type="file" id="image" name="file"/></td>
				</tr>
				<tr>
					<td align="center">제목 <input type="text" id="title"
						name="title" value="${bucket.title}"/></td>
				</tr>
				<tr>
					<td align="center">후기<br>
					<textarea name="contents" cols="100" rows="20">${bucket.contents}</textarea></td>
				</tr>
				<tr>
				<td>
			<button type="button" class="btn" style="float: right"
				onclick="javascript:history.back()">취소</button>
			<button type="submit" class="btn" style="float: right"
				onclick="join(); return false;">게시</button>
				</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>