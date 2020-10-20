<%@ page import="vo.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	BoardBean article = (BoardBean) request.getAttribute("article");
%>

<!DOCTYPE html>
<html>
<head>
<title>글 수정하기</title>
<script type="text/javascript">
	function modifyboard() {
		modifyform.submit();
	}
</script>
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


	<!-- 게시판 등록 -->
	<section id="writeForm">
		<br><h2>게시판글수정</h2><br>
		<form action="boardModifyPro.bo" method="post" name="modifyform">
			<input type="hidden" name="BOARD_NUMBER"
				value="<%=article.getBOARD_NUMBER()%>" />
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				<tr>
					<td class="td_left"><label for="BOARD_NAME">글쓴이</label></td>
					<td class="td_right"><input type="text" name="BOARD_NAME"
						id="BOARD_NAME" value="<%=article.getBOARD_NAME()%>"/></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_PASS">비밀번호</label></td>
					<td class="td_right"><input name="BOARD_PASS" type="password"
						id="BOARD_PASS" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_SUBJECT">제 목</label></td>
					<td class="td_right"><input name="BOARD_SUBJECT" type="text"
						id="BOARD_SUBJECT" value="<%=article.getBOARD_SUBJECT()%>"/></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_CONTENT">내 용</label></td>
					<td><textarea id="BOARD_CONTENT" name="BOARD_CONTENT"
							cols="70" rows="10"><%=article.getBOARD_CONTENT()%></textarea></td>
				</tr>
			</table>
			<section id="commandCell"><br>
				<a href="javascript:modifyboard()">[수정]</a>&nbsp;&nbsp; 
				<a href="javascript:history.go(-1)">[뒤로]</a><br><br>
			</section>
		</form>
	</section>

 	<!-- top area -->
		<jsp:include page="/footer_ad.jsp"></jsp:include>
	<!-- END top area -->
</body>
</html>
