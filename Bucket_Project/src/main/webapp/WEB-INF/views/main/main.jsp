<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx">${pageContext.request.contextPath }</c:set>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>버킷</title>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
    
        $(document).ready(function() {              
            $('i.glyphicon-thumbs-up, i.glyphicon-thumbs-down').click(function(){    
                var $this = $(this),
                c = $this.data('count');    
                if (!c) c = 0;
                c++;
                $this.data('count',c);
                $('#'+this.id+'-bs3').html(c);
            });      
            $(document).delegate('*[data-toggle="lightbox"]', 'click', function(event) {
                event.preventDefault();
                $(this).ekkoLightbox();
            });                                        
        }); 
    </script>
<style>
@import "http://fonts.googleapis.com/css?family=Roboto:300,400,500,700";

.mt40 { margin-top: 40px; }
.white-panel {
  position: absolute;
  background: white;
  box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.3);
  padding: 10px;
}
.white-panel:hover {
  box-shadow: 1px 1px 10px rgba(0, 0, 0, 0.5);
  margin-top: -5px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}
.panel .panel-body { position: relative; padding: 0 !important; overflow: hidden; height: auto; }
.panel .panel-body a { overflow: hidden; }
.panel .panel-body a img { display: block; margin: 0; width: 100%; height: auto; 
    transition: all 0.5s; 
    -moz-transition: all 0.5s; 
    -webkit-transition: all 0.5s; 
    -o-transition: all 0.5s; 
}
.panel .panel-body a.zoom:hover img { transform: scale(1.3); -ms-transform: scale(1.3); -webkit-transform: scale(1.3); -o-transform: scale(1.3); -moz-transform: scale(1.3); }
.panel .panel-body a.zoom span.overlay { position: absolute; top: 0; left: 0; visibility: hidden; height: 100%; width: 100%; background-color: #000; opacity: 0; 
    transition: opacity .25s ease-out;
    -moz-transition: opacity .25s ease-out;
    -webkit-transition: opacity .25s ease-out;
    -o-transition: opacity .25s ease-out;
}     
.panel .panel-body a.zoom:hover span.overlay { display: block; visibility: visible; opacity: 0.55; -moz-opacity: 0.55; -webkit-opacity: 0.55; filter: alpha(opacity=65); -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=65)"; }  
.panel .panel-body a.zoom:hover span.overlay i { position: absolute; top: 45%; left: 0%; width: 100%; font-size: 2.25em; color: #fff !important; text-align: center;
    opacity: 1;
    -moz-opacity: 1;
    -webkit-opacity: 1;
    filter: alpha(opacity=1);    
    -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=1)";
}
.panel .panel-footer { padding: 8px !important; background-color: #f9f9f9 !important; border-bottom-right-radius: 0 !important; border-bottom-left-radius: 0 !important; }	
.panel .panel-footer h4 { display: inline; font: 400 normal 1.125em "Roboto",Arial,Verdana,sans-serif; color: #34495e margin: 0 !important; padding: 0 !important; }
.panel .panel-footer i.glyphicon { display: inline; font-size: 1.125em; cursor: pointer; }
.panel .panel-footer i.glyphicon-thumbs-up { color: #1abc9c; }
.panel .panel-footer i.glyphicon-thumbs-down { color: #e74c3c; padding-left: 5px; }
.panel .panel-footer div { width: 15px; display: inline; font: 300 normal 1.125em "Roboto",Arial,Verdana,sans-serif; color: #34495e; text-align: center; background-color: transparent !important; border: none !important; }	

.modal-title { font: 400 normal 1.625em "Roboto",Arial,Verdana,sans-serif; }
.modal-footer { font: 400 normal 1.125em "Roboto",Arial,Verdana,sans-serif; } 

/*!
 * Lightbox for Bootstrap 3 by @ashleydw
 * https://github.com/ashleydw/lightbox
 *
 * License: https://github.com/ashleydw/lightbox/blob/master/LICENSE
 */
 .ekko-lightbox-container{position:relative}.ekko-lightbox-nav-overlay{position:absolute;top:0;left:0;z-index:100;width:100%;height:100%}.ekko-lightbox-nav-overlay a{z-index:100;display:block;width:49%;height:100%;padding-top:45%;font-size:30px;color:#fff;text-shadow:2px 2px 4px #000;opacity:0;filter:dropshadow(color=#000000,offx=2,offy=2);-webkit-transition:opacity .5s;-moz-transition:opacity .5s;-o-transition:opacity .5s;transition:opacity .5s}.ekko-lightbox-nav-overlay a:empty{width:49%}.ekko-lightbox a:hover{text-decoration:none;opacity:1}.ekko-lightbox .glyphicon-chevron-left{left:0;float:left;padding-left:15px;text-align:left}.ekko-lightbox .glyphicon-chevron-right{right:0;float:right;padding-right:15px;text-align:right}.ekko-lightbox .modal-footer{text-align:left}
    #imaginary_container{
    margin-top:20%; /* Don't copy this */
}
.stylish-input-group .input-group-addon{
    background: white !important; 
}
.stylish-input-group .form-control{
	border-right:0; 
	box-shadow:0 0 0; 
	border-color:#1abc9c;
}
.stylish-input-group button{
    border:0;
    background:transparent;
}
#rank {
	margin-left : 80px;
}
.pinBoot {
  position: relative;
  max-width: 100%;
  width: 100%;
}

</style>

</head>
<body>
<%@include file="/WEB-INF/views/header/header.jspf" %>


<form action="searchBucket" method="post" id="searchForm">
	<div class="container 1">
	<div class="row 1">
        <div class="col-sm-6 col-sm-offset-3">
            <div id="imaginary_container"> 
                <div class="input-group stylish-input-group">
                    <input type="text"  id="searchContent" class="form-control"  placeholder="검색어를 입력하세요"  name="word">
                    <span class="input-group-addon">
                        <button type="button" onclick="startSearch(); return false;">
                         <span class="glyphicon glyphicon-search" ></span>
                         </button>
                    </span>
                </div>
            </div>
        </div>
	</div>
    </div>
    </form>
<!-- Reference: https://github.com/ashleydw/lightbox/ -->
<script src="//rawgithub.com/ashleydw/lightbox/master/dist/ekko-lightbox.js"></script>
<br>
<c:if test="${bucket1 ne null }">
<b id="rank">추천순</b>
</c:if>


<div class="container">
<div class="row">
  <section class="pinBoot">
<c:forEach items="${bucket1}" var="bucket" end="3">
        <article class="white-panel">
            <div class="panel panel-default">
                <div class="panel-body">
                    <a href="detailBucket?bucketId=${bucket.bucketId}" title="${bucket.title }" class="zoom" data-title="${bucket.title }" data-footer="${bucket.title }" data-type="image" data-toggle="lightbox">
                        <img src="${pageContext.request.contextPath}/resources/img/${bucket.image }" alt="${bucket.title }" />
                        <span class="overlay"><i class="glyphicon glyphicon-fullscreen"></i></span>
                    </a>
                </div>
                <div class="panel-footer">
                    <h4><a href="detailBucket?bucketId=${bucket.bucketId}" title="${bucket.title }">${bucket.title }</a></h4>
                    <span class="pull-right">
                        <i id="like1" class="glyphicon glyphicon-thumbs-up"></i><h6>${bucket.recomNum }</h6> 
                    </span>
                </div>
            </div>
        </article>
</c:forEach>
</section>
</div>
</div>
<!-- Progress Bar -->
                 <!--    <div class="progress">
                      <div  data-percentage="10%" style="width: 80%;" class="progress-bar progress-bar-success" role="progressbar" aria-valuemin="10" aria-valuemax="100"></div>
                    </div> -->
                    
             
<c:if test="${bucket2 ne null }">
<hr style="height: 15px;  border-color: #13C7A3 ;"/>    
                
                
  <b id="rank">최신순</b> 
  
<div class="container">
<div class="row">
<section class="pinBoot">
<c:forEach items="${bucket2 }" var="bucket">
        <article class="white-panel">
            <div class="panel panel-default">
                <div class="panel-body">
                    <a href="detailBucket?bucketId=${bucket.bucketId}" title="Nature Portfolio" class="zoom" data-title="Amazing Nature" data-footer="The beauty of nature" data-type="image" data-toggle="lightbox">
                        <img src="${pageContext.request.contextPath}/resources/img/${bucket.image }" alt="Nature Portfolio" />
                        <span class="overlay"><i class="glyphicon glyphicon-fullscreen"></i></span>
                    </a>
                </div>
                <div class="panel-footer">
                    <h4><a href="detailBucket?bucketId=${bucket.bucketId}" title="Nature Portfolio">${bucket.title }</a></h4>
                       <div id="like1-bs3"><h6>${bucket.registDate }</h6></div>
                </div>
            </div>
        </article>
</c:forEach>
</section>
</div>
</div>
</c:if>
<script type="text/javascript">
//검색 유효성 검사
var search = function() {
		if (document.getElementById("searchContent").value == "") {
					alert("검색어를 입력하세요");
					document.getElementById("searchContent").focus(); 
			return false;
		} else {
			return true;
		}
	};

	var startSearch = function() {
		if (search()) {
			document.getElementById("searchForm").submit();
		}
	};
    $(document).ready(function() {
    	$('.pinBoot').pinterest_grid({
    	no_columns: 4,
    	padding_x: 10,
    	padding_y: 10,
    	margin_bottom: 50,
    	single_column_breakpoint: 700
    	});
    	});

    	;(function ($, window, document, undefined) {
    	    var pluginName = 'pinterest_grid',
    	        defaults = {
    	            padding_x: 10,
    	            padding_y: 10,
    	            no_columns: 3,
    	            margin_bottom: 50,
    	            single_column_breakpoint: 700
    	        },
    	        columns,
    	        $article,
    	        article_width;

    	    function Plugin(element, options) {
    	        this.element = element;
    	        this.options = $.extend({}, defaults, options) ;
    	        this._defaults = defaults;
    	        this._name = pluginName;
    	        this.init();
    	    }

    	    Plugin.prototype.init = function () {
    	        var self = this,
    	            resize_finish;

    	        $(window).resize(function() {
    	            clearTimeout(resize_finish);
    	            resize_finish = setTimeout( function () {
    	                self.make_layout_change(self);
    	            }, 11);
    	        });

    	        self.make_layout_change(self);

    	        setTimeout(function() {
    	            $(window).resize();
    	        }, 500);
    	    };

    	    Plugin.prototype.calculate = function (single_column_mode) {
    	        var self = this,
    	            tallest = 0,
    	            row = 0,
    	            $container = $(this.element),
    	            container_width = $container.width();
    	            $article = $(this.element).children();

    	        if(single_column_mode === true) {
    	            article_width = $container.width() - self.options.padding_x;
    	        } else {
    	            article_width = ($container.width() - self.options.padding_x * self.options.no_columns) / self.options.no_columns;
    	        }

    	        $article.each(function() {
    	            $(this).css('width', article_width);
    	        });

    	        columns = self.options.no_columns;

    	        $article.each(function(index) {
    	            var current_column,
    	                left_out = 0,
    	                top = 0,
    	                $this = $(this),
    	                prevAll = $this.prevAll(),
    	                tallest = 0;

    	            if(single_column_mode === false) {
    	                current_column = (index % columns);
    	            } else {
    	                current_column = 0;
    	            }

    	            for(var t = 0; t < columns; t++) {
    	                $this.removeClass('c');
    	            }

    	            if(index % columns === 0) {
    	                row++;
    	            }

    	            $this.addClass('c' + current_column);
    	            $this.addClass('r' + row);

    	            prevAll.each(function(index) {
    	                if($(this).hasClass('c' + current_column)) {
    	                    top += $(this).outerHeight() + self.options.padding_y;
    	                }
    	            });

    	            if(single_column_mode === true) {
    	                left_out = 0;
    	            } else {
    	                left_out = (index % columns) * (article_width + self.options.padding_x);
    	            }

    	            $this.css({
    	                'left': left_out,
    	                'top' : top
    	            });
    	        });

    	        this.tallest($container);
    	        $(window).resize();
    	    };

    	    Plugin.prototype.tallest = function (_container) {
    	        var column_heights = [],
    	            largest = 0;

    	        for(var z = 0; z < columns; z++) {
    	            var temp_height = 0;
    	            _container.find('.c'+z).each(function() {
    	                temp_height += $(this).outerHeight();
    	            });
    	            column_heights[z] = temp_height;
    	        }

    	        largest = Math.max.apply(Math, column_heights);
    	        _container.css('height', largest + (this.options.padding_y + this.options.margin_bottom));
    	    };

    	    Plugin.prototype.make_layout_change = function (_self) {
    	        if($(window).width() < _self.options.single_column_breakpoint) {
    	            _self.calculate(true);
    	        } else {
    	            _self.calculate(false);
    	        }
    	    };

    	    $.fn[pluginName] = function (options) {
    	        return this.each(function () {
    	            if (!$.data(this, 'plugin_' + pluginName)) {
    	                $.data(this, 'plugin_' + pluginName,
    	                new Plugin(this, options));
    	            }
    	        });
    	    }

    	})(jQuery, window, document);
    	
    </script>
		</body>
</html>
