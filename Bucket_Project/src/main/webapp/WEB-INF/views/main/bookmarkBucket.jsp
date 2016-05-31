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
	width: 80px;
	height: 80px;
	margin-right: 10px;
}

.btnPlay {
	margin-top:40%
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<h1> 님이 담은 이미지 후기 목록</h1>
				<table class="table table-hover table-condensed">
					<colgroup>
						<col width="80" align="center">
						<col width="*">
						<col width="70">
					</colgroup>
					<thead>
						<tr>
							<th>No</th>
							<th>제목</th>
							<th>삭제</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${keepbuckets}" var="keepbucket" varStatus="sts">
                        <tr>
                            <td class="ranking">${sts.count}</td>
                            <td>
                            <table>
                            <tr><td rowspan="2"><img class="imgAlbum" src="resources/img/${keepbucket.image}" ></td>
                            <td><span class="spanTitle">${keepbucket.title}</span><a class="btn btn-xs btn-default" href="detailBucket?bucketId=${keepbucket.bucketId}"><b>i</b></a></td>
                            </tr>
                            <tr><td><p class="pAlbum">${keepbucket.writerId}</p></td></tr>
                            </table>
                            <td><a class="btn btn-xs btn-danger btnPlay" href="deleteKeepBucket?bucketId=${keepbucket.bucketId}"><b> X </b></a></td>
                        </tr>
                        </c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>