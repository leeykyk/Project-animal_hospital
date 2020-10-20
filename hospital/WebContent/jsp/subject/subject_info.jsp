<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.Subject"%>
<%@ page import="dao.SubjectDAO"%>
<%@ page import="java.util.*"%>
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
      		<br><h2 class="h3 mb-2 text-gray-800">${subject.subject_ID }의 상세정보</h2><br>
   		</div>
   	      	
		<form action="subjectModifyAction.sub" name="modform" method="post">
				
			<table class="table1 table-bordered" id="dataTable" cellspacing="0" align="center">
		 
	 			<tr align="center"><td width=200px;>항목</td><td width=200px;>내용</td><td>수정</td></tr>
	
				<tr>
					<td><b>진료ID </b></td><td>  ${subject.subject_ID }</td><td><input type="text" name="subject_ID" value="${subject.subject_ID}"></td>
				</tr>
				<tr>	
					<td><b>종류 </b></td><td> ${subject.kind }</td><td><input type="text" name="kind" value="${subject.kind }"></td>
				</tr>
				<tr>
					<td><b>진료명</b></td><td> ${subject.subject }</td><td><input type="text" name="subject" value="${subject.subject }"></td>
				</tr>
				<tr>
					<td><b>가격</b></td><td> ${subject.price }</td><td><input type="text" name="price" value="${subject.price }"></td>
				</tr>
				<tr>	
					<td><b>내용</b></td><td>${subject.content }</td><td><input type="text" name="content" value="${subject.content }"></td>
				</tr>
				<tr>	
					<td><b>사진</b></td><td><img src="images/${subject.image }"/></td><td><input type="file" name="image" value="${subject.image}"></td>
				</tr>			
				
			</table>
			<br>
			<table class="table1" align="center">
				<tr>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="javascript:history.back()" style="color:skyblue">돌아가기</a></button></td>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="javascript:modform.submit()" style="color:skyblue">수정하기</a></button></td>
					<td><button type="button" class="btn btn-outline-info btn-lg"><a href="${pageContext.request.contextPath }/subjectDeleteAction.sub?id=${subject.subject_ID }" style="color:skyblue">삭제</a></button></td>		
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
