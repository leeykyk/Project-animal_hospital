<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>새 진료 종류</title>
</head>

<body>${id }

   <section class="hero-wrap hero-wrap-2" style="background-image: url('images/horse.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
               <h1 class="mb-2 bread">조류</h1>
               <p class="breadcrumbs">
                  <span class="mr-2"><a href="${pageContext.request.contextPath }/index.me">홈 <i class="ion-ios-arrow-forward"></i></a></span> 
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
                  <a class="block-20" style="background-image: url('images/bird_blog_1.jpg');"> </a>
                  <div class="text bg-white p-4">
                     <h3 class="heading">호흡기 질환</h3>
                     <p>피라미소바이러스, 인플루엔자A, 미코플라스마, 아스페르길루스, 칸디다 등의 호흡기 질환을 진단합니다.</p>
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
                  <a class="block-20" style="background-image: url('images/bird_blog_2.jpg');"> </a>
                  <div class="text bg-white p-4">
                     <h3 class="heading">해충 질환</h3>
                     <p>새의 경우는 해충 질환도 빈번하게 발생합니다. 해충 질환은 특히 어린 새들이 힘들어하며 새장 소독도 병행해야합니다.</p>
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
                  <a class="block-20" style="background-image: url('images/bird_blog_3.jpg');"> </a>
                  <div class="text bg-white p-4">
                     <h3 class="heading">설사 등 소화기 질환</h3>
                     <p>살모넬라균 감염, 세균성 감염, 바이러스성 감염, 곰팡이 감염, 식이 변화 등으로 일어나는 소화기 질환을 진단할 수 있습니다.</p>
                     <div class="d-flex align-items-center mt-4">
                        <p class="mb-0">
                           <a href="${pageContext.request.contextPath }/appointment.res" class="btn btn-primary">예약하기 
                           <span class="ion-ios-arrow-round-forward"></span></a>
                        </p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-4 ftco-animate">
               <div class="blog-entry">
                  <a class="block-20" style="background-image: url('images/bird_blog_4.jpg');"> </a>
                  <div class="text bg-white p-4">
                     <h3 class="heading">알막힘</h3>
                     <p>알을 낳지 못해 배가 불러 있고 고통으로 깃털을 뽑는 행동을 한다면 수의사의 도움을 받아 알막힘을 제거해야합니다.</p>
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
                  <a class="block-20" style="background-image: url('images/bird_blog_5.jpg');"> </a>
                  <div class="text bg-white p-4">
                     <h3 class="heading">골절 및 외상</h3>
                     <p>가슴뼈, 다리 뼈, 날개 뼈, 발가락 뼈 골절 등의 상태를 진단하고 그에 맞는 적절한 치료를 할 수 있습니다.</p>
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
                  <a class="block-20" style="background-image: url('images/bird_blog_6.jpg');"> </a>
                  <div class="text bg-white p-4">
                     <h3 class="heading">진료상담</h3>
                     <p>조류 동물이거나 반려동물의 상담이 필요하신 경우, 처음 방문하신 경우 선택하실 수 있습니다.</p>
                     <div class="d-flex align-items-center mt-4">
                        <p class="mb-0">
                           <a href="${pageContext.request.contextPath }/appointment.res" class="btn btn-primary">예약하기 
                           <span class="ion-ios-arrow-round-forward"></span></a>
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