<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>기타 동물 진료 종류</title>
</head>

<body>${id }

   <section class="hero-wrap hero-wrap-2" style="background-image: url('images/horse.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
               <h1 class="mb-2 bread">기타</h1>
               <p class="breadcrumbs">
                  <span class="mr-2"><a href="${pageContext.request.contextPath }/index.me">홈 
                  <i class="ion-ios-arrow-forward"></i></a></span>
                   <span>진료목록 <i class="ion-ios-arrow-forward"></i></span>
               </p>
            </div>
         </div>
      </div>
   </section>

   <section class="ftco-section bg-light">
      <div class="container">
         <div class="row">
            <div class="col-md-4 ftco-animate">
               <div class="blog-entry">
                  <a class="block-20" style="background-image: url('images/image_6.jpg');"> </a>
                  <div class="text bg-white p-4">
                     <h3 class="heading">예방 접종</a>
                     </h3>
                     <p>예방접종으로 질병으로부터 반려동물의 건강을 지켜주세요.</p>
                     <div class="d-flex align-items-center mt-4">
                        <p class="mb-0">
                           <a href="${pageContext.request.contextPath }/appointment.res" class="btn btn-primary">예약하기 <span class="ion-ios-arrow-round-forward"></span></a>
                        </p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-4 ftco-animate">
               <div class="blog-entry">
                  <a href="blog-single.html" class="block-20" style="background-image: url('images/image_6.jpg');"> </a>
                  <div class="text bg-white p-4">
                     <h3 class="heading">
                        <a href="#">각종 질병</a>
                     </h3>
                     <p>여러 종류의 반려동물의 질병을 진단합니다.</p>
                     <div class="d-flex align-items-center mt-4">
                        <p class="mb-0">
                           <a href="${pageContext.request.contextPath }/appointment.res" class="btn btn-primary">예약하기 <span class="ion-ios-arrow-round-forward"></span></a>
                        </p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-4 ftco-animate">
               <div class="blog-entry">
                  <a href="blog-single.html" class="block-20" style="background-image: url('images/image_6.jpg');"> </a>
                  <div class="text bg-white p-4">
                     <h3 class="heading">
                        <a href="#">진료 상담</a>
                     </h3>
                     <p>1:1 상담으로 질병 진단과 적절한 진료를 받으실 수 있습니다.</p>
                     <div class="d-flex align-items-center mt-4">
                        <p class="mb-0">
                           <a href="${pageContext.request.contextPath }/appointment.res" class="btn btn-primary">예약하기 <span class="ion-ios-arrow-round-forward"></span></a>
                        </p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>


<!-- footer -->
<jsp:include page="/footer_cos.jsp"></jsp:include>
<!-- END footer -->

</body>
</html>