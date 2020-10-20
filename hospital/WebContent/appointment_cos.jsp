<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vo.Reservation"%>
<%@ page import="dao.ReservationDAO"%>
<%@ page import="vo.MemberBean"%>
<%@ page import="dao.MemberDAO"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<fmt:requestEncoding value="UTF-8" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약확인페이지(회원)</title>
</head>

<body>
	<div class="card shadow mb-4">
		<div class="mem_list">
			<br>
			<h2 class="h3 mb-2 text-gray-800">${memberLog.member_name}님의 예약정보</h2>
			<br>
		</div>

		<form action="ReservationRemove.res" name="remove" method="post">
			<table class="table3 table-bordered" id="dataTable" cellspacing="0" align="center">

				<tr align="center">
					<td width=200px; height=50px;><b>선택</b></td>
					<td width=200px; height=50px;><b>반려동물 이름</b></td>
					<td width=200px;><b>종류</b></td>
					<td width=200px;><b>진료명</b></td>
					<td width=200px;><b>예약날짜</b></td>
					<td width=200px;><b>특이사항</b></td>
					<td width=200px;><b>연락처</b></td>
				</tr>
				<c:forEach var="list" items="${reservationList }">
					<tr>
						<td><input type="checkbox" id="check" name="res_num" value="${list.num }" onclick="check(this.form)" /></td>
						<td height=50px;><a href="${pageContext.request.contextPath }/animalMemberViewAction2.am">${list.animal_name }</a></td>
						<!-- <td><input type="hidden" name="animal_name" value="${list.animal_name }"></td>  -->
						<td height=50px;>${list.kind }</td>
						<!-- <td><input type="hidden" name="subject" value="${list.subject }"></td>  -->
						<td height=50px;>${list.subject }</td>
						<!-- <td><input type="hidden" name="subject" value="${list.subject }"></td>  -->
						<td height=50px;>${list.dateS }</td>
						<!-- <td></td>  -->
						<td height=50px;>${list.etc }</td>
						<!-- <td><input type="hidden" name="etc" value="${list.etc }"></td>  -->
						<td height=50px;>${list.phone }</td>
						<!-- <td><input type="hidden" name="phone" value="${list.phone }"></td>  -->
					</tr>
				</c:forEach>
			</table>
			<br> <br>
			<table class="table1" align="center">
				<tr>
					<td><button type="button" class="btn btn-outline-info btn-lg">
							<a href="javascript:history.back()" style="color:skyblue">돌아가기</a>
						</button></td>
					<td><button type="button" class="btn btn-outline-info btn-lg"
							onclick="document.remove.submit();">예약취소</button></td>
				</tr>
			</table>
			<br>
		</form>
	</div>

	<!--    <c:if test="${list == null }">
      		<section class="div_empty">
           		예약 정보가 없습니다.
      		</section>
  			 </c:if>   -->

	<!-- footer -->
	<jsp:include page="/footer_ad.jsp"></jsp:include>
	<!-- END footer -->

</body>
</html>