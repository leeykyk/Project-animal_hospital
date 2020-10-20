<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<fmt:requestEncoding value="UTF-8" />

<head>
<meta charset="UTF-8">
<title>회원 관리 시스템 회원 정보 수정 페이지</title>
   </head>

<body>
	<form action="memberModifyAction.me" name="modform" method="post">
		

			
		
		<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

               <tr>
                  <th>ID</th>
                  <th>이름</th>
                  <th>비밀번호</th>
                  <th>주소</th>
                  <th>핸드폰</th>
                  <th>가입일</th>
                  <th>비고</th>
                  <th>등급</th>
               </tr>

               <c:forEach var="hospital_member" items="${memberList}">

                  <tr>
                     <td><a href="${pageContext.request.contextPath }/memberViewAction.me?id=${hospital_member.member_ID}">${hospital_member.member_ID}</a></td>
                     <td>${hospital_member.member_name}</td>
                     <td>${hospital_member.pass}</td>
                     <td>${hospital_member.phone}</td>
                     <td>${hospital_member.addr}</td>
                     <td>${hospital_member.date}</td>
                     <td>${hospital_member.etc}</td>
                     <td>${hospital_member.grade}</td>
                  </tr>

               </c:forEach>
		</table>

	</form>
	
	  <!-- footer -->
<jsp:include page="/footer_cos.jsp"></jsp:include>
<!-- END footer -->
	
	
</body>
</html>
		
