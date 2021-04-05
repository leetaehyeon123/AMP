<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String email=(String)session.getAttribute("email"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="margin: 0px;">
	<div style="height: 100vh;display:flex; flex-direction: column;">
		<div style="width:100%;height:150px;background: green;"> 첫 추가div입니다 </div>
		<div style="flex:1; background: yellow;">첫 삭제 div입니다 </div>
		<div>첫 수정 div입니다</div>
	</div>
</body>
</html>