<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String platform= request.getParameter("platform");
    String isMember=request.getParameter("isMember");
    if(platform==null){
    	platform="null";
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
<%if(!platform.equals("normal")){%>/* 1 */
	#div1{
		display: none;
	 }
<%}else{%>
	<%if(isMember.equals("true")){%>/* 2 */
	#div2{
		display: none;
	}
	<%}else{%>/* 3 */
	
	<%}%>
<%}%>

</style>

<script type="text/javascript">





function userinfocheck(){
	<%if(!platform.equals("normal")){%>/* 1 */
	if($('#name').val() == ''){
		alert("이름을 입력하세요");
		return false;
	}else if($('#email').val() == ''){
		alert("이메일을 입력하세요");
		return false;
	}else if($('#addnumber').val() == ''){
		alert("우편번호를 입력하세요");
		return false;
	}else if($('#address').val() == ''){
		alert("주소를 입력하세요");
		return false;
	}else if($('birth').val() == ''){
		alert("생년월일을 입력하세요");
		return false;
	}else{
		alert("회원가입 완료");
	}	 

<%}else{%>
	<%if(isMember.equals("true")){%>/* 2 */
	if($('#id').val() == ''){
		alert("아이디를 입력하세요");
		return false;
	}else if($('#pw1').val() == ''){
		alert("비밀번호를 입력하세요");
		return false;
	}else if($('#pw2').val() == ''){
		alert("비밀번호 확인을 입력하세요");
		return false;
	}else if($('#pw1').val() != $('#pw2').val()){
		alert("비밀번호와 비밀번호 확인이 다릅니다");
		return false;
	}else{
		alert("회원가입 완료");
	}

	<%}else{%>/* 3 */

	if($('#id').val() == ''){
		alert("아이디를 입력하세요");
		return false;
	}else if($('#pw1').val() == ''){
		alert("비밀번호를 입력하세요");
		return false;
	}else if($('#pw2').val() == ''){
		alert("비밀번호 확인을 입력하세요");
		return false;
	}else if($('#pw1').val() != $('#pw2').val()){
		alert("비밀번호와 비밀번호 확인이 다릅니다");
		return false;
	}else if($('#name').val() == ''){
		alert("이름을 입력하세요");
		return false;
	}else if($('#email').val() == ''){
		alert("이메일을 입력하세요");
		return false;
	}else if($('#addnumber').val() == ''){
		alert("우편번호를 입력하세요");
		return false;
	}else if($('#address').val() == ''){
		alert("주소를 입력하세요");
		return false;
	}else if($('birth').val() == ''){
		alert("생년월일을 입력하세요");
		return false;
	}else{
		alert("회원가입 완료");
	}	 

	<%}%>
<%}%>
	
return true;
	
};
	

	
	

</script>
</head>

<body>
<div>
	<div id="div1">
		<input id="id" name="id" type="text" placeholder="ID">
		<input type="button" value="중복확인" onclick="idCheck()"> <!-- 2021-02-24 김용민 -->
		<br>
		<input id="pw1" name="pw" type="text" placeholder="PW"> <!-- 2021-02-24 김용민 -->
		<br>
		<input id="pw2" type="text" placeholder="PW 확인"> <!-- 2021-02-24 김용민 -->
		<br>
	</div>
	<div id="div2">
		<input id="name" name="name" type="text" placeholder="이름">
		<br>
		<input id="email" name="email" type="text" placeholder="이메일">
		<br>
		<input type="text" id="addnumber" name="address" placeholder="우편번호">
		<input type="button" onclick="addnumberSearch()" value="우편번호 찾기"><br>
		<input type="text" id="address" name="address" placeholder="주소"><br>
		<input type="text" id="adddetail" name="address" placeholder="상세주소">
		<input type="text" id="addextra" name="address" placeholder="참고항목">
		<br>
		<input id="birth" name="birth" type="text" placeholder="생년월일">
		<br>
	
	</div>
		<input type="submit" value="가입">
	
</div>
</body>
</html>