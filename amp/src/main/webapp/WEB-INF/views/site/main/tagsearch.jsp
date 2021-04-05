<%@page import="com.jj.vo.AcademyVo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%ArrayList<AcademyVo> list= (ArrayList<AcademyVo>)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 2021-02-27 김용민 검색창 태그 수정 추가해야함 -->
<style type="text/css">
/* 태그 */
.academytags {
  list-style: none;
  margin: 0;
  overflow: hidden; 
  padding: 0;
}

.academytags li {
  float: left; 
}

.academytag {
  background: #eee;
  border-radius: 3px 0 0 3px;
  color: #999;
  display: inline-block;
  height: 26px;
  line-height: 26px;
  padding: 0 20px 0 23px;
  position: relative;
  margin: 0 10px 10px 0;
  text-decoration: none;
  -webkit-transition: color 0.2s;
}

.academytag::before {
  background: #fff;
  border-radius: 10px;
  box-shadow: inset 0 1px rgba(0, 0, 0, 0.25);
  content: '';
  height: 6px;
  left: 10px;
  position: absolute;
  width: 6px;
  top: 10px;
}

.academytag::after {
  background: #fff;
  border-bottom: 13px solid transparent;
  border-left: 10px solid #eee;
  border-top: 13px solid transparent;
  content: '';
  position: absolute;
  right: 0;
  top: 0;
}

.academytag:hover {
  background-color: crimson;
  color: white;
}

.academytag:hover::after {
   border-left-color: crimson; 
}
</style>
</head>
<body>

<script src="http://code.jquery.com/jquery-latest.min.js"></script><script src="resources/JS/ajax/ajax.js"></script>
<script type="text/javascript">ajaxLoad('topBar?keyword=<%= request.getParameter("keyword")%>','#topBarDiv');</script><div id="topBarDiv"></div>
		
<%for(int i=0;i<list.size();i++){ %>
<ul class="academytags">
	<li><a href="academyMain?academyname=<%= list.get(i).getName()%>" class="academyname"><%= list.get(i).getName()%></a></li><br>
	<%String [] tags= list.get(i).getTag().split(",");%>
	<%for(int j=0;j<tags.length;j++){ %>
	<li><a href="tagSearch?keyword=<%=tags[j] %>" class="academytag"><%= tags[j]%></a></li>
	<%}%>
</ul>
<%}%>


</body>
</html>