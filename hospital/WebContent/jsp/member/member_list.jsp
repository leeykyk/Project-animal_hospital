<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="vo.BoardBean"%>
<%@ page import="dao.MemberDAO"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록보기</title>
</head>


<body>

 <div class="card shadow mb-4">
   <div class="mem_list">
      <br><h1 class="h3 mb-2 text-gray-800">회원 목록 보기</h1>
   </div>
   <p class="mem_list2">
      <a href="${pageContext.request.contextPath }/memberJoin.me">회원 추가 하기</a>
   </p><br>

      <div class="card-body">
         <div class="table-responsive">
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
                     <td>${hospital_member.addr}</td>
                     <td>${hospital_member.phone}</td>
                     <td>${hospital_member.date}</td>
                     <td>${hospital_member.etc}</td>
                     <td>${hospital_member.grade}</td>
                  </tr>

               </c:forEach>
            </table>
         </div>
      </div>
   </div>
   
   
     <!-- footer -->
<jsp:include page="/footer_ad.jsp"></jsp:include>
<!-- END footer -->

</body>
</html>