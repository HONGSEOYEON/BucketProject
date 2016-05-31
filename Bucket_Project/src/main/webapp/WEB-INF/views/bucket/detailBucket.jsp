<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/WEB-INF/resources/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
	var check = function() {
		if (document.getElementById("commentContent").value == "") {
			alert("댓글을 입력하세요");
			document.getElementById("commentContent").focus();
			return false;
		}
	};
</script>
</head>
<body>
<h2>댓글</h2>
<%-- <c:if test="${loginedUser != null}"> --%>
<input type="button" value="담기" onclick="location.href=' ${pageContext.request.contextPath}/commentRemove'">
<input type="button" value="추천" onclick="location.href=' ${pageContext.request.contextPath}/commentRemove'">
<input type="button" value="신고" onclick="location.href=' ${pageContext.request.contextPath}/commentRemove'">
<form action="${pageContext.request.contextPath}/commentRegist<%-- ?writerId=${loginedUser} --%>" method="post">
<input type="text" placeholder="입력" name="contents" id="commentContent"><input type="submit" value="쓰기">
</form>
<%-- </c:if> --%>
<c:forEach items="${comments}" var="comment" varStatus="sts">
	${comment.writerId} / ${comment.contents} 
	<%-- <c:if test="${loginedUser != null}"> --%>
	<input type="button" value="삭제" onclick="location.href=' ${pageContext.request.contextPath}/commentRemove'">
	<%-- </c:if> --%>
</c:forEach>
</body>
</html>