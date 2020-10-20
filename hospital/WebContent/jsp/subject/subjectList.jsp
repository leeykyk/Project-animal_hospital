<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   


<!DOCTYPE html>
<html>
  <head>
  <meta charset="UTF-8">
    <title>진료목록보기</title>  
   </head>

	<body>
   <div class="card shadow mb-4">
		<div class="mem_list">	
          <br><h1 class="h3 mb-2 text-gray-800">진료 목록 보기</h1>
        </div>  
          <p class="mem_list2"><a href="${pageContext.request.contextPath }/subjectJoin.sub">진료 정보 추가하기</a></p><br>
		
		
          <!-- DataTales Example -->
       
        
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
					
                    	<tr>
                     	 	<th>진료번호</th>
                     	 	<th>종류</th>
                      		<th>진료명</th>
                      		<th>가격</th>
                      		<th>내용</th>    
                      		<th>이미지</th>           
                      		
                   		</tr>
                 
              <c:forEach var = "hospital_subject" items = "${subjectList}">    	
	 			
                    <tr>
                      <td><a href="${pageContext.request.contextPath }/subjectViewAction.sub?id=${hospital_subject.subject_ID}">${hospital_subject.subject_ID}</a></td>
                      <td>${hospital_subject.kind}</td>
                      <td>${hospital_subject.subject}</td>
                      <td>${hospital_subject.price}</td>
                      <td>${hospital_subject.content}</td>
             		  <td>${hospital_subject.image}</td>
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
    