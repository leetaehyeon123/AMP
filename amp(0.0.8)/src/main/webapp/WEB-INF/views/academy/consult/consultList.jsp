<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#consultList_container{
	display: grid; place-items:center;
	width: 100%;
	height: 100vh;
	text-align: center;
	
	}
	#consultList_div{
	width: 600px; height: 600px;
	border: 1px solid black;
	
	}
	#consultList_table{
	width:100%;
	}

	

</style>
</head>

<body>
<div id="consultList_container">
	<div>
		<h2>수강 상담 관리</h2>
		<div id="consultList_div">
		<table id="consultList_table">
		 
		 	<tr>
		 	<td>NO</td>
		 	<td>이름</td>
		 	<td>전화번호</td>
		 	<td>과목</td>
		 	<td>신청시간</td>
		 	<td>상태</td>
		 	</tr>
		 	<tr>
		  	<td>NO</td>
		 	<td>이름</td>
		 	<td>전화번호</td>
		 	<td>과목</td>
		 	<td>신청시간</td>
		 	<td><input type="button" value="상담완료"></td>
		 	</tr>
		 	<tr>
		 	<td>NO</td>
		 	<td>이름</td>
		 	<td>전화번호</td>
		 	<td>과목</td>
		 	<td>신청시간</td>
		 	<td><input type="button" value="상담완료"></td>
		 	</tr>
		 
		
		</table>
		</div>
	</div>

</div>

</body>
</html>