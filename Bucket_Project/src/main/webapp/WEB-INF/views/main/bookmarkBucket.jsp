<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내가 담은 버킷 리스트</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
	
	
	
	function bookmarkTest(){
		return confirm("버킷을 삭제하시겠습니까?");
	}
</script>	
<style type="text/css">
body {
	padding: 50px;
	/* background-image: url("resources/img/congruent_pentagon.png"); */
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
	width: 300px;
	height: 300px;
}

.btnPlay {
	margin-top:40%
}

.section {
	border: 0.2px solid gray;
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
				<h1> ${loginedUser}님이 담은 버킷 리스트</h1>
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
						<c:if test="${keepbuckets  != null}">
							<table class="section">
								<tr>
								<td>
									<img class="imgAlbum" src="resources/img/${keepbucket.image}"><br>
									제목 : <a href="detailBucket?bucketId=${keepbucket.bucketId}">${keepbucket.title}</a><br>
									게시자 : ${keepbucket.writerId}<br><br>
									<a class="btn btn-xs btn-default" href="deleteKeepBucket?bucketId=${keepbucket.bucketId}" id="deletebtn" onclick="return bookmarkTest();">삭제</a>
								</td>
								</tr>
								</table>
								</c:if>
                       	</c:forEach>
                       <%-- 	<c:if test="${keepbuckets == null }">
                       		<h1>아직 담은 버킷이 없습니다!</h1>
                       	</c:if> --%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>