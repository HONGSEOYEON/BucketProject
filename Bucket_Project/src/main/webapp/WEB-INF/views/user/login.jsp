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
    <style type="text/css">
      @import url(http://fonts.googleapis.com/css?family=Roboto:400);
body {
  background-color:#fff;
  -webkit-font-smoothing: antialiased;
  font: normal 14px Roboto,arial,sans-serif;
}

.container {
    padding: 25px;
    /* position: fixed; */
    margin:0 auto;
}

.form-login {
    background-color: #EDEDED;
    padding-top: 10px;
    padding-bottom: 20px;
    padding-left: 20px;
    padding-right: 20px;
    border-radius: 15px;
    border-color:#d2d2d2;
    border-width: 5px;
    box-shadow:0 1px 0 #cfcfcf;
}

h4 { 
 border:0 solid #fff; 
 border-bottom-width:1px;
 padding-bottom:10px;
 text-align: center;
}

.form-control {
    border-radius: 10px;
}

.wrapper {
    text-align: center;
}


    </style>
    <script type="text/javascript">
    var goHome = function() {
		location.href="${pageContext.request.contextPath}/";
	};
	</script>
</head>
<body>

<div class="container">

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    
		<form class="form-horizontal" id="formJoin" action="login" method="POST">
		
			<h2>로그인 <small>로그인 정보를 기입해주세요.</small></h2>
			<hr class="colorgraph">
			<div class="row">
			</div>
			<div class="form-group">
				<input type="text" name="loginId" id="iptLoginId" class="form-control input-lg" placeholder="아이디" tabindex="3">
			</div>
					<div class="form-group">
						<input type="password" name="password" id="iptPassword" class="form-control input-lg" placeholder="비밀번호" tabindex="5">
					</div>
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-md-6"><button type="submit" class="btn btn-primary btn-block btn-lg" tabindex="7">로그인</button></div>
				<div class="col-xs-12 col-md-6"><button onclick="goHome(); return false;" class="btn btn-success btn-block btn-lg">홈으로</button></div>
			</div>
		</form>
	</div>
</div>
</div>

</body>
</html>