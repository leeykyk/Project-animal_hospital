<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
</head>

<body>
   <div class="card shadow mb-4">
   <div class="mem_list">
      <br><h1 class="h3 mb-2 text-gray-800">진료 동물 목록 보기</h1>
   </div>
   <p class="mem_list2">
      <a href="${pageContext.request.contextPath }/animalMemberListAction.am">회원 동물 보기</a>&nbsp;&nbsp;&nbsp;
      <a href="${pageContext.request.contextPath }/animalJoin.ani" >등록하기</a>
   </p><br>

   <!-- DataTales Example -->

      <div class="card-body">
         <div class="table-responsive">
            <table class="table2 table-bordered" id="dataTable" width="100%" cellspacing="0">

               <tr>
                  <th>ID</th>
                  <th>종류</th>
                  <th>비고</th>
               </tr>

               <c:forEach var="animal" items="${animalList}">

                  <tr>
                     <td><a href="${pageContext.request.contextPath }/animalView.ani?id=${animal.animal_ID}">${animal.animal_ID}</a></td>
                     <td>${animal.kind}</td>
                     <td>${animal.etc}</td>
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