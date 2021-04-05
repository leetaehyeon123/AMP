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
var lh = n * 40 + 430;

$("#gnb > li").on("mouseover",function(){
	$("#topBar").stop().animate({"height":lh},300);
	$("#gnb > li").removeClass("select");
	$(this).addClass("select");
});

$("#gnb").on("mouseleave",function(){
	$("#topBar").stop().animate({"height":"430px"},300);
});

</script>
<style type="text/css">
/* 로그인 조인 */
header h1 { position:absoulte; text-align:right; line-height:60px; font-size: 12px;}

/* 메뉴바 */
* { margin:0; padding:0; }
header li { list-style:none; }
header a { text-decoration:none; }

#topBar { height:430px; width:100%; border-bottom:2px solid #333; overflow:hidden;  background:#fff; }


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


<header id="topBar">
	<!-- 로그인 조인 -->
<div>ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss</div>
	<h1> <%=(session.getAttribute("idx")==null)?"<a href='login'>LOGIN JOIN</a> | <a href='main'>MAIN</a>":
		request.getAttribute("name")+"님 환영합니다  |  <a href='logout'>LOGOUT</a> | <a href=''>알림</a> | <a href=''>구독중</a> | <a href='message'>메시지</a> | <a href='main'>MAIN</a>" %> </h1>
    
    <!-- 메뉴바 -->
    <div class="top_banner">상단 배너</div>
    <ul id="gnb">
    	<li><a href="#">수강</a>
        	<ul class="sub">
            	<li><a href="registration">수강료 신청 및 수강료 조회</a></li>
                <li><a href="consult">수강상담</a></li>
				<li><a href="#"></a></li>
                <li><a href="#"></a></li>
            </ul>
        </li>
        
        <li><a href="#">소통</a>
        	<ul class="sub">
            	<li><a href="message">메세지</a></li>
                <li><a href="notice">공지사항</a></li>
            </ul>
        </li>
        <li><a href="#">강의</a>
        	<ul class="sub">
            	<li><a href="myclass">수강중인 강의(출결)</a></li>
            
            </ul>
        </li>
        <li><a href="#">관리</a>
        	<ul class="sub">
            	<li><a href="#">Main 관리</a></li>
                <li><a href="rim">강사/수강생 관리</a></li>
                <li><a href="classList">수강정보 관리</a></li>
                <li><a href="consultList">수강상담 관리</a></li>
            </ul>
        </li>
    </ul>
</header>
</body>
</html>