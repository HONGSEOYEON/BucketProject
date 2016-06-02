<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이미지 후기 등록</title>
<link href="${ctx}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${ctx}/resources/css/style.css" rel="stylesheet">
<script src="${ctx}/resources/js/jquery-2.2.4.min.js"></script>
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
<style>
/* form {
	padding: 5% 30%;
}

table {
	border:1px solid black;
}

tr {
	border:1px solid black;
}

td {
	border:1px solid black;
	padding: 10px;
}

#musicDetail {
	width: 100%;
}
#imgAlbum{
	width: 50px;
	height: 50px;
	float: right; 
}

.imgAlbum {
	width: 50px;
	height: 50px;
} */
/*  */

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
</style>
</head>
<body>
<!-- <img alt="" src="resources/img/home.png" id="imgAlbum"/> -->
	<form action="${ctx}/registBucket" method="post" id="registBucket"
			enctype="multipart/form-data">
			<input type="hidden" name="writerId" value="${loginedUser.userId }">
	<table id="registBucket">
		<tr class="imgAlbum">
			<td align="center">이미지 후기 <br>
			<input type="file" id="image" name="file" /></td>
		</tr>
		<tr>
			<td align="center">제목 <input type="text" id="title" name="title" /></td>
		</tr>
		<tr>
			<td align="center">후기<br> <textarea name="contents"
					cols="100" rows="20"></textarea></td>
		</tr>
		<tr>
		</tr>
	</table>
			<button type="button" class="btn" style="float: right"
				onclick="javascript:history.back()">취소</button>
			<button type="submit" class="btn" style="float: right"
				onclick="regist(); return false;">게시</button>
	</form>
	
	<div class="row" id="green">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-success coupon">
					<div class="panel-heading" id="head">
						<div class="panel-title" id="title">
							<span>이미지 후기 등록</span>
						</div>
					</div>
					<div class="panel-body">
			<span>이미지 후기</span><input type="file" id="image" name="file" />
						<div class="col-md-9">
							<ul class="items">
								<li style="list-style-type: none">${bucket.contents}</li>
							</ul>
						</div>
						<div class="col-md-3">
							<div class="offer text-success">
								추천수 <span style="background-color: #18bc9c" class="badge">${recomNum}</span>
							</div>
						</div>
					</div>
					<div class="panel-footer">
	</div>
	
	
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