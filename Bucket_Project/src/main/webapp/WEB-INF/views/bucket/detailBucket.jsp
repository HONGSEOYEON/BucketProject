<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>곡 소개</title>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<style>
body {
	padding: 10% 30%;
}

td {
	padding: 10px;
}

#musicDetail {
	width: 100%;
}
</style>
</head>
<body>
<h1>이미지 후기 상세페이지</h1>
	<div style="text-align: left;">
		<a class="btn btn-xs btn-info" href="#">담기</a>&nbsp;
		<a class="btn btn-xs btn-default" href="#">추천</a>&nbsp; 
		<a class="btn btn-xs btn-default" href="#">신고</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="btn btn-xs btn-default" href="#">수정</a>&nbsp; 
		<a class="btn btn-xs btn-default" href="#">삭제</a>&nbsp;
	</div>
	<div style="text-align: right;">추천수</div>
	<h2>${music.name}</h2>
	<hr>
	<table id="musicDetail">
		<colgroup>
			<col width="200px">
			<col width="*">
		</colgroup>
		<tr>
			<td><img src="resources/img/${music.image}" width="180px"></td>
		</tr>
		<tr>
		<td>
			<table class="table">
				<colgroup>
					<col width="150">
					<col width="*">
				</colgroup>
				<tr>
					<th>내용</th>
					<td>${music.name}</td>
				</tr>
			</table>
		</td>
		</tr>
		
	</table>
	<br>
		<h5>댓글</h5>
		<form action="${pageContext.request.contextPath}/commentRegist?writerId='seok' " method="post">
		<input type="hidden" name="bucketId" value="1">
		<input type="text" placeholder="입력" name="contents" id="commentContent"><input type="submit" value="쓰기">
		</form><br><br>
		
		<%-- </c:if> --%>
<c:forEach items="${comments }" var="comment" varStatus="sts">
	${comment.writerId} 님의 댓글 :  ${comment.contents} 
	<%-- <c:if test="${loginedUser != null}"> --%>
	<a class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/commentRemove">삭제</a><br><br>
	<%-- </c:if> --%>
</c:forEach>

</body>
</html>
