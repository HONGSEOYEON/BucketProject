<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>신고 리스트</title>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">



<style type="text/css">
body {
	padding-top: 100px;
	padding-left: 330px;
	background-color: #fff;
}

h1 {
	font-weight: bold;
	color: #5bc0de;
}

thead th {
	width: 200px;
	border-radius: 4px;
}

div.wrap {
	position: relative;
	padding-top: 30px;
	width: 850px;
	height: 300px;
	overflow: hidden;
}

div.wrap>div {
	height: 300px;
	overflow: auto;
}

table {
	width: 800px;
}

thead th {
	text-align: center;
}

tbody td {
	width: 200px;
	text-align: center;
	background-color: window;
}

tbody tr {
	height: auto;
}
</style>
</head>
<body>
	<h1>신고된 게시물 목록</h1>
	<div class="wrap">
		<div>
			<table class="table table-condensed">
				<thead>
					<tr>
						<th class="active">ID</th>
						<th class="active">이미지후기 제목</th>
						<th class="active">신고수</th>
						<th class="active">탈퇴</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${accusedBucketList}" var="accuseBucket"
						varStatus="vs">

						<tr class="info">
							<td>${accuseBucket.writerId}</td>
							<td><a href="detailBucket?bucketId=${accuseBucket.bucketId}">${accuseBucket.title}</a></td>
							<td>
								<div style="text-align: center;">
									<span class="badge">${accuseBucket.accuseNum}</span>
								</div>
							</td>
							<td><button type="button" class="btn btn-default" onclick="location.href='drop?userId=${accuseBucket.bucketId}'">탈퇴</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>