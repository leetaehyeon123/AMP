<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 2021-02-27 김용민 검색창 태그 수정 추가해야함 -->
<style type="text/css">
/* 검색창 */
.search {
    position: relative;
    text-align: center;
    width: 400px;
    margin: 0 auto;
}

input {
    width: 100%;
    border: 1px solid #bbb;
    margin: 10px 0;
    padding: 10px 12px;
}

.fa-search {
    position: absolute;
    left: 390px;
    top: 20px;
    margin: 0;
}
/* 태그 */
body {
  font: 12px/1.5 'PT Sans', serif;
  margin: 25px;
}

.tags {
  list-style: none;
  margin: 0;
  overflow: hidden; 
  padding: 0;
}

.tags li {
  float: left; 
}

.tag {
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

.tag::before {
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

.tag::after {
  background: #fff;
  border-bottom: 13px solid transparent;
  border-left: 10px solid #eee;
  border-top: 13px solid transparent;
  content: '';
  position: absolute;
  right: 0;
  top: 0;
}

.tag:hover {
  background-color: crimson;
  color: white;
}

.tag:hover::after {
   border-left-color: crimson; 
}
</style>
</head>
<body>
	<!-- 검색창 -->
	<script src="https://kit.fontawesome.com/8eb5905426.js" crossorigin="anonymous"></script>
    <div class="search">
    	<i class="fas fa-search"></i>
    	<input type="text">
    </div>
	
	<!-- 태그 -->
	<h1>ㄱ</h1>
	
	<h2>가 용민 영어학원</h2>
	<ul class="tags">
	  <li><a href="#" class="tag">입시/보습</a></li>
	  <li><a href="#" class="tag">외국어</a></li>
	  <li><a href="#" class="tag">성인</a></li>
	 </ul>
	
	<h2>가 용민 수학학원</h2>
		<a href="#" class="tag">입시/보습</a>
</body>
</html>