<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이미지 후기 등록</title>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/jquery-2.2.4.min.js"></script>
</head>
<body>
	
	<div class="contents">

		<form action="${ctx}/recipe/register.do" method="post" enctype="multipart/form-data">
			<input type="hidden" name="cbId" value="${param.cbId}">
			
			<table width="100%" height="300px" border="1">
			<tr>
					<td align="center">조리예(이미지)</td>
					<td colspan="3"><input type="file" name="recipeImage"></td>
			</tr>
				<tr>
					<td align="center">레시피명</td>
					<td><input type="text" name="name" /></td>
					<td align="center">등록자</td>
					<td>한식매니아</td>
				</tr>

				<tr>
					<td align="center">조리시간</td>
					<td><input type="text" name="time"> 분</td>
					<td align="center">난이도</td>
					<td><select name="level">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
					</select></td>
				</tr>

				<tr>
					<td align="center">재료</td>
					<td colspan="3"><textarea name="ingredients"></textarea></td>
				</tr>

				<tr>
					<td align="center">조리절차</td>
					<td colspan="3"><input type="text" name="procedure" /><br /> <input
						type="text" name="procedure" /><br /> <input type="text"
						name="procedure" /><br /></td>
				</tr>

				

			</table>

			<br>

			<button type="submit" class="btn" style="float: right">게시</button>
			<br>
			<button type="button" class="btn" style="float: left"
				onclick="javascript:history.back()">취소</button>
			<br>

		</form>
	</div>
</body>
</html>