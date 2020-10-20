<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>의사 등록</title>
<meta charset="utf-8">
</head>

<body>
   <section class="ftco-section ftco-no-pt ftco-no-pb ftco-counter img" id="section-counter" style="background-image: url(images/cat.jpg);" data-stellar-background-ratio="0.5" align="center">
      <form name="loginform" action="${pageContext.request.contextPath }/doctorJoinAction.doc" method="post" class="appointment-form ftco-animate">
         <div class="container" align="center">
            <div class="row" align="center">
               <div class="col-md-6 py-5 pr-md-5 mg-auto1" align="center">
                  <div class="heading-section heading-section-white ftco-animate mb-5" align="center">
                     <span class="subheading" align="center">가족이 되신걸 환영합니다.</span>
                     <h2 class="mb-4">의료진 등록</h2>
                     <p>사랑과 정성으로 보답하겠습니다.</p>
                  </div>
                  <div class="d-md-flex">
                     <div class="form-group">
                        <input type="text" class="form-control" placeholder="이름" name="Name" id="Name">
                     </div>
                  </div>

                  <div class="d-md-flex">
                     <div class="form-group">
                        <input type="text" class="form-control" placeholder="회원ID" name="Doctor_ID" id="Doctor_ID">
                     </div>
                     <div class="form-group">
                        <input type="password" class="form-control" placeholder="비밀번호" name="Doctor_pass" id="Doctor_pass">
                     </div>
                  </div>

                  <div class="d-md-flex">
                     <div class="form-group">
                        <input type="text" name="Job" id="Job" class="form-control" placeholder="직책 ">
                     </div>
                  </div>
                  <div class="d-md-flex">
                     <div class="form-group">
                        <textarea name="School" id="School" cols="50" rows="2" class="form-control" placeholder="학력"></textarea>
                     </div>
                     <div class="form-group">
                        <textarea name="Career" id="Career" cols="50" rows="2" class="form-control" placeholder="경력"></textarea>
                     </div>
                  </div>
                  <div class="form-group">
                     <input type="file" class="form-control" placeholder="사진" name="Image" id="Image">
                  </div>
               </div>
            </div>
            <div class="doc">
               <input type="submit" value="등록하기" class="btn btn-secondary py-3 px-4">
            </div>
            <br>
         </div>
      </form>
   </section>

<!-- footer -->
<jsp:include page="/footer_cos.jsp"></jsp:include>
<!-- END footer -->

</body>
</html>