<%@ page import="vo.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	BoardBean article=(BoardBean)request.getAttribute("article");
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

	<!-- 게시판 답변 -->
	<section id="writeForm">
		<br><h2>게시판 답글등록</h2><br>
		<form action="boardReplyPro.bo" method="post" name="boardform">
			<input type="hidden" name="page" value="<%=nowPage %>"/> 
			<input type="hidden" name="BOARD_NUMBER" value="<%=article.getBOARD_NUMBER() %>">
			<input type="hidden" name="BOARD_RE_REF" value="<%=article.getBOARD_RE_REF() %>"> 
			<input type="hidden" name="BOARD_RE_LEV" value="<%=article.getBOARD_RE_LEV() %>"> 
			<input type="hidden" name="BOARD_RE_SEQ" value="<%=article.getBOARD_RE_SEQ() %>">
			
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				<tr>
					<td class="td_left"><label for="BOARD_NAME">글쓴이</label></td>
					<td class="td_right"><input type="text" name="BOARD_NAME" id="BOARD_NAME" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_PASS">비밀번호</label></td>
					<td class="td_right"><input name="BOARD_PASS" type="password" id="BOARD_PASS" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_SUBJECT">제 목</label></td>
					<td class="td_right"><input name="BOARD_SUBJECT" type="text" id="BOARD_SUBJECT" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_CONTENT">내 용</label></td>
					<td><textarea id="BOARD_CONTENT" name="BOARD_CONTENT" cols="80" rows="10"></textarea></td>
				</tr>
			</table>
			<section id="commandCell"><br>
				<input type="submit" value="답변글등록" />&nbsp;&nbsp; 
				<input type="reset" value="다시작성" />
			</section>
		</form>
	</section>

<br>
	<!-- top area -->
		<jsp:include page="/footer_ad.jsp"></jsp:include>
	<!-- END top area -->

</body>
</html>

