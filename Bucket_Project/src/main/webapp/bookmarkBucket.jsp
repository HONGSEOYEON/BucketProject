<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내가 담은 이미지 후기 목록</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<style type="text/css">
body {
	padding: 50px;
}
h1 {
	font-weight:bold;
	color : #A0B0DB;
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
	width: 100px;
	height: 100px;
	margin-right: 10px;
}

.btnPlay {
	margin-top:40%
}

.section {
	border: 0.2px solid black;
	padding: 15px;
	margin: 15px;
	float: left;
	height: 300px;
	width: 300px;
	text-align: center;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<h1> <>님이 담은 이미지 후기 목록</h1>
				<table class="table table-hover table-condensed">
					<colgroup>
						<col width="80" align="center">
						<col width="*">
						<col width="70">
					</colgroup>
					<thead>
						<tr>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${keepbuckets}" var="keepbucket" varStatus="sts">
							<table class="section">
								<tr>
								<td>
									<img class="imgAlbum" src="resources/img/${keepbucket.image}" ><br>
									제목 : <a href="detailBucket?bucketId=${keepbucket.bucketId}">${keepbucket.title}</a><br>
									게시자 : ${keepbucket.writerId}<br><br>
									<a class="btn btn-xs btn-default" href="deleteKeepBucket?bucketId=${keepbucket.bucketId}" id="deletebtn">삭제</a>
								</td>
								</tr>
								</table>
                       		 </c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>