<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="vo.Doctor"%>
<%@ page import="dao.DoctorDAO"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록보기 (관리자)</title>
</head>


<body>
<div class="card shadow mb-4">
   <div class="mem_list">
      <br><h1 class="h3 mb-2 text-gray-800">의료진 목록</h1>
   </div>
   <p class="mem_list2">
      <a href="${pageContext.request.contextPath }/doctorJoin.doc">의료진 추가하기</a>
   </p><br>

      <div class="card-body">
         <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

               <tr>
                  <th>ID</th>
                  <th>비밀번호</th>
                  <th>이름</th>
                  <th>직급</th>
                  <th>학력</th>
                  <th>경력</th>
                  <th>사진</th>
               </tr>

               <c:forEach var="hospital_office" items="${doctorList}">
                  <tr>
                     <td><a href="${pageContext.request.contextPath }/doctorViewAction.doc?id=${hospital_office.doctor_ID}">${hospital_office.doctor_ID }</a></td>
                     <td>${hospital_office.doctor_pass}</td>
                     <td>${hospital_office.name}</td>
                     <td>${hospital_office.job}</td>
                     <td>${hospital_office.school}</td>
                     <td>${hospital_office.career}</td>
                     <td>${hospital_office.image}</td>
                  </tr>

               </c:forEach>
            </table>
         </div>
      </div>
   </div>

   <!-- footer -->
   <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">

         <div class="row">
            <div class="col-md-12 text-center">
               <p>
                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                  Copyright &copy;
                  <script>
                     document.write(new Date().getFullYear());
                  </script>
                  All rights reserved | This project is made with 
                  <i class="icon-heart" aria-hidden="true"></i> by 난연 & 윤경</a>
                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
               </p>
            </div>
         </div>
      </div>
   </footer>
   <!-- END footer -->

</body>
</html>