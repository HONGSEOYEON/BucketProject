<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>나무소셜</title>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootswatch.min.css" rel="stylesheet">
    <style type="text/css">
        body {
            padding-top: 100px;
            padding-bottom: 40px;
            background-color: #ecf0f1;
        }
        .error-header {
            max-width: 500px;
            padding: 15px 29px 25px;
            margin: 0 auto;
            background-color: #e74c3c;
            color: white;
            text-align: left;
            -webkit-border-radius: 15px 15px 0px 0px;
            -moz-border-radius: 15px 15px 0px 0px;
            border-radius: 15px 15px 0px 0px;
            -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            box-shadow: 0 1px 2px rgba(0,0,0,.05);
        }
        .error-footer {
            max-width: 500px;
            margin: 0 auto 20px;
            padding-left: 10px;
        }
        .error-body {
            max-width: 500px;
            padding: 29px;
            margin: 0 auto 20px;
            background-color: #fff;
            -webkit-border-radius: 0px 0px 15px 15px;
            -moz-border-radius: 0px 0px 15px 15px;
            border-radius: 0px 0px 15px 15px;
            -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            box-shadow: 0 1px 2px rgba(0,0,0,.05);
        }
        .error-heading {
            margin-bottom: 15px;
        }
        .error-btn {
            text-align: center;
            padding-top: 20px;
        }

    </style>
    
    <script type="text/javascript">
    var goLogin = function() {
		location.href="showPageLogin";
	}
    </script>
</head>
<body>
<div class="container">

    <!-- header -->
    <div class="error-header">
        <h2 class="error-heading">에러</h2>
    </div>

    <!-- body -->
    <div class="error-body">

        <h3>${pageContext.errorData.requestURI}</h3>
        <p>
        	STATUS CODE : ${pageContext.errorData.statusCode} <BR>
        </p>
        <p>${message }</p>

        <div class="row error-btn">
            <button class="btn btn-large btn-default" type="button"  onclick="javascript:goLogin();">로그인</button>
        </div>
    </div>

    <!-- footer -->
</div>

</body>
</html>