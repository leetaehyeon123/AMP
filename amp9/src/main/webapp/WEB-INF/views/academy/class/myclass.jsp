<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#myclass_container{
	display: grid; place-items:center;
	width: 100%; height: 100vh;
	}
	#myclass_div{
	border:1px solid black;
	width: 600px;
	padding : 30px;
	text-align: center;
	
	}
	#check_container{
	width: 500px; height: 200px; border: 1px solid black;
	margin: auto;
	}
	#class_member_container{
	width: 500px; height: 200px; border: 1px solid black;
		margin: auto;
	}
</style>
</head>
<body>
	<div id="myclass_container">
		<div id="myclass_div">
			<h2>내강의</h2>
			수강중인 강의
			<select>
				<option>강의</option>
				<option>강의</option>
				<option>강의</option>
			
			</select>
			<br>
			수강시간
			<select>
				<option>시간</option>
			</select>
			<br>
			<br>
			<br>
			출결사항
			<div id="check_container"></div>
			<br>
			수강생목록
			<div id="class_member_container"></div>
					
		</div>
	</div>

</body>
</html>