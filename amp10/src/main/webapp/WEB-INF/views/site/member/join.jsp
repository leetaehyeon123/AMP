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

var id_check = false;				// 아이디
var pw_check = false;				// 비밀번호
var name_check = false;			// 이름
var email_check = false;			// 이메일
var addressnumber_check = false;	// 우편번호
var address_check = false;	// 상세주소
var birth_check = false;			// 생일


<%if(!platform.equals("normal")){%>/* 1 */	
	id_check = true;
	pw_check = true;
<%}else{%>
	<%if(isMember.equals("true")){%>/* 2 */
	name_check = true;
	email_check = true;
	addressnumber_check = true;
	address_check = true;
	birth_check = true;
	<%}else{%>/* 3 */
	<%}%>
<%}%>


/* 변수가 다true인지 혹인하는 메서드 */
function total_check(){
	if(id_check == true && name_check == true && pw_check == true &&email_check == true && birth_check == true &&addressnumber_check == true && address_check == true){
		alert('정상입력됨');
	$(".signupbtn").prop("disabled", false);
	}else{
	$(".signupbtn").prop("disabled", true);
	}
}
	
//아이디
$(function(){
	$("#id").keyup(function(){
		
		 if(ajaxDo('idCheck?id='+$('#id').val(),'')=='true'){
			$('#id_check').text('사용 가능한 아이디 :)');
			$('#id_check').css('color', 'green'); 
			id_check = true;
			

		}else{				 
			$('#id_check').text('사용 불가능한 아이디 :)');
			$('#id_check').css('color', 'red');
			id_check = false;
			
		}
		 total_check();
		}); 
	
	});
	//패스워드
$(function(){
	$(".pw").keyup(function(){
		
		var pw1=$("#pw1").val(); 
		var pw2=$("#pw2").val();
		
		if(pw1 != "" || pw2 != ""){ 
			if(pw1 == pw2){

				$('#pw_check').text('비밀번호가 일치합니다 :)');
				$('#pw_check').css('color', 'green'); 
				pw_check = true;
				
			}else{ 

					$('#pw_check').text('비밀번호가 일치하지 않습니다 :)');
					$('#pw_check').css('color', 'red'); 
					pw_check = false;
					
					} 
			}
		total_check();
	}); 
	
});
//이름
$(function(){
	$("#name").keyup(function(){
		var name = $("#name").val(); 
		
		if(name == ""){
			name_check = false;
		}else{				 
			name_check = true;
		}
		total_check();
	});
});
//이메일
$(function(){
	$("#email").keyup(function(){
		var email = $("#email").val(); 
		
		if(email == ""){
			email_check = false;
		}else{				 
			email_check = true;
		}
		total_check();

	});
});

$(function(){
	$("#addnumber").keyup(function(){
		var addnumber = $("#addnumber").val(); 
		
		if(addnumber == ""){
			addressnumber_check = false;
		}else{				 
			addressnumber_check = true;
		}
		total_check();

	});
});

$(function(){
	$("#address").keyup(function(){
		var address = $("#address").val(); 
		
		if(address == ""){
			address_check = false;
		}else{				 
			address_check = true;
		}
		total_check();

	});
});


//생년월일
$(function(){
$('#user_birth').keyup(function(){
	var dateStr = $(this).val();		
   var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
   var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
   var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
   var today = new Date(); // 날짜 변수 선언
   var yearNow = today.getFullYear(); // 올해 연도 가져옴
	
   if (dateStr.length <=8) {
	    if (1900 > year || year > yearNow){
	    	$('#birth_check').text('생년월일을 확인해주세요 :)');
			$('#birth_check').css('color', 'red');
			birth_check = false;
		
			
	    }else if (month < 1 || month > 12) {
	    	$('#birth_check').text('생년월일을 확인해주세요 :)');
			$('#birth_check').css('color', 'red'); 
			birth_check = false;
			
			
	    }else if (day < 1 || day > 31) {
	    	$('#birth_check').text('생년월일을 확인해주세요 :)');
			$('#birth_check').css('color', 'red'); 
			birth_check = false;
		
			
	    }else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
	    	$('#birth_check').text('생년월일을 확인해주세요 :)');
			$('#birth_check').css('color', 'red'); 
			birth_check = false;
		
			
	    }else if (month == 2) {
	    	 
	       	var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
	       	
	     	if (day>29 || (day==29 && !isleap)) {
	     		$('#birth_check').text('생년월일을 확인해주세요 :)');
				$('#birth_check').css('color', 'red'); 
				birth_check = false;
			
				
			}else{
				$('#birth_check').text('');
				birth_check = true;
			
			}// (day>29 || (day==29 && !isleap))
	     	
	    }else{
	    	$('#birth_check').text(''); 
	    	birth_check = true;
	    	
		}
		
		}else{
			//1.입력된 생년월일이 8자 초과할때 :  auth:false
			$('#birth_check').text('생년월일을 확인해주세요 :)');
			$('#birth_check').css('color', 'red'); 
			birth_check = false;
			
		}
   total_check();
	});
});





	
	

</script>
</head>

<body>
<div>
	<div id="div1">
		<input id="id" name="id" type="text" placeholder="ID">
		<div class="check_font" id="id_check"></div>
		<input class="pw" id="pw1" name="pw" type="text" placeholder="PW"> 
		<br>
		<input class="pw" id="pw2" type="text" placeholder="PW 확인">
		<div class="check_font" id="pw_check"></div>
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
		<input type="text" id="addextra" name="address" placeholder="참고항목"><br>
		<!-- <input type="text" id="birth" name="birth" placeholder="생년월일(YYYYMMDD)"><br> -->
		<div class="form-group required">
				<input type="text" class="form-control" id="user_birth" name="user_birth" placeholder="생년월일 (YYYYMMDD)">
				<div class="check_font" id="birth_check"></div>
		</div>
	
	</div>
		<input type="submit" class="signupbtn" disabled="disabled" value="가입">
</div>

</body>
</html>