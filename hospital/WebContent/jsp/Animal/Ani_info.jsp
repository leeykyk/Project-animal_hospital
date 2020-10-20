<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   

  <fmt:requestEncoding value="UTF-8"/>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>  
</head>

<body>   

<div class="card shadow mb-4"> 	
   		<div class="mem_list">
      		<br><h2 class="h3 mb-2 text-gray-800">${animal.animal_ID} 님의 상세정보 님의 상세정보</h2><br>
   		</div>
   	      	
		<form action="animalModifyAction.ani" name="modform" method="post">
				
			<table class="table1 table-bordered" id="dataTable" cellspacing="0" align="center">
		 
	 			<tr align="center"><td width=200px;>항목</td><td width=200px;>내용</td><td>수정</td></tr>

				<tr>
					<td>반려동물 ID</td><td> ${animal.animal_ID }</td><td><input type="hidden" name="animal_ID" value="${animal.animal_ID}"></td>
				</tr>
				<tr>	
					<td>종류</td><td> ${animal.kind }</td><td><input type="text" name="kind" value="${animal.kind }"></td>
				</tr>
				<tr>	
					<td>특이사항 </td><td> ${animal.etc }</td><td><input type="text" name="etc" value="${animal.etc }"></td>			
				</tr>
		</table>
			<br>
			<table class="table1" align="center">
				<tr>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="javascript:history.back()" style="color:skyblue">돌아가기</a></button></td>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="javascript:modform.submit()" style="color:skyblue">수정하기</a></button></td>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="${pageContext.request.contextPath }/AnimalDeleteAction.ani?id=${animal.animal_ID }" style="color:skyblue">삭제</a></button></td>		
				</tr>
			</table>
			<br>		
		</form>
	</div>
				
<!-- footer -->
<jsp:include page="/footer_cos.jsp"></jsp:include>
<!-- END footer -->

</body>
</html>
