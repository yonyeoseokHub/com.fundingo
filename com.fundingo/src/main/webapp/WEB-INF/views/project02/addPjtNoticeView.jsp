<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- Favicon-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<link rel="icon" type="image/x-icon" href="/static/img/favicon.ico" />
<link href="/static/css/styles.css" rel="stylesheet" />
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

<title>프로젝트 공지사항</title>
<!-- Core theme JS-->
<script src="/static/js/scripts.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
$(function(){

	$('button:contains("목 록")').on('click',function(){
	
		//location.href = "/project02/getPjtNoticeList/"+pjtNo;
		location.href = "getPjtNoticeList?pjtNo=${pjtNo}&currentPage=1";
		console.log(${project.pjtNo});
	})
})
</script>
<!-- <style>

body{
	padding-top: 30px;
}

pre {
	border: 0;
	background-color: transparent;
}
</style> -->
<style>

a:link {text-decoration:none; color:#646464;}
a:visited {text-decoration:none; color:#646464;}
a:active {text-decoration:none; color:#646464;}
a:hover {text-decoration:none; color:#646464;}

@font-face {
    font-family: 'BMDOHYEON';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

body{font-family : 'BMDOHYEON'}

@media ( max-width :768px) {
}

.progress-bar{ text-align : center; }

#prod { opacity: 0.5; }

#prod:hover { opacity: 1.0; }


.active#heart:before,.active#heart:after{
	background: red !important;
}
#heart {
    width: 50px;
    height: 45px;
    transition: background 0.5s ease;

}
#heart:before,
#heart:after {
	transition: background 0.5s ease;
    position: absolute;
    content: "";

    width: 25px;
    height: 40px;
    background: dimgrey;
    border-radius: 50px 50px 0 0;
    transform: rotate(-45deg);
}
#heart:after {
    transform: rotate(45deg);
    transform-origin :80% 85%;
}
</style>
</head>
<body>

	<div class="container">
			<div class="page-header">
				<h3 class=" text-default">글 작성</h3>
			</div>

			<div class="row">
				<div class="col-xs-4 col-md-2">
					<strong>제 목</strong>
				</div>
				<div class="col-xs-8 col-md-4">
					${pjtNotice.pjtNoticeTitle}
				</div>
			</div>

			<hr />

			<div class="row">
				<div class="col-xs-4 col-md-2">
					<strong>내 용</strong>
				</div>
				<div class="col-xs-8 col-md-4">
					<pre style="width: 500px; height: 400px;">${pjtNotice.pjtNoticeContents}</pre>
				</div>
			</div>

			<hr />

			<div align="right">
				<button type="button" class="btn btn-default" style="width: 60px;">목 록</button>
			</div>
	</div>

</body>
</html>