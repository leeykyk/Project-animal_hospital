<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="vo.MemberBean"%>
<%@ page import="dao.MemberDAO"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   

  <fmt:requestEncoding value="UTF-8"/>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 페이지</title>
   </head>

<body>
   
<div class="card shadow mb-4"> 	
   		<div class="mem_list">
      		<br><h2 class="h3 mb-2 text-gray-800">${memberLog.member_name} 님의 상세정보</h2><br>
   		</div>
   	      	
		<form action="memberModifyAction.me" name="modform" method="post">
				
			<table class="table1 table-bordered" id="dataTable" cellspacing="0" align="center">
		 
	 			<tr align="center"><td width=200px;>항목</td><td width=200px;>내용</td><td>수정</td></tr>
	
				<tr>
					<td><b>아이디 </b></td><td> ${memberLog.member_ID }</td><td><input type="hidden" name="member_ID" value="${memberLog.member_ID}"></td>
				</tr>
				<tr>	
					<td><b>이름 </b></td><td> ${memberLog.member_name }</td><td><input type="text" name="member_name" value="${memberLog.member_name }"></td>
				</tr>
				<tr>
					<td><b>비밀번호</b></td><td> ${memberLog.pass }</td><td><input type="text" name="pass" value="${memberLog.pass }"></td>
				</tr>
				<tr>
					<td><b>주소</b></td><td> ${memberLog.addr }</td><td><input type="text" name="addr" value="${memberLog.addr }"></td>
				</tr>
				<tr>	
					<td><b>연락처</b></td><td>${memberLog.phone }</td><td><input type="text" name="phone" value="${memberLog.phone }"></td>
				</tr>
				<tr>	
					<td><b>가입일</b></td><td> ${memberLog.date }</td><td></td>
				</tr>
				<tr>	
					<td><b>비고</b></td><td>${memberLog.etc }</td><td><input type="text" name="etc" value="${memberLog.etc }"></td>
				</tr>			
				
			</table>
			<br>
			<table class="table1" align="center">
				<tr>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="javascript:history.back()" style="color:skyblue">돌아가기</a></button></td>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="javascript:modform.submit()" style="color:skyblue">수정하기</a></button></td>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="${pageContext.request.contextPath }/animalMemberJoin.am" style="color:skyblue">나의 반려동물 등록</a></button></td>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="${pageContext.request.contextPath }/animalMemberViewAction2.am" style="color:skyblue">나의 반려동물 보기</a></button></td>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="${pageContext.request.contextPath }/memberDeleteAction.me?id=${memberLog.member_ID }" style="color:skyblue">탈퇴하기</a></button></td>		
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
