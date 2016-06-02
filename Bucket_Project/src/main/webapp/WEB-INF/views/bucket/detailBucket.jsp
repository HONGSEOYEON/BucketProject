<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>버킷 상세페이지</title>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-2.2.4.min.js">
	
</script>

<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=true"></script>



<!-- GoogoleMap Asynchronously Loading the API ********************************************* -->
<script type="text/javascript">
    function initialize() {
     
        var mapOptions = {
                            zoom: 18, // 지도를 띄웠을 때의 줌 크기
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        };
         
         
        var map = new google.maps.Map(document.getElementById("map-canvas"), // div의 id과 값이 같아야 함. "map-canvas"
                                    mapOptions);
         
        var size_x = 40; // 마커로 사용할 이미지의 가로 크기
        var size_y = 40; // 마커로 사용할 이미지의 세로 크기
     
        // 마커로 사용할 이미지 주소
        var image = new google.maps.MarkerImage( '주소 여기에 기입!',
                                                    new google.maps.Size(size_x, size_y),
                                                    '',
                                                    '',
                                                    new google.maps.Size(size_x, size_y));
         
        // Geocoding *****************************************************
        var address = '서울 특별시 금천구 가산동 371-47'; // DB에서 주소 가져와서 검색하거나 왼쪽과 같이 주소를 바로 코딩.
        var marker = null;
        var geocoder = new google.maps.Geocoder();
        geocoder.geocode( { 'address': address}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                marker = new google.maps.Marker({
                                map: map,
                                icon: image, // 마커로 사용할 이미지(변수)
                                title: '코스타', // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
                                position: results[0].geometry.location
                            });
 
                var content = "코스타<br/><br/>Tel: 070-5039-5815"; // 말풍선 안에 들어갈 내용
             
                // 마커를 클릭했을 때의 이벤트. 말풍선 뿅~
                var infowindow = new google.maps.InfoWindow({ content: content});
                google.maps.event.addListener(marker, "click", function() {infowindow.open(map,marker);});
            } else {
                alert("Geocode was not successful for the following reason: " + status);
            }
        });
        // Geocoding // *****************************************************
         
    }
    google.maps.event.addDomListener(window, 'load', initialize);
</script>

<script type="text/javascript">
	// 댓글 유효성 검사
	var comment = function() {
		if (document.getElementById("commentContent").value == "") {
			alert("댓글을 입력하세요");
			document.getElementById("commentContent").focus();
			return false;
		} else {
			return true;
		}
	};

	var registComment = function() {
		if (comment()) {
			document.getElementById("commentForm").submit();
		}
	};
	
	var accuse = function() {
		alert("게시물을 신고했습니다!");
		location.href="${pageContext.request.contextPath}/accuse?bucketId=${bucket.bucketId}";
		return true;
	}
	
	var recommand = function() {
		alert("게시물을 추천했습니다!");
		location.href="${pageContext.request.contextPath}/recommand?bucketId=${bucket.bucketId}" ;
		return true;
	}

	// 담기 테스트 
	var bookmark = function() {
		alert("버킷을 담았습니다!");
		location.href="${pageContext.request.contextPath}/registerKeepBucket?bucketId=${bucket.bucketId}";
		return true;
	}; 

	/* $(function(){
		$("#bookmark").click(function(){
			alert("버킷을 담았습니다!");
			$("#bookmark").Attr("disabled", "disabled");
		});
	}); */

/* 	function bookmarkTest() {
		if (bookmark()) {
			location.href = "${pageContext.request.contextPath}/registerKeepBucket?bucketId=${bucket.bucketId}";
			return false;
		} else {
			location.href = "${pageContext.request.contextPath}/detailBucket?bucketId=${bucket.bucketId}";
			return false;
		}
	} */
</script>
<style>
/* body {
	padding: 10% 30%;
	/* background-image: url("resources/img/back.png"); */
}
td {
	padding: 10px;
}

#musicDetail {
	width: 100%;
}

.imgAlbum {
	width: 600px;
	height: 600px;
}

h5 {
	text-align: center;
}

* /

.coupon {
	border: 3px dashed #bcbcbc;
	border-radius: 10px;
	font-family: "HelveticaNeue-Light", "Helvetica Neue Light",
		"Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
	font-weight: 300;
}

.coupon #head {
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	min-height: 56px;
}

.coupon #footer {
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

#title .visible-xs {
	font-size: 12px;
}

.coupon #title img {
	font-size: 30px;
	height: 30px;
	margin-top: 5px;
}

@media screen and (max-width: 500px) {
	.coupon #title img {
		height: 15px;
	}
}

.coupon #title span {
	float: right;
	margin-top: 5px;
	font-weight: 700;
	text-transform: uppercase;
}

.coupon-img {
	width: 100%;
	margin-bottom: 15px;
	padding: 0;
}

.items {
	margin: 15px 0;
}

.usd, .cents {
	font-size: 20px;
}

.number {
	font-size: 40px;
	font-weight: 700;
}

sup {
	top: -15px;
}

#business-info ul {
	margin: 0;
	padding: 0;
	list-style-type: none;
	text-align: center;
}

#business-info ul li {
	display: inline;
	text-align: center;
}

#business-info ul li span {
	text-decoration: none;
	padding: .2em 1em;
}

#business-info ul li span i {
	padding-right: 5px;
}

.disclosure {
	padding-top: 15px;
	font-size: 11px;
	color: #bcbcbc;
	text-align: center;
}

.coupon-code {
	color: #333333;
	font-size: 11px;
}

.exp {
	color: #f34235;
}

.print {
	font-size: 14px;
	float: right;
}

