<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="vo.MemberBean"%>
<%@ page import="dao.MemberDAO"%>
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
      		<br><h2 class="h3 mb-2 text-gray-800">${member.member_ID} 님의 상세정보</h2><br>
   		</div>
   	      	
		<form action="memberModifyAction.me" name="modform" method="post">
				
			<table class="table1 table-bordered" id="dataTable" cellspacing="0" align="center">
		 
	 			<tr align="center"><td width=200px;>항목</td><td width=200px;>내용</td><td>수정</td></tr>
	
				<tr>
					<td><b>아이디 </b></td><td> ${member.member_ID }</td><td><input type="hidden" name="member_ID" value="${member.member_ID}"></td>
				</tr>
				<tr>	
					<td><b>이름 </b></td><td> ${member.member_name }</td><td><input type="text" name="member_name" value="${member.member_name }"></td>
				</tr>
				<tr>
					<td><b>비밀번호</b></td><td> ${member.pass }</td><td><input type="text" name="pass" value="${member.pass }"></td>
				</tr>
				<tr>
					<td><b>주소</b></td><td> ${member.addr }</td><td><input type="text" name="addr" value="${member.addr }"></td>
				</tr>
				<tr>	
					<td><b>연락처</b></td><td>${member.phone }</td><td><input type="text" name="phone" value="${member.phone }"></td>
				</tr>
				<tr>	
					<td><b>가입일</b></td><td> ${member.date }</td><td></td>
				</tr>
				<tr>	
					<td><b>비고</b></td><td>${member.etc }</td><td><input type="text" name="etc" value="${member.etc }"></td>
				</tr>
				<tr>	
					<td><b>등급 </b></td><td> ${member.grade }</td><td><input type="text" name="grade" value="${member.grade }"></td>
				</tr>
				
			</table>
			<br>
			<table class="table1" align="center">
				<tr>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="javascript:history.back()" style="color:skyblue">돌아가기</a></button></td>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="javascript:modform.submit()" style="color:skyblue">수정하기</a></button></td>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="${pageContext.request.contextPath }/memberDeleteAction.me?id=${member.member_ID }" style="color:skyblue">삭제</a></button></td>		
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
