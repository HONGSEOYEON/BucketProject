<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>버킷</title>
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

	var clearForm = function() {
		document.getElementById("formModify").reset();
	};
	
</script>
</head>
<body>

	<!-- Main Navigation ========================================================================================== -->
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-responsive-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/index.jsp">회원가입</a>
			</div>
		</div>
	</div>

	

	<!-- Container ======================================================================================= -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12">

				<div class="page-header">
					<h2 id="container">회원 가입하기</h2>
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
										id="iptLoginId" placeholder="아이디" readonly value="${beforeUser.userId}">
								</div>
								<div id="dplPrint"></div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">이름</label>

								<div class="col-lg-10">
									<input type="text" class="form-control" name="name"
										id="iptName" placeholder="이름" value="${beforeUser.name}">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">이메일</label>

								<div class="col-lg-10">
									<input type="text" class="form-control" name="email"
										id="iptEmail" placeholder="이메일" value="${beforeUser.email}">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">비밀번호</label>

								<div class="col-lg-10">
									<input type="password" class="form-control" name="password"
										id="iptPassword" placeholder="비밀번호" value="${beforeUser.password}">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">비밀번호 확인</label>

								<div class="col-lg-10">
									<input type="password" class="form-control" name="rePassword"
										id="iptRePassword" placeholder="비밀번호 확인" value="${beforeUser.password}">
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

		
	</div>

</body>
</html>