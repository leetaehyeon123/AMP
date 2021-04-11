<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>학원</title>
	<link rel="stylesheet" href="resources/CSS/academy/main/main_banner.css" type="text/css">

<style>

#banner { background:#ffc; height:2000px; }
#banner > h1 { width:800px; margin:0 auto; }
</style>
</head>

<body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script><script src="resources/JS/ajax/ajax.js"></script>
<script type="text/javascript">ajaxLoad('academyMain_topBar?academyname=<%=request.getParameter("academyname") %>','#academyMain_topBarDiv');</script><div id="academyMain_topBarDiv"></div>

<section id=banner>
	<h1>Section 부분입니다.</h1>
	<div class="main_banner">메인배너(홍보용 사진)</div>
	<div class="review">리뷰</div>
	<div class="side_bar">사이드바</div>
</section>

</body>
</html>


