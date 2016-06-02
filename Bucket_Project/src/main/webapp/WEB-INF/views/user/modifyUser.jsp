<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>버킷</title>

<style type="text/css">
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
</style>

<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/bootswatch.min.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-2.2.4.min.js"></script>

<script type="text/javascript">
	var validate = function() {
		
		if (document.getElementById("iptName").value == "") {
			alert("이름을 입력하세요");
			document.getElementById("iptName").focus();
			return false;
		}

		if (document.getElementById("iptEmail").value == "") {
			alert("이메일을 입력하세요");
			document.getElementById("iptEmail").focus();
			return false;
		}

		if (document.getElementById("iptPassword").value == "") {
			alert("비밀번호를 입력하세요");
			document.getElementById("iptPassword").focus();
			return false;
		}

		if (document.getElementById("iptRePassword").value == "") {
			alert("비밀번호 확인을 입력하세요");
			document.getElementById("iptRePassword").focus();
			return false;
		}

		//비밀번호, 비밀번호 확인 항목이 일치하는지 비교
		if (document.getElementById("iptPassword").value != document
				.getElementById("iptRePassword").value) {
			alert("비밀번호가 일치하지 않습니다.");
			document.getElementById("iptPassword").value = "";
			document.getElementById("iptRePassword").value = "";
			document.getElementById("iptPassword").focus();
			return false;
		}

		return true;
	};

	var modify = function() {
		if (validate()) {
			document.getElementById("formModify").submit();
		}
	};

	var goHome = function() {
		location.href="javascript:history.back()";
	};
	
</script>
</head>
<body>

<%-- 	<!-- Container ======================================================================================= -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12">

				<div class="page-header">
					<h2 id="container">회원 정보 수정</h2>
				</div>
				<div class="well">
					<p>회원가입을 위해 아래 내용들을 작성해 주세요.</p>
					<form class="form-horizontal" id="formModify"
						action="${pageContext.request.contextPath}/user/modify"
						method="POST">
						<fieldset>
							<div class="form-group">
								<label class="col-lg-2 control-label">아이디</label>

								<div class="col-lg-10">
									<input type="text" class="form-control" name="userId"
										id="iptLoginId" value="${beforeUser.userId}" readonly>
								</div>
								<div id="dplPrint"></div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">이름</label>

								<div class="col-lg-10">
									<input type="text" class="form-control" name="name"
										id="iptName" placeholder="${beforeUser.userName}">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">이메일</label>

								<div class="col-lg-10">
									<input type="text" class="form-control" name="email"
										id="iptEmail" placeholder="${beforeUser.email}">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">비밀번호</label>

								<div class="col-lg-10">
									<input type="password" class="form-control" name="password"
										id="iptPassword" placeholder="${beforeUser.password}">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">비밀번호 확인</label>

								<div class="col-lg-10">
									<input type="password" class="form-control" name="rePassword"
										id="iptRePassword" placeholder="${beforeUser.password}">
								</div>
							</div>
							<input type="hidden" name="isManager" value="N"/>
							<div class="form-group">
								<div class="col-lg-10 col-lg-offset-2">
									<button type="submit" class="btn btn-primary"
										onclick="modify(); return false;">확인</button>
									<button class="btn btn-default"
										onclick="clearForm(); return false;">취소</button>
								</div>
							</div>
						</fieldset>
					</form>
				</div>
			</div>

		</div>

		
	</div> --%>
	
<div class="container">

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    
		<form class="form-horizontal" id="formModify"
						action="modify"
						method="POST">
		
			<h2>회원 수정 <small>회원 정보를 기입해주세요.</small></h2>
			<hr class="colorgraph">
			<div class="row">
			</div>
			<div class="form-group">
				<input type="text" name="userId" id="iptLoginId" class="form-control input-lg" value="${beforeUser.userId}" tabindex="3" readonly>
			</div>
			<div class="form-group">
				<input type="text" name="name" id="iptName" class="form-control input-lg" placeholder="${beforeUser.userName}" tabindex="3">
			</div>
			<div class="form-group">
				<input type="email" name="email" id="iptEmail" class="form-control input-lg" placeholder="${beforeUser.email}" tabindex="4">
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="password" name="password" id="iptPassword" class="form-control input-lg" placeholder="${beforeUser.password}" tabindex="5">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="password" name="rePassword" id="iptRePassword" class="form-control input-lg" placeholder="${beforeUser.password}" tabindex="6">
					</div>
				</div>
			</div>			
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-md-6"><button type="submit" onclick="modify(); return false;" class="btn btn-primary btn-block btn-lg" tabindex="7">정보 수정</button></div>
				<div class="col-xs-12 col-md-6"><button onclick="goHome(); return false;" class="btn btn-success btn-block btn-lg">홈으로</button></div>
			</div>
		</form>
	</div>
</div>
</div>

<!-- 
<div class="container">

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    
		<form class="form-horizontal" id="formModify"
						action="/modify"
						method="POST">
		
			<h2>회원 가입 <small>회원 정보를 기입해주세요.</small></h2>
			<hr class="colorgraph">
			<div class="row">
			</div>
			<div class="form-group">
				<input type="text" name="userId" id="iptLoginId" class="form-control input-lg" placeholder="아이디" tabindex="3">
			</div>
			<div id="dplPrint"></div>
			<div class="form-group">
				<input type="text" name="name" id="iptName" class="form-control input-lg" placeholder="이름" tabindex="3">
			</div>
			<div class="form-group">
				<input type="email" name="email" id="iptEmail" class="form-control input-lg" placeholder="이메일" tabindex="4">
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="password" name="password" id="iptPassword" class="form-control input-lg" placeholder="비밀번호" tabindex="5">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="password" name="rePassword" id="iptRePassword" class="form-control input-lg" placeholder="비밀번호 확인" tabindex="6">
					</div>
				</div>
			</div>			
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-md-6"><button type="submit" onclick="join(); return false;" class="btn btn-primary btn-block btn-lg" tabindex="7">가입하기</button></div>
				<div class="col-xs-12 col-md-6"><button onclick="goHome(); return false;" class="btn btn-success btn-block btn-lg">홈으로</button></div>
			</div>
		</form>
	</div>
</div>

</div> -->

</body>
</html>