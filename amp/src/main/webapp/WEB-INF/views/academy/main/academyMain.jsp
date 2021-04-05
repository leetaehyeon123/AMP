<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>학원</title>
	<link rel="stylesheet" href="resources/CSS/academy/main/main_banner.css" type="text/css">

<style>

header h1 { text-align:right; line-height:60px; font-size: 12px;}
/* 메뉴바 */
* { margin:0; padding:0; }
li { list-style:none; }
a { text-decoration:none; }

header { height:430px; width:100%; border-bottom:2px solid #333; overflow:hidden;  background:#fff; }
.blank { height:0px; } /* 여기에 알맞은 값을 넣으시오. height값 */

#gnb { width:800px; margin:0 auto; }
#gnb > li { float:left; width:200px; }

#gnb > li.select > a { color:#fff; background:#09F; }
#gnb > li > a { color:#333; }
#gnb:after { content:""; clear:both; display:block; }
#gnb li a { line-height:40px; text-align:center; display:block;  }
#gnb .sub li a { color:#333; }
#gnb .sub li a:hover { background:#ddd; color:#333; }

section { background:#ffc; height:2000px; }
section h1 { width:800px; margin:0 auto; }
</style>
</head>

<body>
<header>
	<h1>알림 즐겨찾기</h1>
	<div class="top_banner">상단 배너</div>
    <ul id="gnb">
    	<li><a href="#">수강</a>
        	<ul class="sub">
            	<li><a href="#">수강료 신청 및 수강료 조회</a></li>
                <li><a href="#">수강상담</a></li>
				<li><a href="#"></a></li>
                <li><a href="#"></a></li>
            </ul>
        </li>
        <li><a href="#">소통</a>
        	<ul class="sub">
            	<li><a href="#">메세지</a></li>
                <li><a href="#">공지사항</a></li>
            </ul>
        </li>
        <li><a href="#">강의</a>
        	<ul class="sub">
            	<li><a href="#">수강중인 강의(출결)</a></li>
            </ul>
        </li>
        <li><a href="#">관리</a>
        	<ul class="sub">
            	<li><a href="#">Main 관리</a></li>
                <li><a href="#">강사/수강생 관리</a></li>
                <li><a href="#">수강정보 관리</a></li>
                <li><a href="#">수강상담 관리</a></li>
            </ul>
        </li>
    </ul>
</header>
<div class="blank"></div>
<section>
	<h1>Section 부분입니다.</h1>
	<div class="main_banner">메인배너(홍보용 사진)</div>
	<div class="review">리뷰</div>
	<div class="side_bar">사이드바</div>
</section>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
var n = $("#gnb > li:first-child li").length;
var lh = n * 40 + 430;

$("#gnb > li").on("mouseover",function(){
	$("header").stop().animate({"height":lh},300);
	$("#gnb > li").removeClass("select");
	$(this).addClass("select");
});

$("#gnb").on("mouseleave",function(){
	$("header").stop().animate({"height":"430px"},300);
});
</script>
</body>
</html>


