<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

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


   <section class="ftco-section bg-light " id="writeForm">
      <h2>게시판 글 등록</h2><br>
      <form action="boardWritePro.bo" method="post"
         enctype="multipart/form-data" name="boardform">
         <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <tr>
               <td class="td_left"><label for="BOARD_NAME">글쓴이</label></td>
               <td class="td_right"><input type="text" name="BOARD_NAME"
                  id="BOARD_NAME" required="required" /></td>
            </tr>
            <tr>
               <td class="td_left"><label for="BOARD_PASS">비밀번호</label></td>
               <td class="td_right"><input name="BOARD_PASS" type="password" id="BOARD_PASS" required="required" /></td>
            </tr>
            <tr>
               <td class="td_left"><label for="BOARD_SUBJECT">제 목</label></td>
               <td class="td_right"><input name="BOARD_SUBJECT" type="text" id="BOARD_SUBJECT" required="required" /></td>
            </tr>
            <tr>
               <td class="td_left"><label for="BOARD_CONTENT">내 용</label></td>
               <td><textarea id="BOARD_CONTENT" name="BOARD_CONTENT" cols="70" rows="10" required="required"></textarea></td>
            </tr>
<!--        <tr>
               <td class="td_left"><label for="BOARD_FILE"> 파일 첨부 </label></td>
               <td class="td_right"><input name="BOARD_FILE" type="file" id="BOARD_FILE" required="required" /></td>
            </tr>     --> 
         </table>
         <section id="commandCell">
            <br><input type="submit" value="등록">&nbsp;&nbsp; <input type="reset" value="다시쓰기" />
         </section>
      </form>
   </section>


 	<!-- top area -->
		<jsp:include page="/footer_cos.jsp"></jsp:include>
	<!-- END top area -->

</body>
</html>