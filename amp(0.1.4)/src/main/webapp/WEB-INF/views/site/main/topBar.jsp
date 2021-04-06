<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 메뉴바 -->
<script>
//웹소켓 연결부


var n = $("#gnb > li:first-child li").length;
var lh = n * 40 + 160;

$("#gnb > li").on("mouseover",function(){
	$("header").stop().animate({"height":lh},300);
	$("#gnb > li").removeClass("select");
	$(this).addClass("select");
});

$("#gnb").on("mouseleave",function(){
	$("header").stop().animate({"height":"160px"},300);
});
</script>
<style type="text/css">
/* 로그인 조인 */
header h1 { position:absoulte; text-align:right; line-height:60px; font-size: 12px;}

/* 검색창 */
.search {
    position: relative;
    text-align: center;
    width: 400px;
    margin: 0 auto;
}

header input {
    width: 100%;
    border: 1px solid #bbb;
    margin: 10px 0;
    padding: 10px 12px;
}

.fa-search {
    position: absolute;
    left: 390px;
    top: 20px;
    margin: 0;
}

/* 메뉴바 */
* { margin:0; padding:0; }
header li { list-style:none; }
header a { text-decoration:none; }

header { height:160px; width:100%; border-bottom:2px solid #333; overflow:hidden;  background:#fff; }


#gnb { width:800px; margin:0 auto; }
#gnb > li { float:left; width:200px; }

#gnb > li.select > a { color:#fff; background:#09F; }
#gnb > li > a { color:#333; }
#gnb:after { content:""; clear:both; display:block; }
#gnb li a { line-height:40px; text-align:center; display:block;  }
#gnb .sub li a { color:#333; }
#gnb .sub li a:hover { background:#ddd; color:#333; }





</style>
</head>
<body>
<header>
	<!-- 로그인 조인 -->
	<h1> <%=(session.getAttribute("idx")==null)?"<a href='login'>LOGIN JOIN</a>":
		request.getAttribute("name")+"님 환영합니다  |  <a href='logout'>LOGOUT</a> | <a href=''>알림</a> | <a href=''>구독중</a> | <a href='message'>메시지</a>" %> </h1>

	<!-- 검색창 -->
	<script src="https://kit.fontawesome.com/8eb5905426.js" crossorigin="anonymous"></script>
    <div class="search">
    	<i class="fas fa-search"></i>
    	<input type="text">
    </div>
    
    <!-- 메뉴바 -->
    <ul id="gnb">
    	<li><a href="#">MENU1</a>
        	<ul class="sub">
            	<li><a href="#">SUB1-1</a></li>
                <li><a href="#">SUB1-2</a></li>
                <li><a href="#">SUB1-3</a></li>
                <li><a href="#">SUB1-4</a></li>
            </ul>
        </li>
        <li><a href="#">MENU2</a>
        	<ul class="sub">
            	<li><a href="#">SUB2-1</a></li>
                <li><a href="#">SUB2-2</a></li>
                <li><a href="#">SUB2-3</a></li>
            </ul>
        </li>
        <li><a href="#">MENU3</a>
        	<ul class="sub">
            	<li><a href="#">SUB3-1</a></li>
                <li><a href="#">SUB3-2</a></li>
                <li><a href="#">SUB3-3</a></li>
                <li><a href="#">SUB3-4</a></li>
            </ul>
        </li>
        <li><a href="#">MENU4</a>
        	<ul class="sub">
            	<li><a href="#">SUB4-1</a></li>
                <li><a href="#">SUB4-2</a></li>
                <li><a href="#">SUB4-3</a></li>
            </ul>
        </li>
    </ul>
</header>
</body>
</html>