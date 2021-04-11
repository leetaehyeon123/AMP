<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/CSS/academy/main/main_banner.css" type="text/css">
<style type="text/css">
#consult_container{
display: grid; place-items:center;
text-align: center;
width: 100%; height: 100vh;

}
#consult_div{
border: 1px solid black;
width: 500px;
padding: 20px;

}

#select1,#select2{
width: 150px;
}
#input1{
width: 100px;
}


</style>
</head>
<body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script><script src="resources/JS/ajax/ajax.js"></script>
<script type="text/javascript">ajaxLoad('academyMain_topBar?academyidx=<%=request.getParameter("academyidx") %>','#academyMain_topBarDiv');</script><div id="academyMain_topBarDiv"></div>

	<div id="consult_container">
		<div id="consult_div">
			<h2>수강 상담</h2><br>
			
			<p>상감희망 과목</p>
			<select id="select1">
				<option>과목1</option>
				<option>과목1</option>
				<option>과목1</option>
			</select>
			<br>
			<p>수강 시간</p>
			<select id="select2">
				<option>시간1</option>
				<option>시간2</option>
				<option>시간3</option>
			</select>
			<br>
			<p>이름</p>
			<input id="input1" type="text">
			<br>
			<p>핸드폰번호</p>
			<input id="input2" type="text">
			<br>
			<br>
			<br>
			<input id="input3" type="button" value="상담 신청">
			
		</div>
	</div>

</body>
</html>