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
 background-color:#eee;   
}    
h1 {
	padding-left:300px;
	font-weight: bold;
	color: #5bc0de;
}
thead th {
	text-align: center;
	background-color: #fff;
}
tbody td {
	text-align: center;
}
.custab {
	border: 1px solid #ccc;
	padding: 5px;
	margin: 5% 0;
	box-shadow: 3px 3px 2px #ccc;
	transition: 0.5s;
}

.custab:hover {
	box-shadow: 3px 3px 0px transparent;
	transition: 0.5s;
}
#firstDiv {
	padding-top: 100px;
	padding-left: 250px;
}
}
</style>

</head>
<body>
<%@include file="/WEB-INF/views/header/header.jspf" %>
	<div id="firstDiv">
	<h1>신고된 게시물 목록</h1>
	<div class="container" >
		<div class="row col-md-6 col-md-offset-2 custyle">
			<table class="table table-striped custab">
				<thead>
					<tr>
						<th class="active">ID</th>
						<th class="active">이미지후기 제목</th>
						<th class="active">신고수</th>
						<th class="active">탈퇴</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${accusedBucketList}" var="accuseBucket" varStatus="vs">
				
				<tr class="info">
					<td>${accuseBucket.writerId}</td>
					<td><a href="detailBucket?bucketId=${accuseBucket.bucketId}">${accuseBucket.title}</a></td>
					<td>
						<div style="text-align: center;">
						<span class="badge">${accuseBucket.accuseNum}</span>
						</div>
					</td>
					<td class="text-center"> <a id="deleteButton" onclick="return deleteButton();" href="drop?userId=${accuseBucket.writerId}" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 탈퇴</a></td>
				</tr>
				
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	</div>
</body>
<script type="text/javascript">
	function deleteButton() {
		return confirm("회원을 정말 탈퇴 하시겠습니까?");
	}
</script>
</html>