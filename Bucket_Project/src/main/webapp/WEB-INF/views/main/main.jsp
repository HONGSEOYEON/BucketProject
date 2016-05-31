<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>버킷</title>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootswatch.min.css" rel="stylesheet">
</head>
<body>

<!-- Main Navigation ========================================================================================== -->
<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">메인페이지</a>
        </div>
        <div class="navbar-collapse collapse navbar-responsive-collapse">
     
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a></li>
              
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">설정 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">개인정보</a></li>
                        <li><a href="#">모바일 환경설정</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>



<!-- Container ======================================================================================= -->
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <!-- ★★★ Tab Menu -->
            <ul class="nav nav-tabs" style="margin-bottom: 15px;">
                <li <c:if test="${tab eq 'myMessage'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/message/myMessage.do" data-toggle="tab">나의메시지</a></li>
                <li <c:if test="${tab eq 'newestMessage'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/message/newestMessage.do" data-toggle="tab">최신메시지</a></li>
            </ul>




</div>

</body>
</html>