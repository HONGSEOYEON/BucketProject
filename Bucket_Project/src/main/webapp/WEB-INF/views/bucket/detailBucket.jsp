<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>버킷 상세페이지</title>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-2.2.4.min.js">
	
</script>
<script type="text/javascript">
	// 댓글 유효성 검사
	var comment = function() {
		if (document.getElementById("commentContent").value == "") {
			alert("댓글을 입력하세요");
			document.getElementById("commentContent").focus();
			return false;
		} else {
			return true;
		}
	};

	var registComment = function() {
		if (comment()) {
			document.getElementById("commentForm").submit();
		}
	};

	// 담기 테스트 
	/* var bookmark = function() {
		alert("버킷을 담았습니다!");
		
		return true;
	}; */
	
	/* $(function(){
		$("#bookmark").click(function(){
			alert("버킷을 담았습니다!");
			$("#bookmark").Attr("disabled", "disabled");
		});
	}); */

	function bookmarkTest() {
		if (bookmark()) {
			location.href = "${pageContext.request.contextPath}/registerKeepBucket?bucketId=${bucket.bucketId}";
			return false;
		} else {
			location.href = "${pageContext.request.contextPath}/detailBucket?bucketId=${bucket.bucketId}";
			return false;
		}
	}
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
	<%-- <%@include file="/WEB-INF/views/header/homeButton.jspf" %> --%>
	<h1>${bucket.title}</h1>
	<div style="text-align: left;">
	    <c:if test="${loginedUser != null && loginedUser != 'hyeon'}">
		<a class="btn btn-xs btn-info" id="bookmark" onclick="location.href='${pageContext.request.contextPath}/registerKeepBucket?bucketId=${bucket.bucketId}'">담기</a>&nbsp; 
		<a id="recommand" class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/recommand?bucketId=${bucket.bucketId}">추천</a>&nbsp; 
		<a class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/accuse?bucketId=${bucket.bucketId}">신고</a>&nbsp;&nbsp;&nbsp;&nbsp;
		</c:if>
		<c:if test="${loginedUser != null && bucket.writerId == loginedUser}">
		<a class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/modifyBucket?bucketId=${bucket.bucketId}">수정</a>&nbsp; 
		</c:if>
		<c:if test="${loginedUser != null && bucket.writerId == loginedUser}">
		<a class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/removeBucket?bucketId=${bucket.bucketId}">삭제</a>&nbsp;
		</c:if>
		<c:if test="${loginedUser != null && loginedUser=='hyeon'}">
		<a class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/removeBucket?bucketId=${bucket.bucketId}">삭제</a>&nbsp;
		</c:if>
	</div>


	<div style="text-align: right;">
		추천수 <span class="badge">${recomNum}</span>
	</div>

	<hr>
	<table id="musicDetail">
		<colgroup>
			<col width="200px">
			<col width="*">
		</colgroup>
		<tr>
			<td><img src="resources/img/${bucket.image}" width="180px"
				class="imgAlbum"></td>
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
	<c:if test="${loginedUser != null}">
	<form action="${pageContext.request.contextPath}/commentRegist"
		method="post" id="commentForm">
		<input type="hidden" name="writerId" value=${loginedUser}> 
		<input type="hidden" name="bucketId" value=${bucket.bucketId} > 
		<input type="text" placeholder="입력" name="contents" id="commentContent">
		<input type="submit" value="쓰기" onclick="registComment(); return false;">
	</form>
	</c:if>
	<br>
	<br>
	
	<table>
	<c:forEach items="${comments}" var="comment" varStatus="sts">
	<tr>
		${comment.writerId} 님의 댓글 :  ${comment.contents} 
		<c:if test="${loginedUser != null && comment.writerId == loginedUser}">
		<a class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/commentRemove?commentId=${comment.commentId}&bucketId=${bucket.bucketId}">삭제</a>
		</c:if>
	</tr><br>
	</c:forEach>
	</table>
</body>
</html>
