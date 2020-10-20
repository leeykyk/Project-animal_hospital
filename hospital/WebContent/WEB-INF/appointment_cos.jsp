<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="vo.Reservation"%>
<%@ page import="dao.ReservationDAO"%>
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

<body> ${reservation }
   
   <div class="card shadow mb-4">
         <div class="card-body">
            <div class="table-responsive">
               
<form action="reservationDeleteAction.res" name="modform" method="post">
   <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
   
         
         <h2>${member.member_ID} 님의 예약 정보</h2>
${res.member_ID }
            <section id="content_main">
               
            <section id="content_right">


               <b>아이디 : </b> ${member.member_ID }<br><input type="hidden" name="member_ID" value="${member.member_ID}">
               <b>이름 : </b> ${reservation.member_name }<input type="hidden" name="member_name" value="${member.member_name }"><br>
               <b>반려동물이름 : ${reservation.animal_name }<input type="hidden" name="animal_name" value="${res.animal_name }"><br>
               <b>진료 과목 : <input type="hidden" name="subject" value="${reservation.subject }"><br>
               <b>연락처 : </b> <input type="hidden" name="phone" value="${reservation.phone }"><br>
               <b>예약 날짜 : </b> ${reservation.date }<br>
               <b>요청사항 : </b> <input type="hidden" name="etc" value="${reservation.etc }"><br>
         
            </section>                                    
            
            <div style="clear:both"></div>
               <nav id="commandList">
                  <br><a href="${pageContext.request.contextPath }/memberListAction.me">리스트로 돌아가기</a><br>
                  <br><a href="javascript:modform.submit()">수정하기</a><br>
                  <br><a href="${pageContext.request.contextPath }/memberDeleteAction.me?id=${member.member_ID }">예약 취소</a><br>
               </nav>
            
            </section>


</table>
</form>

</div>
</div>
</div>

  <!-- footer -->
<jsp:include page="/footer_ad.jsp"></jsp:include>
<!-- END footer -->

</body>
</html>