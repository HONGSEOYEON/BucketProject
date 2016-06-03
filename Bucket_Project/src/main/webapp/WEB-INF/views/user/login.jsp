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
      
      /* Credit to bootsnipp.com for the css for the color graph */
.colorgraph {
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
      
body {
  background-color:#eee;
  -webkit-font-smoothing: antialiased;
  font: normal 14px Roboto,arial,sans-serif;
}

.container {
  position:absolute;
  top:35%;
  left:50%;
  transform:translate(-50%, -50%)
}

.vertical-center {

  display: flex;
  align-items: center;
}


    </style>
    <script type="text/javascript">
    var goHome = function() {
		location.href="${pageContext.request.contextPath}/";
	};
    var goJoin = function() {
		location.href="showPageJoin";
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
			<div class="row vertical-center">
				<div class="col-xs-12 col-md-6"><button type="submit" class="btn btn-primary btn-block btn-lg" tabindex="7">로그인</button></div>
				<div class="col-xs-12 col-md-6"><button type="button" onclick="goHome();" class="btn btn-success btn-block btn-lg">홈으로</button></div>
				<div class="col-xs-12 col-md-6"><button type="button" onclick="goJoin();" class="btn btn-success btn-block btn-lg">회원가입</button></div>
			</div>
		</form>
	</div>
</div>
</div>

</body>
</html>