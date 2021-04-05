<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AMP</title>

<style>
section { background:#606468; height:2000px; }
/* 슬라이드 */

.gallery { width:800px; height:200px; border:4px solid #f00; margin:100px auto; position:relative; overflow:hidden; }
.slide { position:relative; width:2400px; }
.slide div { width:200px; height:200px; color:#fff; float:left; }
.box1 { background:#000 }
.box2 { background:#222 }
.box3 { background:#333 }
.box4 { background:#444 }
.box5 { background:#555 }
.box6 { background:#666 }
.box7 { background:#777 }
.box8 { background:#888 }
.box9 { background:#999 }
.box10 { background:#aaa }
.box11 { background:#bbb }
.box12 { background:#ccc }
.gallery > a { position:absolute; width:40px; height:40px; top:80px; background:#606468; opacity:0; }
#prev { left:0; }
#next { right:0; }

</style>

</head>

<body>

<!-- top_bar 기본형태 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="resources/JS/ajax/ajax.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<div id="topBarDiv"></div><script type="text/javascript">ajaxDo('topBar','#topBarDiv');</script>
<!--  -->

<section>
	<h1>Section 부분입니다.</h1>
	
	<!-- 슬라이드 -->
	<div class="gallery">
	<div class="slide">
    	<div class = "box1">box1</div>
    	<div class = "box2">box2</div>
        <div class = "box3">box3</div>
        <div class = "box4">box4</div>
        <div class = "box5">box5</div>
        <div class = "box6">box6</div>
        <div class = "box7">box7</div>
        <div class = "box8">box8</div>
        <div class = "box9">box9</div>
        <div class = "box10">box10</div>
        <div class = "box11">box11</div>
        <div class = "box12">box12</div>
    </div>
    <a href="#" id="prev">&lt;</a>
    <a href="#" id="next">&gt;</a>
</div>
</section>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



<!-- 슬라이드 -->
<script>
var timer = setInterval("auto()",2000);

function auto(){
	$(".slide").animate({"left":-800},300,function(){
		for ( var i = 1; i <= 4; i++ ) {
			$(this).append( $(".slide div:first-child") )
		}
		$(".slide").css({"left":"0"});
	});
};

$(".gallery").hover(
	function(){
		clearInterval(timer);
		$("#prev").animate({"opacity":"1","left":"30px"},300);
		$("#next").animate({"opacity":"1","right":"30px"},300);
	},
	function(){
		$("#prev").animate({"opacity":"0","left":"0"},300);
		$("#next").animate({"opacity":"0","right":"0"},300);
		timer = setInterval("auto()",2000);
	}
);

$("#next").click(function(){
	auto();
});

$("#prev").click(function(){
	$(".slide").css({"left":"-800px"});
	for ( var i = 1; i <= 4; i++ ) {
		$(".slide").prepend( $(".slide div:last-child") );
	}
	$(".slide").animate({"left":"0"},300);
});

/*
1. 2초마다 자동으로 4칸씩 왼쪽으로 이동, css로 0
2. 마우스를 .gallery 위에 올리면 반복은 멈추고 화살표가 스르륵 나타나면서 왼쪽으로 30xp씩 이동 - 내비게이션2 
3. 버튼을 클릭하면 4칸씩 이동.
*/

</script>

</body>
</html>