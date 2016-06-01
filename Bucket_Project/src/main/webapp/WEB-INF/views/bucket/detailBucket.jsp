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
// 댓글 유효성 검사
	var comment = function() {
		if (document.getElementById("commentContent").value == "") {
			alert("댓글을 입력하세요");
			document.getElementById("commentContent").focus();
			return false;
		}
		else {
		return true;
		}
	};
	
	var registComment = function() {
		if (comment()) {
			document.getElementById("commentForm").submit();
		}
	};
	
	var bookmark = function() {
			alert("버킷을 담았습니다!");
		return true;
	};
</script>	
<style>
body {
	padding: 10% 30%;
	/* background-image: url("resources/img/back.png"); */
}

td {
	padding: 10px;
}

#musicDetail {
	width: 100%;
}

.imgAlbum {
	width: 600px;
	height: 600px;
}


</style>
</head>
<body>
	<h1>${bucket.title}</h1>
	<div style="text-align: left;">
		<a class="btn btn-xs btn-info"  onclick="bookmark(); return false;" href="${pageContext.request.contextPath}/registerKeepBucket?bucketId='1'  ">담기</a>&nbsp; 
		<a id="recommand" class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/recommand">추천</a>&nbsp; 
		<a class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/accuse">신고</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="btn btn-xs btn-default" href="#">수정</a>&nbsp; <a
			class="btn btn-xs btn-default" href="#">삭제</a>&nbsp;
	</div>

	<!-- 테스트   -->
	
	
	
	<!-- 테스트   -->

	<div style="text-align: right;">추천수
				<span class="badge">${recomNum}</span>
		</div>
	
	<hr>
	<table id="musicDetail">
		<colgroup>
			<col width="200px">
			<col width="*">
		</colgroup>
		<tr>
			<td><img src="resources/img/${bucket.image}" width="180px" class="imgAlbum"></td>
		</tr>
		<tr>
			<td>
				<table class="table">
					<colgroup>
						<col width="150">
						<col width="*">
					</colgroup>
					<tr>
						<th>후기</th>
						<td>${bucket.contents}</td>
					</tr>
				</table>
			</td>
		</tr>

	</table>
	<br>
	<h5>댓글</h5>
	<form action="${pageContext.request.contextPath}/commentRegist" method="post" id="commentForm">
		<input type="hidden" name="writerId" value="seok">
		<input type="hidden" name="bucketId" value="1"> 
		<input type="text" placeholder="입력" name="contents" id="commentContent">
			<input type="submit" value="쓰기" onclick="registComment(); return false;">
	</form>
	<br>
	<br>

	<%-- </c:if> --%>
	<c:forEach items="${comments}" var="comment" varStatus="sts">
	${comment.writerId} 님의 댓글 :  ${comment.contents} 
	<%-- <c:if test="${loginedUser != null}"> --%>
		<a class="btn btn-xs btn-default"
			href="${pageContext.request.contextPath}/commentRemove?commentId=${comment.commentId}">삭제</a>
		<br>
		<br>
		<%-- </c:if> --%>
	</c:forEach>

</body>
</html>
