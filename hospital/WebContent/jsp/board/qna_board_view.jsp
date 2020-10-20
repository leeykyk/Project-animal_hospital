<%@ page import="vo.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
   
<%
	BoardBean article = (BoardBean)request.getAttribute("article");
    String nowPage = (String)request.getAttribute("page");
%>   
     
<!DOCTYPE html>
<html>
<head>
<title>QNA</title>
<meta charset="utf-8">

<!-- top area -->
<jsp:include page="/top_area.jsp"></jsp:include>
<!-- END top area -->


<style type="text/css">
h2 {
   text-align: center;
   color: #007bff;;
}

table {
   margin: auto;
   width: 700px;
}

.td_left {
   width: 100px;
   background: #5ABEFF;
   text-align: center;
}

.td_right {
   width: 600px;
   background: #f8f9fa;     
}

#commandCell {
   text-align: center;
}

.line {
	margin:auto;
	text-align: center;
}

</style>
</head>
<body>
   
   <section class="hero-wrap hero-wrap-2" style="background-image: url('images/horse.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
               <h1 class="mb-2 bread">QNA</h1>
               <p class="breadcrumbs">
                  <span class="mr-2"><a href="${pageContext.request.contextPath }/index.me">홈 <i class="ion-ios-arrow-forward"></i></a></span> <span>QNA <i class="ion-ios-arrow-forward"></i></span>
               </p>
            </div>
         </div>
      </div>
   </section>
     
	<!-- 게시판 수정 -->
  <div class="card shadow mb-4">
   <div class="card-body">
	<section id="articleForm">
	
		<br><h2>글 내용 상세보기</h2><br>
			<section id="basicInfoArea">
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
					<tr><td>제 목 : </td>
						<td><%=article.getBOARD_SUBJECT()%></td>
					</tr>
<!--				<tr><td>첨부파일 : </td>	
						<td><% if(!(article.getBOARD_FILE()==null)) { %>
							<a href="${pageContext.request.contextPath }/file_down?downFile=<%=article.getBOARD_FILE()%>"> <%=article.getBOARD_FILE() %></a><% } %>
						</td>
					</tr>	  -->
				</table>
			</section>
		<section id="articleContentArea">
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				<tr><td><%=article.getBOARD_CONTENT() %></td></tr>
			</table>
		</section>
	
	</section>

	<c:choose>
    	<c:when test="${memberLog ne null }">
      		<c:choose>
      			<c:when test="${memberLog.grade eq 'A'}">
      				<section id="commandList">
						<div class="line"><br>
							<a href="boardReplyForm.bo?board_number=<%=article.getBOARD_NUMBER() %>&page=<%=nowPage%>">[답변]</a> 
							<a href="boardModifyForm.bo?board_number=<%=article.getBOARD_NUMBER() %>">[수정]</a> 
							<a href="boardDeleteForm.bo?board_number=<%=article.getBOARD_NUMBER() %>&page=<%=nowPage%>">[삭제]</a> 
							<a href="boardList.bo?page=<%=nowPage%>">[목록]</a>&nbsp;&nbsp;
						</div>
					</section>
      			</c:when>

       <c:when test="${memberLog.grade eq 'S'}">
			<section id="commandList">
				<div class="line"><br>
					<a href="boardReplyForm.bo?board_number=<%=article.getBOARD_NUMBER() %>&page=<%=nowPage%>">[답변]</a> 
					<a href="boardList.bo?page=<%=nowPage%>">[목록]</a>&nbsp;&nbsp;
				</div>		
			</section>
		</c:when>
		</c:choose>
	</c:when>
	<c:otherwise>
		<section id="commandList">
			<div class="line"><br>
				<a href="boardList.bo?page=<%=nowPage%>">[목록]</a>&nbsp;&nbsp;
			</div>
		</section>
	</c:otherwise>
</c:choose>

  </div>
</div>

	<!-- top area -->
		<jsp:include page="/footer_cos.jsp"></jsp:include>
	<!-- END top area -->

</body>
</html>