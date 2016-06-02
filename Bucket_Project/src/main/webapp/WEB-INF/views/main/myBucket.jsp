<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이 버킷</title>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

	<style type="text/css">
	@import url("http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css");

.panel-image img.panel-image-preview {
    width: 100%;
	border-radius: 4px 4px 0px 0px;
}

.panel-heading ~ .panel-image img.panel-image-preview {
	border-radius: 0px;
}

.panel-image ~ .panel-body, .panel-image.hide-panel-body ~ .panel-body {
	overflow: hidden;
}
.panel-image ~ .panel-footer a {
	padding: 0px 10px;
	font-size: 1.3em;
	color: rgb(100, 100, 100);
}

.panel-image.hide-panel-body ~ .panel-body {
	height: 0px;
	padding: 0px;
}
	</style>
	
    <script type="text/javascript">
    $(function() {
        $('.panel-image img.panel-image-preview').on('click', function(e) {
    	    $(this).closest('.panel-image').toggleClass('hide-panel-body');
        });
    });
    </script>

</head>
<body>
<div class="container" style="margin-top:10px;">

	<div class="row form-group">
<c:forEach items="${myBuckets }" var="bucket">
        <div class="col-xs-12 col-md-6">
            <div class="panel panel-default">
                <div class="panel-image hide-panel-body">
                    <img 
                    src="${pageContext.request.contextPath}/resources/img/${bucket.image }" 
                    class="panel-image-preview" 
                    width="250px"
                    height="400px"/>
                </div>
                <div class="panel-body">
                    <h4>${bucket.title }</h4>
                    <p>${bucket.contents }</p>
                </div>
                <div class="panel-footer text-center">
                    <a href="detailBucket?bucketId=${bucket.bucketId}"><span class="glyphicon glyphicon-download"></span></a>
                </div>
            </div>
        </div>
    </c:forEach>
	</div>
    
</div>
</body>
</html>
