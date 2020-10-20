<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>동물들 별 진료</title>
</head>

<body>

   <section class="hero-wrap hero-wrap-2" style="background-image: url('images/horse.jpg');"   data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
               <h1 class="mb-2 bread">진료목록</h1>
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
                  <a href="${pageContext.request.contextPath }/dog.sub" class="block-20" style="background-image: url('images/dog1.jpg');">
                     <div class="meta-date text-center p-2">
                        <span class="kind">강아지</span>
                     </div>
                  </a>
                  <div class="text bg-white p-4">
                     <h3 class="heading">
                        <a href="${pageContext.request.contextPath }/dog.sub">강아지</a>
                     </h3>

                     <div class="d-flex align-items-center mt-4">
                        <p class="mb-0">
                           <a href="${pageContext.request.contextPath }/dog.sub" class="btn btn-primary">이동하기
                           <span class="ion-ios-arrow-round-forward"></span></a>
                        </p>

                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-4 ftco-animate">
               <div class="blog-entry">
                  <a href="${pageContext.request.contextPath }/cat.sub" class="block-20" style="background-image: url('images/cat1.jpg');">
                     <div class="meta-date text-center p-2">
                        <span class="kind">고양이</span>
                     </div>
                  </a>
                  <div class="text bg-white p-4">
                     <h3 class="heading">
                        <a href="${pageContext.request.contextPath }/cat.sub">고양이</a>
                     </h3>

                     <div class="d-flex align-items-center mt-4">
                        <p class="mb-0">
                           <a href="${pageContext.request.contextPath }/cat.sub" class="btn btn-primary">이동하기 
                           <span class="ion-ios-arrow-round-forward"></span></a>
                        </p>
                     </div>
                  </div>
               </div>
            </div>
             <div class="col-md-4 ftco-animate">
               <div class="blog-entry">
                  <a href="${pageContext.request.contextPath }/ham.sub" class="block-20" style="background-image: url('images/ham1.jpg');">
                     <div class="meta-date text-center p-2">
                        <span class="kind">설치류</span>
                     </div>
                  </a>
                  <div class="text bg-white p-4">
                     <h3 class="heading">
                        <a href="${pageContext.request.contextPath }/ham.sub">설치류</a>
                     </h3>
                     <p>햄스터, 고슴도치 진료합니다</p>
                     <div class="d-flex align-items-center mt-4">
                        <p class="mb-0">
                           <a href="${pageContext.request.contextPath }/ham.sub" class="btn btn-primary">이동하기 
                           <span class="ion-ios-arrow-round-forward"></span></a>
                        </p>
                     </div>
                  </div>
               </div>
            </div>    
            <div class="col-md-4 ftco-animate">
               <div class="blog-entry">
                  <a href="${pageContext.request.contextPath }/bir.sub" class="block-20" style="background-image: url('images/ham1.jpg');">
                     <div class="meta-date text-center p-2">
                        <span class="kind">조류</span>
                     </div>
                  </a>
                  <div class="text bg-white p-4">
                     <h3 class="heading">
                        <a href="${pageContext.request.contextPath }/bir.sub">조류</a>
                     </h3>
                     <p>조류 진료합니다</p>
                     <div class="d-flex align-items-center mt-4">
                        <p class="mb-0">
                           <a href="${pageContext.request.contextPath }/bir.sub" class="btn btn-primary">이동하기 
                           <span class="ion-ios-arrow-round-forward"></span></a>
                        </p>
                     </div>
                  </div>
               </div>
            </div>
            
            <div class="col-md-4 ftco-animate">
               <div class="blog-entry">
                  <a href="${pageContext.request.contextPath }/etc.sub" class="block-20" style="background-image: url('images/bir1.jpg');">
                     <div class="meta-date text-center p-2">
                        <span class="kind">기타</span>
                     </div>
                  </a>
                  <div class="text bg-white p-4">
                     <h3 class="heading">
                        <a href="${pageContext.request.contextPath }/etc.sub">기타 동물 진료</a>
                     </h3>
                     <p>이구아나 등 진료합니다</p>
                     <div class="d-flex align-items-center mt-4">
                        <p class="mb-0">
                           <a href="${pageContext.request.contextPath }/etc.sub" class="btn btn-primary">이동하기
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