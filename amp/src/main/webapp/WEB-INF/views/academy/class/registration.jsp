<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청</title>
<link rel="stylesheet" href="resources/CSS/academy/main/main_banner.css" type="text/css">
<style type="text/css">
	#registration_container{
	display: grid; place-items:center;
	width: 100%; height: 100vh;
	}
	#registration_div{
	border:1px solid black;
	width: 600px;
	padding : 30px;
	text-align: center;
	}
	
	#btn_course{
		margin-top: 10px;
		display: flex;
		justify-content: center;
	}
	#btn_course1{ 
		border-top-radius: 5px; 
		border-bottom-radius: 5px;
	} 
	#btn_course button{ 
		border: 1px solid black; 
		background-color: rgba(0,0,0,0); 
		color: black; 
		padding: 5px; 
	} 
	#btn_course button:hover{ 
		color: red; 
		background-color: yellow; 
	}
</style>
</head>
<body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script><script src="resources/JS/ajax/ajax.js"></script>
<script type="text/javascript">ajaxLoad('academyMain_topBar?academyname=<%=request.getParameter("academyname") %>','#academyMain_topBarDiv');</script><div id="academyMain_topBarDiv"></div>

	<div id="registration_container">
		<div id="registration_div">
			<h2>수강신청</h2>
			수강희망 과목
			<select>
				<option>강의</option>
				<option>강의</option>
				<option>강의</option>
			</select>
			<br>
			<br>
			수강시간
			<select>
				<option>시간</option>
				<option>시간</option>
				<option>시간</option>
			</select>
			<br>
			<br>
			<div class="price">수강료
				<label for="price">  4$  </label>
			</div>
			<br>
			<div class="sale">할인 코드
				<input type ="text">
			</div>
			<br>
			<div id="btn_course"> 
				<button id="btn_course1">수강신청</button> 
			</div>
		</div>
	</div>
</body>
</html>