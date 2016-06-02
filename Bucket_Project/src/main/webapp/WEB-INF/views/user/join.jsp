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
		if (document.getElementById("iptLoginId").value == "") {
			alert("아이디를 입력하세요");
			document.getElementById("iptLoginId").focus();
			return false;
		}
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

	var join = function() {
		if (validate()) {
			document.getElementById("formJoin").submit();
		}
	};

	var goHome = function() {
		location.href="javascript:history.back()";
	};
	
</script>
</head>
<body>

<div class="container">

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    
		<form class="form-horizontal" id="formJoin"
						action="join"
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
						<input type="hidden" name="isManager" value="N">
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-md-6"><button type="submit" onclick="join(); return false;" class="btn btn-primary btn-block btn-lg" tabindex="7">가입하기</button></div>
				<div class="col-xs-12 col-md-6"><button onclick="goHome(); return false;" class="btn btn-success btn-block btn-lg">홈으로</button></div>
			</div>
		</form>
	</div>
</div>
</div>

<!--
<div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title" id="myModalLabel">Terms & Conditions</h4>
			</div>
			<div class="modal-body">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">I Agree</button>
			</div>
		</div>/.modal-content
	</div>/.modal-dialog
</div>/.modal
</div> -->

	<script type="text/javascript">
		/* 아이디 중복 검사 */
		$("#iptLoginId").keyup(function() {
			if ($(this).val().length < 5) {
				$("#dplPrint").text("5자 이상 입력하세요.");
			} else {
				$.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/checkId",
					data : {
						"loginId" : $("#iptLoginId").val()
					},
					success : function(data) {
						if (data == "true") {
							$("#dplPrint").text("사용중인 아이디입니다");
						} else {
							$("#dplPrint").text("사용 가능한 아이디입니다");
						}
					}
				})
			}
		});
	</script>

</body>
</html>