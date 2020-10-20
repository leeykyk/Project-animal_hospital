<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동물병원예약사이트</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath }/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/animate.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/magnific-popup.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/css/aos.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/css/ionicons.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/jquery.timepicker.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/css/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/icomoon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">
</head>
<body>${id }
   <nav class="navbar py-4 navbar-expand-lg ftco_navbar navbar-light bg-light flex-row">
      <div class="container">
         <div class="row no-gutters d-flex align-items-start align-items-center px-3 px-md-0">
            <div class="col-lg-2 pr-4 align-items-center">
               <a class="navbar-brand" href="index.jsp">Animal.<span>Hospital</span></a>
            </div>
            <div class="col-lg-10 d-none d-md-block">
               <div class="row d-flex">
                  <div class="col-md-4 pr-4 d-flex topper align-items-center">
                     <div class="icon bg-white mr-2 d-flex justify-content-center align-items-center">
                        <span class="icon-map"></span>
                     </div>
                     <span class="text">주소: 대구시 달서구 xx동 xxx로 100-1번지 xx타워 3</span>
                  </div>
                  <div class="col-md pr-4 d-flex topper align-items-center">
                     <div class="icon bg-white mr-2 d-flex justify-content-center align-items-center">
                        <span class="icon-paper-plane"></span>
                     </div>
                     <span class="text">Email: aaa@aaa.com</span>
                  </div>
                  <div class="col-md pr-4 d-flex topper align-items-center">
                     <div class="icon bg-white mr-2 d-flex justify-content-center align-items-center">
                        <span class="icon-phone2"></span>
                     </div>
                     <span class="text">Phone: 010-1234-5678</span>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </nav>
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container d-flex align-items-center">
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
         </button>
         <p class="button-custom order-lg-last mb-0">
            <a href="memberLogout.me" class="btn btn-secondary py-2 px-3">로그아웃</a>
         </p>
         <p class="button-custom order-lg-last mb-0">
            <a href="memberListAction.me" class="btn btn-secondary py-2 px-3">내정보보기</a>
         </p>
         <p class="button-custom order-lg-last mb-0">
            <a href="${pageContext.request.contextPath }/subjectCartList.sub" class="btn btn-secondary py-2 px-3">내진료관리</a>
         </p>
         <p class="button-custom order-lg-last mb-0">
            <a href="subjectListAction.sub" class="btn btn-secondary py-2 px-3">예약현황보기</a>
         </p>
         <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav mr-auto">
               <li class="nav-item active"><a href="doc_main.jsp" class="nav-link pl-0">홈</a></li>
               <li class="nav-item"><a href="about.jsp" class="nav-link">병원 소개</a></li>
               <li class="nav-item"><a href="doctor.jsp" class="nav-link">의료진</a></li>
               <li class="nav-item"><a href="department.jsp" class="nav-link">진료</a></li>
               <li class="nav-item"><a href="appointment.jsp" class="nav-link">예약하기</a></li>
               <li class="nav-item"><a href="blog.jsp" class="nav-link">예약확인</a></li>
               <li class="nav-item"><a href="board_QnA.jsp" class="nav-link">QnA</a></li>
            </ul>
         </div>
      </div>
   </nav>
   <!-- END nav -->


   <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url(images/index_bg.jpg);" data-stellar-background-ratio="0.5">
         <div class="overlay"></div>
         <div class="container">
            <div class="row no-gutters slider-text align-items-center justify-content-start"
               data-scrollax-parent="true">
               <div class="col-md-6 text ftco-animate">
                  <h1 class="mb-4">
                     반려동물과 함께하는 <span>따뜻한 삶</span>
                  </h1>
                  <h3 class="subheading">가족처럼 소중한 반려동물</h3>
                  <p>
                     <a href="department.jsp" class="btn btn-secondary px-4 py-3 mt-3">진료 보기</a>
                  </p>
               </div>
            </div>
         </div>
      </div>

      <div class="slider-item" style="background-image: url(images/index_bg2.jpg);">
         <div class="overlay"></div>
         <div class="container">
            <div
               class="row no-gutters slider-text align-items-center justify-content-start"
               data-scrollax-parent="true">
               <div class="col-md-6 text ftco-animate">
                  <h1 class="mb-4">
                     반려동물의 건강을 <span>지켜드립니다</span>
                  </h1>
                  <h3 class="subheading">최고의 시설, 최고의 감동을 선물해드립니다.</h3>
                  <p>
                     <a href="#" class="btn btn-secondary px-4 py-3 mt-3">진료 보기</a>
                  </p>
               </div>
            </div>
         </div>
      </div>
   </section>

   <section class="ftco-services ftco-no-pb">
      <div class="container">
         <div class="row no-gutters">
            <div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
               <div class="media block-6 d-block text-center">
                  <div class="icon d-flex justify-content-center align-items-center">
                     <span class="flaticon-doctor"></span>
                  </div>
                  <div class="media-body p-2 mt-3">
                     <h3 class="heading">국내 최고의 의료진</h3>
                     <p>30년 이상 경력의 의료진들이 함께합니다.</p>
                  </div>
               </div>
            </div>
            <div
               class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
               <div class="media block-6 d-block text-center">
                  <div class="icon d-flex justify-content-center align-items-center">
                     <span class="flaticon-ambulance"></span>
                  </div>
                  <div class="media-body p-2 mt-3">
                     <h3 class="heading">응급실 상시 운영</h3>
                     <p>응급실을 상시 운영중입니다.</p>
                  </div>
               </div>
            </div>
            <div
               class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
               <div class="media block-6 d-block text-center">
                  <div class="icon d-flex justify-content-center align-items-center">
                     <span class="flaticon-stethoscope"></span>
                  </div>
                  <div class="media-body p-2 mt-3">
                     <h3 class="heading">다양한 동물 진료</h3>
                     <p>햄스터, 설치류, 그 밖의 희귀동물 등 다양한 진료가 가능합니다.</p>
                  </div>
               </div>
            </div>
            <div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
               <div class="media block-6 d-block text-center">
                  <div class="icon d-flex justify-content-center align-items-center">
                     <span class="flaticon-24-hours"></span>
                  </div>
                  <div class="media-body p-2 mt-3">
                     <h3 class="heading">환자분의 높은 만족도</h3>
                     <p>최고의 정성과 최고의 감동을 선물해드립니다.</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>

   <section class="ftco-section ftco-no-pt ftc-no-pb">
      <div class="container">
         <div class="row no-gutters">
            <div class="col-md-5 p-md-5 img img-2 mt-5 mt-md-0" style="background-image: url(images/home.JPG);"></div>
            <div class="col-md-7 wrap-about py-4 py-md-5 ftco-animate">
               <div class="heading-section mb-5">
                  <div class="pl-md-5 ml-md-5">
                     <span class="subheading">ABOUT Animal.Hosptial</span>
                     <h2 class="mb-4" style="font-size: 28px;">소개글</h2>
                  </div>
               </div>
               <div class="pl-md-5 ml-md-5 mb-5">
                  <p>정성을 다하겠습니다.</p>
                  <div class="row mt-5 pt-2">
                     <div class="col-lg-6">
                        <div class="services-2 d-flex">
                           <div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center">
                              <span class="flaticon-first-aid-kit"></span>
                           </div>
                           <div class="text">
                              <h3>무료 진단</h3>
                              <p>증상을 정확히 진단합니다.</p>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="services-2 d-flex">
                           <div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center">
                              <span class="flaticon-dropper"></span>
                           </div>
                           <div class="text">
                              <h3>정밀 검진</h3>
                              <p>상세한 검사를 진행합니다.</p>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="services-2 d-flex">
                           <div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center">
                              <span class="flaticon-experiment-results"></span>
                           </div>
                           <div class="text">
                              <h3>진단하기</h3>
                              <p>증상을 확인한 후 진단을 내리고 적절한 진료를 진행합니다.</p>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="services-2 d-flex">
                           <div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center">
                              <span class="flaticon-heart-rate"></span>
                           </div>
                           <div class="text">
                              <h3>치료</h3>
                              <p>적절한 치료 후 관리까지</p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>


   <section class="ftco-intro" style="background-image: url(images/cat.jpg);"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row">
            <div class="col-md-9">
               <h2>무료 진단을 받아보세요</h2>
               <p class="mb-0">반려동물의 건강이 무엇보다 우선입니다.</p>
               <p></p>
            </div>
            <div class="col-md-3 d-flex align-items-center">
               <p class="mb-0">
                  <a href="appointment.jsp" class="btn btn-secondary px-4 py-3">예약하기</a>
               </p>
            </div>
         </div>
      </div>
   </section>

   <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
         <div class="row mb-5">
            <div class="col-md">
               <div class="ftco-footer-widget mb-5">
                  <h2 class="ftco-heading-2 logo">
                     Animal.<span>Hospital</span>
                  </h2>
                  <p>반려동물과 함께하는 삶</p>
               </div>
               <div class="ftco-footer-widget mb-5">
                  <h2 class="ftco-heading-2">고객센터</h2>
                  <div class="block-23 mb-3">
                     <ul>
                        <li><span class="icon icon-map-marker"></span>
                        <span class="text">대구시 달서구 xx동 xxx로 100-1번지 xx타워 3층</span></li>
                        <li><a href="#"><span class="icon icon-phone"></span>
                        <span class="text">+2 010-1234-5678</span></a></li>
                        <li><a href="#"><span class="icon icon-envelope"></span>
                        <span class="text">aaa@aaa.com</span></a></li>
                     </ul>
                  </div>

                  <ul
                     class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                     <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                     <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                     <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                  </ul>
               </div>
            </div>
            <div class="col-md">
               <div class="ftco-footer-widget mb-5 ml-md-4">
                  <h2 class="ftco-heading-2">Links</h2>
                  <ul class="list-unstyled">
                     <li><a href="index.jsp"><span class="ion-ios-arrow-round-forward mr-2"></span>홈</a></li>
                     <li><a href="doctor.jsp"><span class="ion-ios-arrow-round-forward mr-2"></span>의료진</a></li>
                     <li><a href="department.jsp"><span class="ion-ios-arrow-round-forward mr-2"></span>진료</a></li>
                     <li><a href="appointment.jsp"><span class="ion-ios-arrow-round-forward mr-2"></span>예약하기</a></li>
                     <li><a href="board_QnA.jsp"><span class="ion-ios-arrow-round-forward mr-2"></span>QNA</a></li>
                  </ul>
               </div>
               <div class="ftco-footer-widget mb-5 ml-md-4">
                  <h2 class="ftco-heading-2">진료</h2>
                  <ul class="list-unstyled">
                     <li><a href="blog_dog.jsp"><span class="ion-ios-arrow-round-forward mr-2"></span>강아지</a></li>
                     <li><a href="blog_cat.jsp"><span class="ion-ios-arrow-round-forward mr-2"></span>고양이</a></li>
                     <li><a href="blog_bir.jsp"><span class="ion-ios-arrow-round-forward mr-2"></span>새</a></li>
                     <li><a href="blog_ham.jsp"><span class="ion-ios-arrow-round-forward mr-2"></span>햄스터</a></li>
                     <li><a href="blog_etc.jsp"><span class="ion-ios-arrow-round-forward mr-2"></span>기타동물</a></li>
                  </ul>
               </div>
            </div>
            <div class="col-md">
               <div class="ftco-footer-widget mb-5">
                  <h2 class="ftco-heading-2">진료 목록</h2>
                  <div class="block-21 mb-4 d-flex">
                     <a class="blog-img mr-4" style="background-image: url(images/cat_blog_1.jpg);"></a>
                     <div class="text">
                        <h3 class="heading">
                           <a href="#">고양이 스케일링 수술 현황</a>
                        </h3>
                        <div class="meta">
                           <div>
                              <a href="#"><span class="icon-calendar"></span> 12/25.2018</a>
                           </div>
                           <div>
                              <a href="#"><span class="icon-person"></span> Admin</a>
                           </div>
                           <div>
                              <a href="#"><span class="icon-chat"></span> 19</a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="block-21 mb-5 d-flex">
                     <a class="blog-img mr-4" style="background-image: url(images/dog_blog_5.jpg);"></a>
                     <div class="text">
                        <h3 class="heading">
                           <a href="#">강아지 심장사상충 예방접종 안내</a>
                        </h3>
                        <div class="meta">
                           <div>
                              <a href="#"><span class="icon-calendar"></span> 12/25.2018</a>
                           </div>
                           <div>
                              <a href="#"><span class="icon-person"></span> Admin</a>
                           </div>
                           <div>
                              <a href="#"><span class="icon-chat"></span> 19</a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <h2 class="ftco-heading-2">진료 시간</h2>
                  <h3 class="open-hours pl-4">
                     <span class="ion-ios-time mr-3"></span>월-금 진료, 공휴일 휴무
                  </h3>
                  <h3 class="open-hours pl-4">
                     <span class="ion-ios-time mr-3"></span>AM 10:00 - PM 18:00
                  </h3>
               </div>
            </div>
         </div>
      </div>

      <div class="row">
         <div class="col-md-12 text-center">

            <p>
               <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
               Copyright &copy;
               <script>
                  document.write(new Date().getFullYear());
               </script>
               All rights reserved | This project is made with 
               <i class="icon-heart" aria-hidden="true"></i> by 난연 & 윤경</a>
               <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
         </div>
      </div>
      </div>
   </footer>


   <!-- loader -->
   <div id="ftco-loader" class="show fullscreen">
      <svg class="circular" width="48px" height="48px">
         <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
         <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
   </div>

   <script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
   <script src="${pageContext.request.contextPath }/js/jquery-migrate-3.0.1.min.js"></script>
   <script src="${pageContext.request.contextPath }/js/popper.min.js"></script>
   <script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
   <script src="${pageContext.request.contextPath }/js/jquery.easing.1.3.js"></script>
   <script src="${pageContext.request.contextPath }/js/jquery.waypoints.min.js"></script>
   <script src="${pageContext.request.contextPath }/js/jquery.stellar.min.js"></script>
   <script src="${pageContext.request.contextPath }/js/owl.carousel.min.js"></script>
   <script src="${pageContext.request.contextPath }/js/jquery.magnific-popup.min.js"></script>
   <script src="${pageContext.request.contextPath }/js/aos.js"></script>
   <script src="${pageContext.request.contextPath }/js/jquery.animateNumber.min.js"></script>
   <script src="${pageContext.request.contextPath }/js/bootstrap-datepicker.js"></script>
   <script src="${pageContext.request.contextPath }/js/jquery.timepicker.min.js"></script>
   <script src="${pageContext.request.contextPath }/js/scrollax.min.js"></script>
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
   <script src="${pageContext.request.contextPath }/js/google-map.js"></script>
   <script src="${pageContext.request.contextPath }/js/main.js"></script>

</body>
</html>