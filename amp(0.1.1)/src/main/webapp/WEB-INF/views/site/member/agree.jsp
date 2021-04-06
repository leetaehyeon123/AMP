<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>약관 동의</title>
	
	<script type="text/javascript">
	function agree_check(){

		var agree = document.getElementsByName("agree");
		
		
		if(agree[0].checked){
			alert("체크완료");
				return true;
			}
		else{
				alert("동의에 체크해주세요");
				return false;
			}
					
	}
		
</script>
	
	<style type="text/css">
		.agree_container{
		width: 750px;
		margin:20px auto;
		}
		
		.agree_div{
		border: 1px solid black;
		margin:auto;
		overflow: scroll;
		width: 700px;
		height: 300px;
	}
	.test td{
		border: solid 1px black;
	}
	</style>
	
</head>
<body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script><script src="resources/JS/ajax/ajax.js"></script>
<script type="text/javascript">ajaxLoad('topBar','#topBarDiv');</script><div id="topBarDiv"></div>

<h2 style="text-align: center;">약관동의페이지</h2>
	<form name="f" action="phone" method="post" onsubmit="return agree_check()">
		<div style="border: solid 1px black; display: grid; place-items: center;">
			<table class="test">
				<td style="background-color: yellow;">1.약관동의</td>
				<td>2.번호인증</td>
				<td>3.회원가입</td>
			</table>
			<div class="agree_container">
				<div>
					<div class="agree_div">
						<p>약관동의 내용 페이지1111111111111111111111111111111111111111</p>
					</div>
					<input id="agree1" class="agree" type="checkbox" name="agree" style="margin-left: 25px">
					<label for="agree1" style="cursor: pointer;"><span class="agree_span">내용을 확인하였으며,동의합니다.</span></label>
					<input type="hidden" name="platform" value='<%=request.getAttribute("platform")%>'>
					<input type="hidden" name="email" value='<%=request.getAttribute("email")%>'>
					<br>
				</div>
			</div>
			
			<input type="submit" value="다음">
		</div>
	</form>
</body>
</html>