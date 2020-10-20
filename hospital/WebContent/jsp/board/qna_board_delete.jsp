<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	int board_number = (Integer) request.getAttribute("board_number");
	String nowPage = (String) request.getAttribute("page");
%>

<!DOCTYPE html>
<html>
<head>
<title>글 삭제하기</title>
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

	<section id="passForm">
		<form name="deleteForm"
			action="boardDeletePro.bo?board_number=<%=board_number%>" method="post">
			<input type="hidden" name="page" value="<%=nowPage%>"/>
			<table>
				<tr>
					<td><label>글 비밀번호 : </label></td>
					<td><input name="BOARD_PASS" type="password"></td>
				</tr>
				<tr>
					<td><input type="submit" value="삭제" /> &nbsp;&nbsp; 
					<input type="button" value="돌아가기" onClick="javascript:history.go(-1)"/>
					</td>
				</tr>
			</table>
		</form>
	</section>

 	<!-- top area -->
		<jsp:include page="/footer_ad.jsp"></jsp:include>
	<!-- END top area -->

</body>
</html>
