<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>의료진 소개</title>
<meta charset="utf-8">

</head>
<body>${doctorList }
   
   <section class="hero-wrap hero-wrap-2"
      style="background-image: url('images/horse.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
               <h1 class="mb-2 bread">의료진 소개</h1>
               <p class="breadcrumbs">
                  <span class="mr-2"><a href="${pageContext.request.contextPath }/index.me">홈 
                  <i class="ion-ios-arrow-forward"></i></a></span> <span>의료진 
                  <i class="ion-ios-arrow-forward"></i></span>
               </p>
            </div>
         </div>
      </div>
   </section>

<c:forEach var="list" items="${doctorList }">	
   <section class="ftco-section">
      <div class="container">
         <div class="row">
            <div class="col-md-6 col-lg-3 ftco-animate">
               <div class="staff">
                  <div class="img-wrap d-flex align-items-stretch">
                     <div class="img align-self-stretch" style="background-image: url(images/doctor.jpg);"></div>
                  </div>
                  <div class="text pt-3 text-center">
                     <h3>이순신</h3>
                     <span class="position mb-2">강아지 전문</span>
                     <div class="faded">
                        <p>강아지를 잘 봅니다.</p>
                        <ul class="ftco-social text-center">
                           <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                           <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                           <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                           <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-3 ftco-animate">
               <div class="staff">
                  <div class="img-wrap d-flex align-items-stretch">
                     <div class="img align-self-stretch" style="background-image: url(images/doctor.jpg);"></div>
                  </div>
                  <div class="text pt-3 text-center">
                     <h3>김유신</h3>
                     <span class="position mb-2">고양이 전문</span>
                     <div class="faded">
                        <p>고양이를 좋아합니다.</p>
                        <ul class="ftco-social text-center">
                           <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                           <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                           <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                           <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-3 ftco-animate">
               <div class="staff">
                  <div class="img-wrap d-flex align-items-stretch">
                     <div class="img align-self-stretch" style="background-image: url(images/doctor.jpg);"></div>
                  </div>
                  <div class="text pt-3 text-center">
                     <h3>신사임당</h3>
                     <span class="position mb-2">설치류 전문</span>
                     <div class="faded">
                        <p>햄스터와 이구아나를 잘 봅니다.</p>
                        <ul class="ftco-social text-center">
                           <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                           <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                           <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                           <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-3 ftco-animate">
               <div class="staff">
                  <div class="img-wrap d-flex align-items-stretch">
                     <div class="img align-self-stretch" style="background-image: url(images/doctor.jpg);"></div>
                  </div>
                  <div class="text pt-3 text-center">
                     <h3>홍길동</h3>
                     <span class="position mb-2">기타 동물</span>
                     <div class="faded">
                        <p>작은 동물들을 잘 봅니다.</p>
                        <ul class="ftco-social text-center">
                           <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                           <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                           <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                           <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
</c:forEach>

<!-- footer -->
<jsp:include page="/footer_cos.jsp"></jsp:include>
<!-- END footer -->

</body>
</html>