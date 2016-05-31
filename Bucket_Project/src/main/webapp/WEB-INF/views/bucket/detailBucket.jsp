<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>곡 소개</title>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
	var check = function() {
		if (document.getElementById("commentContent").value == "") {
			alert("댓글을 입력하세요");
			document.getElementById("commentContent").focus();
			return false;
		}
	};
	
	var recommand = function() {
		if (document.getElementById("recommand").value == "") {
			alert("댓글을 입력하세요");
			document.getElementById("commentContent").focus();
			return false;
		}
	};
</script>	
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
		<a class="btn btn-xs btn-info" href="${pageContext.request.contextPath}/registerKeepBucket">담기</a>&nbsp; 
		<a id="recommand" class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/recommand">추천</a>&nbsp; 
		<a class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/accuse">신고</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="btn btn-xs btn-default" href="#">수정</a>&nbsp; <a
			class="btn btn-xs btn-default" href="#">삭제</a>&nbsp;
	</div>
	<div style="text-align: right;">추천수 &nbsp;<h4>${recomNum}</h4></div>
	
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
	<form
		action="${pageContext.request.contextPath}/commentRegist?writerId='seok' "
		method="post">
		<input type="hidden" name="bucketId" value="1"> <input
			type="text" placeholder="입력" name="contents" id="commentContent"><input
			type="submit" value="쓰기">
	</form>
	<br>
	<br>

	<%-- </c:if> --%>
	<c:forEach items="${comments}" var="comment" varStatus="sts">
	${comment.writerId} 님의 댓글 :  ${comment.contents} 
	<%-- <c:if test="${loginedUser != null}"> --%>
		<a class="btn btn-xs btn-default"
			href="${pageContext.request.contextPath}/commentRemove">삭제</a>
		<br>
		<br>
		<%-- </c:if> --%>
	</c:forEach>

</body>
</html>
