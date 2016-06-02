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
/* body {
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

* /

.coupon {
	border: 3px dashed #bcbcbc;
	border-radius: 10px;
	font-family: "HelveticaNeue-Light", "Helvetica Neue Light",
		"Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
	font-weight: 300;
}

.coupon #head {
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	min-height: 56px;
}

.coupon #footer {
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

#title .visible-xs {
	font-size: 12px;
}

.coupon #title img {
	font-size: 30px;
	height: 30px;
	margin-top: 5px;
}

@media screen and (max-width: 500px) {
	.coupon #title img {
		height: 15px;
	}
}

.coupon #title span {
	float: right;
	margin-top: 5px;
	font-weight: 700;
	text-transform: uppercase;
}

.coupon-img {
	width: 100%;
	margin-bottom: 15px;
	padding: 0;
}

.items {
	margin: 15px 0;
}

.usd, .cents {
	font-size: 20px;
}

.number {
	font-size: 40px;
	font-weight: 700;
}

sup {
	top: -15px;
}

#business-info ul {
	margin: 0;
	padding: 0;
	list-style-type: none;
	text-align: center;
}

#business-info ul li {
	display: inline;
	text-align: center;
}

#business-info ul li span {
	text-decoration: none;
	padding: .2em 1em;
}

#business-info ul li span i {
	padding-right: 5px;
}

.disclosure {
	padding-top: 15px;
	font-size: 11px;
	color: #bcbcbc;
	text-align: center;
}

.coupon-code {
	color: #333333;
	font-size: 11px;
}

.exp {
	color: #f34235;
}

.print {
	font-size: 14px;
	float: right;
}

/*------------------dont copy these lines----------------------*/
body {
	font-family: "HelveticaNeue-Light", "Helvetica Neue Light",
		"Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
	font-weight: 300;
}

.row {
	margin: 30px 0;
}

#quicknav ul {
	margin: 0;
	padding: 0;
	list-style-type: none;
	text-align: center;
}

#quicknav ul li {
	display: inline;
}

#quicknav ul li a {
	text-decoration: none;
	padding: .2em 1em;
}

.btn-danger, .btn-success, .btn-info, .btn-warning, .btn-primary {
	width: 105px;
}

.btn-default {
	margin-bottom: 40px;
}
/*-------------------------------------------------------------*/
</style>
</head>
<body>
	<div class="container">

		<div class="row">
			<h1 class="text-center">상세 페이지</h1>
		</div>

		<div id="quicknav">
			<ul>
				<li><a style="background-color: #3498db"
					class="btn btn-xs btn-default" id="bookmark"
					onclick="location.href='${pageContext.request.contextPath}/registerKeepBucket?bucketId=${bucket.bucketId}'">담기</a></li>
				<li><a id="recommand" class="btn btn-xs btn-default"
					href="recommand">추천</a></li>
				<li><a class="btn btn-xs btn-default" href="accuse">신고</a></li>
				<li><a class="btn btn-xs btn-default" href="#">수정</a></li>
				<li><a class="btn btn-xs btn-default" href="#">삭제</a></li>
			</ul>
		</div>



		<div class="row" id="green">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-success coupon">
					<div class="panel-heading" id="head">
						<div class="panel-title" id="title">
							<i class="fa fa-github fa-2x"></i> <span class="hidden-xs">${bucket.title }</span>
							<span class="visible-xs">Automatic ${bucket.title }</span>
						</div>
					</div>
					<div class="panel-body">
						<img src="resources/img/${bucket.image}"
							class="coupon-img img-rounded">
						<div class="col-md-9">
							<ul class="items">
								<li style="list-style-type: none">${bucket.contents }</li>
							</ul>
						</div>
						<div class="col-md-3">
							<div class="offer text-success">
								추천수 <span style="background-color: #18bc9c" class="badge">${recomNum}</span>
							</div>
						</div>
					</div>
					<div class="panel-footer">
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

						<form action="${pageContext.request.contextPath}/commentRegist"
							method="post" id="commentForm">

							<div class="row form-group">
								<div class="input-group">
									<span class="input-group-addon primary">
										<span class="glyphicon glyphicon-star"></span>
									</span> 
									<input type="text" class="form-control">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>
	<%-- <h1>${bucket.title}</h1>
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

	</c:if>
	
	<table>
	
	<table>
	<c:forEach items="${comments}" var="comment" varStatus="sts">
	${comment.writerId} 님의 댓글 :  ${comment.contents} 
	<c:if test="${loginedUser != null}">
		<a class="btn btn-xs btn-default"
			href="${pageContext.request.contextPath}/commentRemove?commentId=${comment.commentId}&bucketId=${bucket.bucketId}">삭제</a>
		<br>
		<br>
		</c:if>
	<tr>
		${comment.writerId} 님의 댓글 :  ${comment.contents} 
		<c:if test="${loginedUser != null && comment.writerId == loginedUser}">
		<a class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/commentRemove?commentId=${comment.commentId}&bucketId=${bucket.bucketId}">삭제</a>
		</c:if>
	</tr><br>
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
