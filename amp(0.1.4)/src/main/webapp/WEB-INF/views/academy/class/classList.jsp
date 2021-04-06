<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강 정보 관리</title>
<style type="text/css">
	#classList_container{
	display: grid; place-items:center;
	width: 100%; height: 100vh;
	}
	#classList_div{
	border:1px solid black;
	width: 600px;
	padding : 30px;
	text-align: center;
	}
	#classListbox_container{
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
	/* 텍스트 박스 크기 조절 */
	#class_name{
		width: 300px;
	}
	#class_time{
		width: 300px;
	}
	#class_date{
		width: 300px;
	}
	#class_limit{
		width: 300px;
	}
	#classroom_name{
		width: 300px;
	}
</style>
</head>
<body>
	<div id="classList_container">
		<div id="classList_div">
			<!-- 검색창 -->
			<script src="https://kit.fontawesome.com/8eb5905426.js" crossorigin="anonymous"></script>
		    <div class="search">
		    	<i class="fas fa-search"></i>
		    	<input type="text">
		    </div>
		    <br>
		    수강목록
    		<div id="classListbox_container"></div>
		    <!-- 버튼 -->
		    <div id="btn_group">
		    	<button id="createclass">수강 개설</button>
		    	<button id="updateclass">수강 수정</button>
		    	<button id="deleteclass">수강 페지</button>
		    </div>
    		<br>
    		<!-- 정보 입력 -->
    		<div class="class_name">강의 이름
    			<input id="class_name" type="text">
    		</div>
    		<div class="class_time">수업 시간
		    	<input id="class_time" type="text">
		    </div>
		    <div class="class_date">수업 날짜
		    	<input id="class_date" type="text">
		    </div>
		    <div class="class_limit">인원 제한
		    	<input id="class_limit" type="text">
		    </div>
		    <div class="classroom_name">강의실
		    	<input id="classroom_name" type="text">
		    </div>
		   <!--  <div class="class_name">강의 이름
		    	<input type="text">
		    </div> 
		    <div class="class_time">수업 시간
		    	<input type ="text">
		    </div>
		    <div class="class_date">수업 날짜
		    	<input type ="text">
		    </div>
		    <div class="clss_limit">인원 제한
		    	<input type ="text">
		    </div>
		    <div class="classroom_name">강의실
		    	<input type ="text">
		    </div> -->
		    강사
			<select>
				<option>강사 이름</option>
				<option>강사 이름</option>
				<option>강사 이름</option>
			</select>
		</div>
	</div>
</body>
</html>