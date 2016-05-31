<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>댓글</h2>
<form action="${pageContext.request.contextPath}/commentRegist" method="post">
<input type="text" placeholder="입력" name="contents"><input type="submit" value="쓰기">
</form>
<c:forEach items="${comments}" var="comment" varStatus="sts">
	${comment.writerId} / ${comment.contents} <input type="button" value="삭제" onclick="location.href=' ${pageContext.request.contextPath}/commentRemove'">
</c:forEach>
</body>
</html>