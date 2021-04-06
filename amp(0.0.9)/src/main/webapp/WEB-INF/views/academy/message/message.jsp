<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet"><!-- 큰화면 css -->
<style type="text/css">
	#message_container{
	display:flex; flex-direction: row;
	width: 98%;
	margin:5px auto;
	height: 800px;
	}
		#left_container{
		border:1px black solid;
		width:250px;
		height: 100%;
		float: left;
		 
		}
			#left_top{
			width: 100%;
			height: 90px;
			border-bottom:1px solid black; 
			}
			
				#write_div{
				width: 70px;
				border:1px solid black;
				height: 99%;
				float:left;
				text-align: center;
				
				}
				#write_div:hover{
				cursor: pointer;
				}
				#class_combo_div{
				text-align: center;
				float:left;
				width:140px;
				}
					#class_combo{
					width: 100px;
					}
			#left_div{
			width: 100%;
			height:705px;
		
			overflow-x:hidden;
			overflow-y:scroll;

			
			}
				.room_div{
				border-bottom:1px solid black;
				width:100%;
				height: 100px;
				}
			
					
		#right_container{
		
		width:100%;
		height:100%;
		float: left;
		flex: 1;
		}
			#right_top{
			border:1px solid black;
			width: 100%;
			height:90px;
			}
			#message_div{
			width: 100%;
			border:1px solid black;
			height:705px;
			}
				
				.message_div{
			
				border: 1px solid black;
				max-width: 40%;

			
				}
				.message_line{
			
				width: 100%;
				padding:  10px;
				}
				.message_span{
				font-size: 30px;
				}
				
				#message_right{
				float:right;
				border: 1px solid blue;
				}
				
				
				/*  */		
  .chat-history {

    overflow-y: scroll;
    height: 620px;

    padding: 15px;
    background-color: #f7faff;
 
    
  }
    .message-data {
      margin-bottom: 15px;
    }
    .message-data-name{
    color: black;
    }
    .message-data-time {
      color:gray;

    }

    
    .message {      
      padding: 18px 20px;
      line-height: 26px;
      font-size: 16px;
      border-radius: 7px;
      margin-bottom: 30px;
      word-break:break-all;
      white-space:normal;
      max-width: 60%;


    }
    
    .my-message {
       
          background: #86BB71;
  
    }
    
    .other-message {
   
          background: #94C2ED;
    }


.align-left {
  text-align: left;
}

.align-right {
  text-align: right;
}

.float-right {
  float: right;
}
.float-left{
	float:left;
}
.clearfix:after {
	visibility: hidden;
	display: block;
	font-size: 0;
	content: " ";
	clear: both;
	height: 0;

}
li{ list-style-type : none }
#chat_input_div{
width: 100%; border:1px solid black; height: 55px; text-align: center;
}

				
				/*  */
				
		#modal{
		width: 100%; height: 100vh; background-color:black; background-color: rgba(0,0,0,0.5); position: absolute; top: 0 ; left:0;visibility:hidden;display: grid; place-items:center;
		
		}
		#write_member{
		width:99%; height: 350px;border: 1px solid black;margin:auto;
		}
		#write_button{
		
		width: 100%;text-align: center;
		}
		#chat_input_div{
		display: grid; place-items:center;
		}


</style>
</head>
<body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script><script src="resources/JS/ajax/ajax.js"></script>
<div id="topBarDiv"></div><script type="text/javascript">ajaxDo('topBar','#topBarDiv');</script>

	<div id="message_container" >
	
		<div id="left_container">
	
		</div>
		<div id="right_container">
			
			
		
			
		</div>
	
	
	</div>
	
	
	
	
	<div id="modal"  style=""> 
		
		<div style="width: 400px; height: 500px;  background-color: white;">
		 	맴버선택<br><br>
		 	수강중인 과목
		 		<select id="write_class_combo" name="class">
						<option>수학</option>
						<option>과학</option>
						<option>영어</option>
				</select>
					
					<div id='write_member' style="" >
					
					</div>
		 		<div id="write_button" style=""><input class="close" type="button" value="취소"> <input class="close" type="button" value="작성"></div>
		</div>
	</div>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="resources/JS/ajax/ajax.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
	
<script type="text/javascript">

//웹소켓 연결부
let sock = new SockJS("echo");/* 웹소켓 객체생성 (생성자에 만들어둔 Echohandler클래스의 매핑 url을 작성)*/

reflashRoom();
function reflashRoom(){
	ajaxDo("message_room","#left_container");
}

function reflashMessage(idx){
	ajaxDo("message_kit?roomId="+idx,"#right_container");
}





		 	$('#write_div').click(function(){
			 	
					$('#modal').css("visibility","visible");
			 	});
		$('.close').click(function(){
					$('#modal').css("visibility","hidden");
			 	});

	 	
</script>

</body>
</html>