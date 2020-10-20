<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="vo.Animal"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동물병원예약사이트</title>
</head>

<body>


	<div class="card shadow mb-4">
		<div class="card-body">
			<div class="table-responsive">
		
			
			<c:if test="${subjectList != null }">
					<h2>진료 상품 목록  <a href="department.jsp">진료 상품 추가</a></h2>
						<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

							<tr>
								<c:forEach var="subject" items="${subjectList }" varStatus="status">
								<td>
									<a href="animalView.ani?id=${member_animal.animal_id}">
									<img src="images/${member_animal.image}" id="productImage"/></a>
										진료명 : ${member_animal.kind }<br>
										가격 : ${member_animal.price }<br>
								</td>
									<c:if test="${((status.index+1) mod 4) == 0 }">
							</tr>
							<tr>
									</c:if>
								</c:forEach>
							</tr>
						</table>
					</c:if>

					<c:if test="${animalList == null }">
						<div class="div_empty">
							진료 상품이 없습니다. 예약 불가
						</div>
					</c:if>
					<c:if test="${todayImageList != null }">
						<div id ="todayImageList">
							<h2>오늘 본 진료 상품 목록</h2>
								<table>
									<tr>
										<c:forEach var="todayImage" items="${todayImageList }" varStatus="status">
											<td><img src="images/${todayImage }" id="todayImage"/></td>
												<c:if test="${((status.index+1) mod 4) == 0 }">
									</tr>
									<tr>
												</c:if>
										</c:forEach>
									</tr>
								</table>
						</div>
					</c:if>
			</div>
		</div>
	</div>		

   <!-- footer -->
<jsp:include page="/footer_cos.jsp"></jsp:include>
<!-- END footer -->

</body>
</html>