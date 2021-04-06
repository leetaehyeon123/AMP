<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>아이디&비밀번호 찾기</title>
	<style type="text/css">
		.find_title{
			margin: 19px 0 8px;
		}
		
		.name{
			border: 1px solid #ccc;
	    	font-size: 15px;
	  	  	color: #555;
	   	 	height: 35px;
	    	box-sizing: border-box;
	   	 	padding: 10px;
	    	line-height: 1;
	    	margin-bottom: 0;
		}
		
		.phone_number{
			border: 1px solid #ccc;
	    	font-size: 15px;
	  	  	color: #555;
	   	 	height: 35px;
	    	box-sizing: border-box;
	   	 	padding: 10px;
	    	line-height: 1;
	    	margin-bottom: 0;
		}
		
		.code{
			border: 1px solid #ccc;
	    	font-size: 15px;
	  	  	color: #555;
	   	 	height: 35px;
	    	box-sizing: border-box;
	   	 	padding: 10px;
	    	line-height: 1;
	    	margin-bottom: 0;
		}
		
		.find_title{
			display: block;
		    font-size: 20px;
		    font-weight: normal;
		    line-height: 1;
		    margin-bottom: 20px;
		    color: #eee;
		}
		
		body{
			background-color: #2c3338;
		}
		
		.pw_find_id{
			border: 1px solid #ccc;
	    	font-size: 15px;
	  	  	color: #555;
	   	 	height: 35px;
	    	box-sizing: border-box;
	   	 	padding: 10px;
	    	line-height: 1;
	    	margin-bottom: 0;
		}
		
		.pw_find_name{
			border: 1px solid #ccc;
	    	font-size: 15px;
	  	  	color: #555;
	   	 	height: 35px;
	    	box-sizing: border-box;
	   	 	padding: 10px;
	    	line-height: 1;
	    	margin-bottom: 0;
		}
		
		.pw_find_email{
			border: 1px solid #ccc;
	    	font-size: 15px;
	  	  	color: #555;
	   	 	height: 35px;
	    	box-sizing: border-box;
	   	 	padding: 10px;
	    	line-height: 1;
	    	margin-bottom: 0;
		}
		
		.phone_check{
			height: 40px;
			background-color: #ea4c88;
			color: #eee;
			font-weight: 700;
			border-radius : 5px;
			 border: 0;
			 
			 cursor: pointer;
			 
			/* background-image: none; */
		    /* margin: 0; */
		    /* outline: 0; */
		    /* padding: 0; */
		    /* transition: background-color 0.3s; */
		}
		.phone_check:hover{
			background-color: #d44179;
			
			-webkit-transition: all 0.2s ease-in-out; 
			-moz-transition: all 0.2s ease-in-out; 
			-o-transition: all 0.2s ease-in-out; 
			transition: all 0.2s ease-in-out;

		}
		
		.check_code{
			height: 40px;
			background-color: #ea4c88;
			color: #eee;
			font-weight: 700;
			border-radius : 5px;
			 border: 0;
			 
			 cursor: pointer;
			 
			 
		}
		.check_code:hover{
		background-color: #d44179;
			
			-webkit-transition: all 0.2s ease-in-out; 
			-moz-transition: all 0.2s ease-in-out; 
			-o-transition: all 0.2s ease-in-out; 
			transition: all 0.2s ease-in-out;
		}
		
		
		.send_email{
			height: 40px;
			background-color: #ea4c88;
			color: #eee;
			font-weight: 700;
			border-radius : 5px;
			 border: 0;
			 
			 cursor: pointer;
		}
		.send_email:hover{
			background-color: #d44179;
			
			-webkit-transition: all 0.2s ease-in-out; 
			-moz-transition: all 0.2s ease-in-out; 
			-o-transition: all 0.2s ease-in-out; 
			transition: all 0.2s ease-in-out;
		}

			
    		
		}
	</style>
	
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="resources/JS/ajax/ajax.js"></script>
	<script type="text/javascript">
		function send_phone(url) { //url = smsPage.do
			
			if($('#phone_number').val().trim() == "")
			{
				alert("번호를 입력해주세요.");
				$('#phone_number').val('');
				$('#phone_number').focus();
			}else{
					
				var phone=$('#phone_number').val();
				var phoneCheck = /^01(0)(\d{4})\d{4}$/;
					
				if(phoneCheck.test(phone)){
					alert("ok");
					$('#code').focus();
						
					url=url+'?to='+$('#phone_number').val(); // smsPage.do?to=01012345678
					ajaxDo(url,'');
					$("#phone").attr("readonly",true);
				}else{
						alert("핸드폰 번호를 바르게 입력해주세요");
						$('#phone_number').attr("readonly",false);
						$('#phone_number').val();
						$('#phone_number').focus();
					}
					
				}
		}
		
		
		function checkcode(url) { // smsIsCode.do?code=1234
			
			url = url+"?code="+$('#code').val().trim();
			
			if($('#code').val().trim() == ""){
				
				alert("인증번호를 입력해주세요");
				$('#code').focus();
				
			}else{
				if(ajaxDo(url,'')=='true'){
					alert("인증이 완료되었습니다");
					$('#check_code').attr("disabled",true);
					<% session.removeAttribute("code"); %>
					
					var find_id_clear = ajaxDo('findid.do?phone='+$("#phone_number").val().trim()+'&name='+$("#name").val().trim(),'');
					
					if(find_id_clear != "false"){	
						var name = $('#name').val().trim();
						$('#findidclear').text(name+ "님의 아이디는" + "'" +find_id_clear + "'" + "입니다!");
						
					}else if(find_id_clear == "false"){
						alert("데이터와 일치하는 ID가 없습니다. 회원가입을 해주세요");
					}
					
					
				}else{
					alert("번호를 잘못 입력하셨습니다.");
					$('#code').focus();
					$('#code').val('');
				}
			}
		
			
			
			
		}
	</script>
