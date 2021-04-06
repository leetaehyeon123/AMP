<%@page import="com.jj.vo.MessageVo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%ArrayList<MessageVo> list =(ArrayList<MessageVo>)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript">

	$('.room_div').css('backgroundColor', 'white');
	 
		function onMessageRoom(roomId){
			<%if(list.size()!=0){%>
				<%for(int i=0;i< list.size();i++){%>

						if(roomId=='<%=list.get(i).getRoom_idx()%>'){

								
								reflashRoom();
							}
					<%}%>

			<%}%>
		}
	
				
	</script>
</head>
<body>
			
			<div id="left_div">
				<%if(list.size()!=0) {%>
					<script type="text/javascript">
					$('.room_div').css('backgroundColor', 'white');
						if(room_click==null){
							reflashMessage(<%=list.get(0).getRoom_idx()%>);
							room_click=	<%=list.get(0).getRoom_idx()%>;
							
							   
						}
															
						$('#room'+room_click).css('backgroundColor', '#99cc00');
					</script>
				<%}%>
				<%int count=0; %>
				<%for(int i=0;i<list.size();i++){ %>
					<div class="room_div" id='room<%=list.get(i).getRoom_idx()%>' onclick='room_click=<%=list.get(i).getRoom_idx()%>;reflashMessage(<%=list.get(i).getRoom_idx()%>);'>
					
					 <div style="width:100%;overflow:hidden;text-overflow:ellipsis; white-space:nowrap;">
						 방제목 : <%=list.get(i).getRoom_title()%> 
					 </div>

					 <div style="width:100%;overflow:hidden;text-overflow:ellipsis; white-space:nowrap;"><%=list.get(i).getName()%> : <%=list.get(i).getCon()%></div>
					 
					 (<%=list.get(i).getDate()%>)<%=(count=list.get(i).getView_count())==0?"":"<span style='color:red'> | "+count+" | </span>" %>
					 </div>
				<%}%>
				
				
				
			</div>
		
</body>
</html>