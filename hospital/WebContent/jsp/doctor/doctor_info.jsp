<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="vo.Doctor"%>
<%@ page import="dao.DoctorDAO"%>
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
      		<br><h2 class="h3 mb-2 text-gray-800">${doctor.doctor_ID} 님의 상세정보 님의 상세정보</h2><br>
   		</div>
   	      	
		<form action="doctorModifyAction.doc" name="modform" method="post">
				
			<table class="table1 table-bordered" id="dataTable" cellspacing="0" align="center">
		 
	 			<tr align="center"><td width=200px;>항목</td><td width=200px;>내용</td><td>수정</td></tr>
	
				<tr>
					<td><b>아이디 </b></td><td> ${doctor.doctor_ID }</td><td><input type="hidden" name="doctor_ID" value="${doctor.doctor_ID}"></td>
				</tr>
				<tr>	
					<td><b>이름 </b></td><td> ${doctor.name }</td><td><input type="text" name="doctor_name" value="${doctor.name }"></td>
				</tr>
				<tr>
					<td><b>비밀번호</b></td><td> ${doctor.doctor_pass }</td><td><input type="text" name="doctor_pass" value="${doctor.doctor_pass }"></td>
				</tr>
				<tr>
					<td><b>직급</b></td><td> ${doctor.job  }</td><td><input type="text" name="job" value="${doctor.job }"></td>
				</tr>
				<tr>	
					<td><b>학력</b></td><td>${doctor.school }</td><td><input type="text" name="school" value="${doctor.school }"></td>
				</tr>
				<tr>	
					<td><b>경력</b></td><td>${doctor.career }</td><td><input type="text" name="career" value="${doctor.career }"></td>
				</tr>
				<tr>	
					<td><b>사진 </b></td><td> ${doctor.image }</td><td><input type="file" name="image" value="${doctor.image }"></td>
				</tr>
				
			</table>
			<br>
			<table class="table1" align="center">
				<tr>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="javascript:history.back()" style="color:skyblue">돌아가기</a></button></td>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="javascript:modform.submit()" style="color:skyblue">수정하기</a></button></td>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="${pageContext.request.contextPath }/doctorDeleteAction.doc?id=${doctor.doctor_ID }" style="color:skyblue">삭제</a></button></td>		
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
