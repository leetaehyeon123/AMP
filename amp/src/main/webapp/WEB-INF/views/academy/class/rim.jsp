<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사/수강생 관리 (승인/탈퇴)</title>
<link rel="stylesheet" href="resources/CSS/academy/main/main_banner.css" type="text/css">
<style type="text/css">
	#rim_container{
	display: grid; place-items:center;
	width: 100%; height: 100vh;
	}
	#rim_div{
	border:1px solid black;
	width: 600px;
	padding : 30px;
	text-align: center;
	}
	#academy_member_container{
	width: 500px; height: 200px; border: 1px solid black;
	margin: auto;
	}
	#blacklist_container{
	width: 500px; height: 200px; border: 1px solid black;
		margin: auto;
	}
	/* 검색창 */
	.search {
	    position: relative;
	    text-align: center;
	    width: 400px;
	    margin: 0 auto;
	}
	input {
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
	/* 버튼 */
	#btn_group{
		margin-top: 10px;
		display: flex;
		justify-content: center;
	}
	#quit{ 
		border-top-left-radius: 5px; 
		border-bottom-left-radius: 5px; 
	} 
	#block{ 
		border-top-right-radius: 5px; 
		border-bottom-right-radius: 5px; 
	} 
	#btn_group button{ 
		border: 1px solid skyblue; 
		background-color: rgba(0,0,0,0); 
		color: skyblue; 
		padding: 5px; 
	} 
	#btn_group button:hover{ 
		color:	white; 
		background-color: skyblue; 
	}
</style>
</head>
<body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script><script src="resources/JS/ajax/ajax.js"></script>
<script type="text/javascript">ajaxLoad('academyMain_topBar?academyname=<%=request.getParameter("academyname") %>','#academyMain_topBarDiv');</script><div id="academyMain_topBarDiv"></div>

	<div id="rim_container">
		<div id="rim_div">
			<script src="https://kit.fontawesome.com/8eb5905426.js" crossorigin="anonymous"></script>
		    <div class="search">
		    	<i class="fas fa-search"></i>
		    	<input type="text">
		    </div>
		    <br>
		    회원목록
		    <div id="academy_member_container"></div>
		    <div id="btn_group">
		    	<button id="quit">탈퇴시키기</button>
		    	<button id="block">블랙시키기</button>
		    </div>
		    <br>
		    블랙리스트
		    <div id="blacklist_container"></div>
		</div>
    </div>
</body>
</html>