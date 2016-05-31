<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>신고 리스트</title>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">



<style type="text/css">
body {
	padding: 300px;
}

h1 {
	font-weight: bold;
	color: #A0B0DB;
}

.ranking {
	text-align: center;
	font-size: 28pt;
}

.spanTitle {
	font-size: 18pt;
	font-weight: bold;
	margin-right: 10px;
}

.pAlbum {
	color: gray;
	margin-left: 5px;
}

.imgAlbum {
	width: 80px;
	height: 80px;
	margin-right: 10px;
}

.btnPlay {
	margin-top: 40%
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
	width: 800px
}

thead tr {
	position: absolute;
	top: 0;
	display: block;
	background-color: #DEDEDE;
	width: 800px;
	height: 30px;
}

thead th {
	width: 200px
}

tbody {
	display: block;
	height: 300px;
}

tbody tr {
	height: auto;
}

tbody td {
	width: 200px;
	text-align: center;
}
</style>
</head>
<body>
	<div class="wrap">
		<div>
			<table>
				<thead>
					<tr>
						<th>ID</th>
				
						<th>이미지후기 제목</th>
						<th>신고수</th>
						<th>탈퇴</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${accusedBucketList}" var="accuseBucket" varStatus="vs">
				
					<tr>
						<td>${accuseBucket.bucketId}</td>
						
						<td>${accuseBucket.title}</td>
						<td>${accuseBucket.accuseNum}</td>
						<td><button type="submit" class="btn btn-xs btn-default">Transfer cash</button></td>
					</tr>
				</c:forEach>
				
				<tr>
				<td>1-1</td>
				<td>1-2</td>
				<td>1-3</td>
				<td><input type="button" value="탈퇴" class="btn btn-xs btn-default"></td>
				</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>