/*------------------dont copy these lines----------------------*/
body {
	font-family: "HelveticaNeue-Light", "Helvetica Neue Light",
		"Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
	font-weight: 300;
}

.row {
	margin: 30px 0;
}

#quicknav ul {
	margin: 0;
	padding: 0;
	list-style-type: none;
	text-align: center;
}

#quicknav ul li {
	display: inline;
}

#quicknav ul li a {
	text-decoration: none;
	padding: .2em 1em;
}

.btn-danger, .btn-success, .btn-info, .btn-warning, .btn-primary {
	width: 105px;
}

.btn-default {
	margin-bottom: 40px;
}

#commentTable {
 margin:0 auto; 
}

#commentTag {
text-align : center;
}
/*-------------------------------------------------------------*/
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/header/header.jspf"%>
	<div class="container">

		<div id="quicknav">
			<br>
			<br><br><br>
			<ul>
				<c:if
					test="${user.userId != null && user.isManager != 'Y' && user.userId == bucket.writerId}">
					<b>본인 게시물 입니다</b>
					<br>
				</c:if>
				<c:if test="${user.userId != null && user.isManager != 'Y' && user.userId != bucket.writerId && keep != null}">
				<b>담겨진 게시물 입니다</b><br>
				</c:if>
				<c:if
					test="${user.userId != null && user.isManager != 'Y' && user.userId != bucket.writerId && keep == null}">
					<li>
					<a style="background-color: #3498db" class="btn btn-xs btn-default" id="bookmark" onclick="bookmark(); return false; location.href='${pageContext.request.contextPath}/registerKeepBucket?bucketId=${bucket.bucketId}' ">담기</a>
					</li>
				</c:if>
				<c:if test="${user.userId != null && user.isManager != 'Y' && user.userId != bucket.writerId}">
					<li><a id="recommand" class="btn btn-xs btn-default"
						href="${pageContext.request.contextPath}/recommand?bucketId=${bucket.bucketId}"  onclick="recommand(); return false;">추천</a></li>
				</c:if>
				<c:if test="${user.userId != null && user.isManager != 'Y' && user.userId != bucket.writerId}">
					<li><a class="btn btn-xs btn-default"
						href="${pageContext.request.contextPath}/accuse?bucketId=${bucket.bucketId}" onclick="accuse(); return false;">신고</a></li>
				</c:if>
				<c:if
					test="${user.userId != null && bucket.writerId == user.userId}">
					<li><a class="btn btn-xs btn-default"
						href="${pageContext.request.contextPath}/modifyBucket?bucketId=${bucket.bucketId}">수정</a></li>
				</c:if>
				<c:if
					test="${user.userId != null && bucket.writerId == user.userId}">
					<li><a id="deleteButton" onclick="return deleteButton();" class="btn btn-xs btn-default"
						href="${pageContext.request.contextPath}/removeBucket?bucketId=${bucket.bucketId}">삭제</a></li>
				</c:if>
				<c:if test="${user.userId != null && user.isManager != 'N'}">
					<li><a id="deleteButton" onclick="return deleteButton();" class="btn btn-xs btn-default"
						href="${pageContext.request.contextPath}/removeBucket?bucketId=${bucket.bucketId}">삭제</a></li>
				</c:if>
			</ul>
		</div>


		<div class="row" id="green">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-success coupon">
					<div class="panel-heading" id="head">
						<div class="panel-title" id="title">
							<i class="fa fa-github fa-2x"></i> <span class="hidden-xs">${bucket.title}</span>
							<span class="visible-xs">${bucket.title}</span>
						</div>
					</div>
					<div class="panel-body">
						<img src="resources/img/${bucket.image}"
							class="coupon-img img-rounded">
						<div class="col-md-9">
							<div class="offer text-success">
								작성자 : <b>${bucket.writerId} 님</b>
							</div>
							<ul class="items">
								<li style="list-style-type: none">${bucket.contents}</li>
							</ul>
						</div>
						<div class="col-md-3">

							<div class="offer text-success">
								추천수 <span style="background-color: #18bc9c" class="badge">${bucket.recomNum}</span>
							</div>
						</div>
			<!--  -->
						<div id="map-canvas" style="width: 100%; height: 340px" title="코스타"></div>

			<!--  -->
					</div>
					<div class="panel-footer"></div>



					<div class="panel-footer">
						<c:if test="${user.userId != null}">
							<form action="${pageContext.request.contextPath}/commentRegist"
								method="post" id="commentForm">
								<div class="row form-group">
									<div class="input-group">
										<span class="input-group-addon primary"> <input
											type="submit" value="쓰기"
											onclick="registComment(); return false;">
										</span> 
										<input type="hidden" name="bucketId" value=${bucket.bucketId}>
										<input type="hidden" name="writerId" value=${user.userId}>
										<input type="text" class="form-control" name="contents"
											id="commentContent">
									</div>
								</div>
							</form>
						</c:if>
					</div>

					<br> <br>
						
					
					
						
						<c:forEach items="${comments}" var="comment" varStatus="sts">
							<p id="commentTag">
								<b>${comment.writerId} 님</b> : ${comment.contents} &nbsp;
								<c:if
									test="${user.userId != null && comment.writerId == user.userId}">
									<b><a
										href="${pageContext.request.contextPath}/commentRemove?commentId=${comment.commentId}&bucketId=${bucket.bucketId}">삭제</a></b>
								</c:if>
							</p>
							<br>
						</c:forEach>
					
<script type="text/javascript">
	function deleteButton() {
		return confirm("게시물을 정말 삭제하시겠습니까?");
	}
</script>
</body>
</html>
