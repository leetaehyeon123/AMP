<%@page import="com.jj.vo.ClassVo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%   
 ArrayList<ClassVo> classlist=(ArrayList<ClassVo>)request.getAttribute("classlist");	
 ArrayList<ClassVo> resultnamelist=(ArrayList<ClassVo>)request.getAttribute("resultnamelist");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청</title>
<link rel="stylesheet" href="resources/CSS/academy/main/main_banner.css" type="text/css">
<style type="text/css">

	#registration_container{
	display: grid; place-items:center;
	width: 100%; height: 100vh;
	}
	#registration_div{
	border:1px solid black;
	width: 600px;
	padding : 30px;
	text-align: center;
	}
	
	#btn_course{
		margin-top: 10px;
		display: flex;
		justify-content: center;
	}
	#btn_course1{ 
		border-top-radius: 5px; 
		border-bottom-radius: 5px;
	} 
	#btn_course button{ 
		border: 1px solid black; 
		background-color: rgba(0,0,0,0); 
		color: black; 
		padding: 5px; 
	} 
	#btn_course button:hover{ 
		color: red; 
		background-color: yellow; 
	}
</style>
</head>
<body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script><script src="resources/JS/ajax/ajax.js"></script>
<script type="text/javascript">
function setTime(value){

	/* $('.time_list').CSS('display','none');
	$('#'+value).CSS('display','block'); */
	$('.time_list').hide();
	$('#time'+value).show();
	
	$("#name").on("change", function(){
		// OR option 순서값으로 선택
		$("#price").find("option:eq(0)").prop("selected", true);
	});
}

function setPrice(value){
	 $('.price_list').hide();
		$('#price'+value).show();
}
</script>

<script type="text/javascript">ajaxLoad('academyMain_topBar?academyidx=<%=request.getParameter("academyidx") %>','#academyMain_topBarDiv');</script><div id="academyMain_topBarDiv"></div>
	<div id="registration_container">
		<div id="registration_div">
			<h2>수강신청</h2>
			수강희망 과목
			<select class="name_option" id='name' onchange='setTime(this.value)'>
			<option value="">옵션을 선택해주세요.</option>
			<%for(int i=0; i<resultnamelist.size(); i++){ %>
				<option value='<%=resultnamelist.get(i).getIdx()%>'><%= resultnamelist.get(i).getName() %></option>
				<%} %>
			</select>
			<br>
			<br>
			수강시간
			<select name="time_option" id='price' onchange="setPrice(this.value)">
			<option value="" >옵션을 선택해주세요.</option>
				<%for(int i=0; i<resultnamelist.size(); i++){ %>
				<option style="display:none;" class='time_list' id='time<%=resultnamelist.get(i).getIdx()%>' value='<%=resultnamelist.get(i).getIdx()%>'><%= resultnamelist.get(i).getTime() %></option>
				<%} %>
			</select>
			<br>
			<br>
			<div class="price">수강료
				<%for(int i=0; i<resultnamelist.size(); i++){ %>
				<span class="price_list" style='display:none;'  id='price<%=resultnamelist.get(i).getIdx()%>'><%= resultnamelist.get(i).getPrice() %></span>
				<%} %>
			</div>
			<br>
			<div class="sale">할인 코드
				<input type ="text">
			</div>
			<br>
			<div id="btn_course"> 
				<button id="btn_course1">수강신청</button> 
			</div>
		</div>
	</div>
</body>
</html>