</head>

<body style="height: 100vh;display:flex; flex-direction: column;" >


<script src="http://code.jquery.com/jquery-latest.min.js"></script><script src="resources/JS/ajax/ajax.js"></script>
<script type="text/javascript">ajaxLoad('topBar','#topBarDiv');</script><div id="topBarDiv"></div>
	
	<div style=" display: grid;
  place-items: center; height: 100%; flex: 1;">
		<div style="border: 1px solid black; padding: 30px">
			
			<form action="" method="get">
				<div class="row_gruop" style="border: 1px solid blue; margin-bottom: 30px">
					<p class="find_title">아이디찾기</p>
					
					<div class="name_container">
						<h3 class="find_title">
							<label>이름</label>
						</h3>
						<span>
							<input type="text" id="name" class="name" placeholder="이름">
						</span>
					</div>
					
					<div class="phone_number_container">
						<h3 class="find_title">
							<label>핸드폰번호</label>
						</h3>
						<span>
							<input type="text" id="phone_number" class="phone_number" placeholder="핸드폰번호(-제외)">
							<input type="button" id="phone_check" class="phone_check" value="번호 전송" onclick="send_phone('smsPage.do')">
						</span>
					</div>
					
					<div class="code_container">
						<h3 class="find_title">
							<label>인증번호</label>
						</h3>
						<span>
							<input type="text" id="code" class="code" placeholder="인증번호">
							<input type="button" id="check_code" class="check_code" value="인증하기" onclick="checkcode('smsIsCode.do')">
						</span>					
					</div>
					
					<div class="find_id_container" style="margin-top: 20px">
						<label style="color: #eee;" id="findidclear" class="findidclear">ID가 나올 영역</label>
					</div>
					
				</div>
			</form>
			
			
			<div class="row_gruop" style="border: 1px solid blue;">
				<p class="find_title">비밀번호 찾기</p>
				
				<div>
					<h3 class="find_title">
						<label>아이디</label>
					</h3>
					
					<span>
						<input type="text" id="pw_find_id" class="pw_find_id" placeholder="아이디" />
					</span>
				</div>
				
				<div>
					<h3 class="find_title">
						<lable>이메일</lable>
					</h3>
					<span>
						<input type="text" id="pw_find_email" class="pw_find_email" placeholder="이메일입력" />
						<input type="button" id="send_email" class="send_email" value="전송하기" onclick />
					</span>
				</div>
				
				
			</div>
			
		</div>
	</div>
</body>
</html>