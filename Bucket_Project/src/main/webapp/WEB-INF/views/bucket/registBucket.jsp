<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이미지 후기 등록</title>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/css/style.css" rel="stylesheet">
<script src="/resources/js/jquery-2.2.4.min.js"></script>
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
form {
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
}
</style>
</head>
<body>
<img alt="" src="resources/img/home.png" id="imgAlbum"/>
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
</body>
</html>