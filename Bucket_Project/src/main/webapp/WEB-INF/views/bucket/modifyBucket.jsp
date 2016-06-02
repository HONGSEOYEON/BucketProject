<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이미지 후기 수정</title>
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

	var modify = function() {
		if (validate()) {
			document.getElementById("modifyBucket").submit();
		}
	};
</script>
<style>
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

h5 {
	text-align: center;
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
	margin-top: 5px;
	font-weight: 700;
	text-transform: uppercase;
	text-align: center;
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

#quicknav {
	height: 200px;
	margin: 0;
	padding: 0;
	list-style-type: none;
	text-align: center;
}

/* #quicknav ul li {
	display: inline;
}

#quicknav ul li a {
	text-decoration: none;
	padding: .2em 1em;
} */
.btn-danger, .btn-success, .btn-info, .btn-warning, .btn-primary {
	width: 105px;
}

.btn-default {
	margin-bottom: 40px;
}

table tr {
	text-align: right;
}

span {
	padding: 10px;
}
</style>

</head>
<body>
	<%@include file="/WEB-INF/views/header/header.jspf"%>
	<div class="container">
		<div id="quicknav"></div>
		<form action="${ctx}/modifyBucket" method="post" id="modifyBucket"
			enctype="multipart/form-data">
			<div class="row" id="green">
				<div class="col-md-6 col-md-offset-3">
					<div class="panel panel-success coupon">
						<div class="panel-heading" id="head">
							<div class="panel-title">
								<span class="hidden-xs">이미지 후기 수정</span> <input type="hidden" name="writerId" value="${bucket.writerId}"/>
									<input type="hidden" name="bucketId" value="${bucket.bucketId}"/>
							</div>
						</div>
						<div class="panel-body">
							<div class="col-md-9">
								<div class="offer text-success"></div>
								<input class="coupon-img img-rounded" type="file" id="image"
									name="file" />
							</div>
						</div>
						<div class="panel-footer">
							<div class="row form-group">
								<div class="input-group">
									<span class="input-group-addon primary">제목</span> <input
										type="text" class="form-control" name="title" id="title" value="${bucket.title}">
								</div>
							</div>
						</div>
						<span>후기</span><br>
						<textarea class="form-control" name="contents" >${bucket.contents}</textarea>
						<br>
						<table>
							<tr>
								<td><button type="button" style="float: right"
										onclick="javascript:history.back()">취소</button>
									<button type="submit" style="float: right"
										onclick="modify(); return false;">게시</button></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>