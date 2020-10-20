<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vo.mem_Animal"%>
<%@ page import="dao.mem_AnimalDAO"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<fmt:requestEncoding value="UTF-8" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 동물 목록</title>
</head>


<body>

 <div class="card shadow mb-4"> 	
   		<div class="mem_list">
      		<br><h2 class="h3 mb-2 text-gray-800">반려동물 보기</h2>
   		</div>
   	    <p class="mem_list2">
      		<a href="${pageContext.request.contextPath }/animalMemberJoin.am">반려동물 추가 하기</a>
   		</p><br>
     	
		<form action="animalMemberModifyAction.am" name="modform" method="post">
<c:forEach var="alist" items="${list }">			
			<table class="table1 table-bordered" id="dataTable" cellspacing="0" align="center">		
					 
	 			<tr align="center"><td width=200px;>항목</td><td width=200px;>내용</td><td width=200px;>수정</td></tr>
				<tr>
				<td><b>반려동물 ID</b></td><td> ${alist.animal_ID }</td><td><input type="hidden" name="Animal_ID" value="${alist.animal_ID}"></td>
				</tr>
				<tr>	
				<td><b>반려동물 이름</b></td><td> ${alist.animal_name }</td><td><input type="text" name="Animal_name" value="${alist.animal_name}"></td>
				</tr>
				<tr>
				<td><b>종류</b></td><td> ${alist.kind }</td><td><input type="text" name="Kind" value="${alist.kind }"></td>
				</tr>
				<tr>
				<td><b>생일</b></td><td> ${alist.birthday }</td><td><input type="text" name="Birthday" value="${alist.birthday}"></td>
				</tr>
				<tr>
				<td><b>특이사항</b></td><td>${alist.etc }</td><td><input type="text" name="Etc" value="${alist.etc }"></td>
				</tr>
					
			</table><br>
</c:forEach>		
			<br>
			<table class="table1" align="center">
				<tr>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="javascript:history.back()" style="color:skyblue">돌아가기</a></button></td>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="javascript:modform.submit()" style="color:skyblue">수정하기</a></button></td>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="${pageContext.request.contextPath }/AnimalMemberDeleteAction.ani?id=${list.get(0).animal_ID }" style="color:skyblue">삭제</a></button></td>		
				</tr>
			</table>
			<br>		
		</form>
	</div>

	<!-- footer -->
	<jsp:include page="/footer_ad.jsp"></jsp:include>
	<!-- END footer -->

</body>
</html>
