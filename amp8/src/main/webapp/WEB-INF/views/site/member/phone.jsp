<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="resources/JS/ajax/ajax.js"></script>
	<script type="text/javascript">
	<%if(request.getParameter("platform")==null){
		response.sendRedirect("/amp/login");
		}
	%>
	
		function send(url){
		
				if($('#phone').val().trim() == "")
				{
					alert("번호를 입력해주세요");
					$('#phone').val('');
					$('#phone').focus();
				}else{
					
					var phone = $('#phone').val();
					var phoneCheck = /^01(0)(\d{4})\d{4}$/;
					
					if(phoneCheck.test(phone)){
						alert("ok");
						$('#code').focus();
						
						url=url+'?to='+$('#phone').val();
						ajaxDo(url,'');
						$("#phone").attr("readonly" ,"readonly");
					}else{
						alert("핸드폰 번호를 바르게 입력해주세요");
						$('#phone').attr("readonly",false);
						$('#phone').val('');
						$('#phone').focus();
					}					
				}
			
			}
		
		function checkCode(url){
				url=url+"?code="+$('#code').val();

				if(ajaxDo(url,'#checkCode')=='true'){/* 코드확인 */
				
					
						if(<%=request.getParameter("platform")!=null&&!request.getParameter("platform").equals("normal")%>){/* api */
							alert("api");
						
								if(ajaxDo('isMember?phone='+$('#phone').val(),'')=='true'){/* 있다면 */
										location.href='join.do?platform='+$('#platform').val()+'&apiEmail='+$('#apiEmail').val()+'&phone='+$('#phone').val();
									}else{/* 없다면 */
										ajaxDo('join?platform=api&isMember=false','#join_ajax');
									}
						
							}else{/* 일반 */
								alert("일반");

								
								if(ajaxDo('isMember?phone='+$('#phone').val(),'')=='true'){/* 있다면 */
									ajaxDo('join?platform='+$('#platform').val()+'&isMember=true','#join_ajax');
								}else if(ajaxDo('isMember?phone='+$('#phone').val(),'')=='false'){/* 없다면 */
									ajaxDo('join?platform='+$('#platform').val()+'&isMember=false','#join_ajax');
								}else if(ajaxDo('isMember?phone='+$('#phone').val(),'')=='ajm'){
									alert("이미 가입된 회원입니다.");
									$('#phone').attr("readonly",false);
									$('#phone').val('');
									$('#code').val('');
								}
							}
		
					
				}else{
					alert("코드 잘못 입력");

					}
			
								
			}
	
		function idCheck(){
			
			if(ajaxDo('idCheck?id='+$('#id').val(),'')=='false'){
					alert("사용불가능");
				}else{
				
					$("#id").attr("readonly" ,"readonly");
					alert("사용가능");
				}
		}

		function userinfocheck(){

			
		/* 	if($('#id').val() == ''){
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
			}	 */	
			return true;
			
		};
			
		
		 
		function addnumberSearch() {
        new daum.Postcode({

            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('addnumber').value = data.zonecode;
                document.getElementById("address").value = roadAddr;
                /* document.getElementById("sample4_jibunAddress").value = data.jibunAddress; */
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("addextra").value = extraRoadAddr;
                } else {
                    document.getElementById("addextra").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } /* else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } */ else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }

        }).open();
    }
	
		 
		 /* 2021-03-02 */
	</script>
</head>
<body>

<script src="http://code.jquery.com/jquery-latest.min.js"></script><script src="resources/JS/ajax/ajax.js"></script>
<script type="text/javascript">ajaxLoad('topBar','#topBarDiv');</script><div id="topBarDiv"></div>


	<h2 style="text-align: center;">번호인증페이지</h2>

	<div style="border: solid 1px black; display: grid; place-items: center;">
		<table class="test">
			<td>1.약관동의</td>
			<td style="background-color: yellow;">2.번호인증</td>
			<td>3.회원가입</td>
		</table>
				<div class="phone_div">
			<form id='phone_form' action="join.do" method="get" onsubmit="return userinfocheck()"> <!-- 2021-02-24 김용민 -->
				<input id='platform' name='platform' type="hidden" value='<%=request.getParameter("platform") %>' > 
				<input id='apiEmail' name='apiEmail' type="hidden" value='<%=request.getParameter("email") %>'>
				<input name="phone" type="text" id="phone" placeholder="휴대폰번호">
				<input type="button" value="인증번호 전송" onclick="send('smsPage.do')"><br>
				<input type="text" id="code" placeholder="인증번호">
				<input type="button" value="확인" onclick="checkCode('smsIsCode.do')">
						<div id="join_ajax"></div>		
			</form>
		</div>
	</div>


	

	
</body>
</html>