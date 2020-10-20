<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="vo.Animal"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동물병원예약사이트</title>
   </head>

<body>


<section id="listForm">
<h2>${animal.kind }의 상세정보</h2>

	<section id="content_main">
		<section id="content_left">
			<img src="images/${animal.image }"/>
		</section>
		<section id="content_right">
			<b>종류 : </b> ${animal.kind }<br>
			<b>진료명 : </b> ${animal.subject }<br>
			<b>가격 : </b> ${animal.price }<br>
			<p id="desc">
			<b>내용 : </b> ${animal.content }<br>
			</p>
		</section>
		<div style="clear:both"></div>
		<nav id="commandList">
			<a href="animalList.ani">다른진료보기</a>
			<a href="animalCartAdd.ani?id=${animal.id }">진료선택하기</a>
		</nav>
	</section>
	
</section>







  <!-- footer -->
<jsp:include page="/footer_cos.jsp"></jsp:include>
<!-- END footer -->

</body>
</html>

