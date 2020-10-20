<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="vo.mem_Animal"%>
<%@ page import="dao.mem_AnimalDAO"%>
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
      <br><h1 class="h3 mb-2 text-gray-800">동물 목록 보기</h1><br>
   </div><br>

   <!-- DataTales Example -->
 
      <div class="card-body">
         <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" cellspacing="0">

               <tr>
                  <td width=100px;>반려동물 ID</td>
                  <td>회원 ID</td>
                  <td>동물이름</td>
                  <td>종류</td>
                  <td>생일</td>
                  <td width=100px;>특이사항</td>            
               </tr>

               <c:forEach var="member_animal" items="${ani_memberList}">
                  <tr>
                     <td><a href="animalMemberViewAction.am?id=${member_animal.animal_ID}">${member_animal.animal_ID }</a></td>
                     <td>${member_animal.member_ID}</td>
                     <td>${member_animal.animal_name}</td> 
                     <td>${member_animal.birthday}</td>
                     <td>${member_animal.kind}</td>     
                     <td>${member_animal.etc}</td>          
                  </tr>

               </c:forEach>
            </table><br>
            <table class="table1" align="center">
				<tr><td><button type="button" class="btn btn-outline-info btn-lg"><a href="javascript:history.back()" style="color:skyblue">돌아가기</a></button>
            </td></tr></table>
         </div>
      </div>
   </div>

     <!-- footer -->
<jsp:include page="/footer_ad.jsp"></jsp:include>
<!-- END footer -->

</body>
</html>