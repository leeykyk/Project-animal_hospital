<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<title>동물병원소개</title>
</head>

<body>${id }
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/horse.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread">병원 소개</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="${pageContext.request.contextPath }/index.me">홈 <i class="ion-ios-arrow-forward"></i></a></span> <span>병원시설 <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section ftco-no-pt ftc-no-pb">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-md-5 p-md-5 img img-2 mt-5 mt-md-0" style="background-image: url(images/together1.jpg);">
					</div>
					<div class="col-md-7 wrap-about py-4 py-md-5 ftco-animate">
	          <div class="heading-section mb-5">
	          	<div class="pl-md-5 ml-md-5">
		          	<span class="subheading">고양고양동물병원</span>
		            <h2 class="mb-4" style="font-size: 28px;">병원을 찾은 반려동물을<br>나의 가족이라는 마음으로 치료합니다.<br>전문 의료진들이 최상의 서비스로<br>진료하고 있습니다.</h2>
	            </div>
	          </div>
	          <div class="pl-md-5 ml-md-5 mb-5">
						
							<div class="row mt-5 pt-2">
								<div class="col-lg-6">
									<div class="services-2 d-flex">
										<div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center"><span class="flaticon-first-aid-kit"></span></div>
										<div class="text">
											<h3>진료상담</h3>
											<p>강아지, 고양이부터 고슴도치 ,앵무새까지 다양한 반려동물을 진료할 수 있습니다. </p>
										</div>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="services-2 d-flex">
										<div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center"><span class="flaticon-dropper"></span></div>
										<div class="text">
											<h3>정밀검사</h3>
											<p>반려동물의 정밀검사를 통해 질병을 미리 예방하고 치료할 수 있습니다.</p>
										</div>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="services-2 d-flex">
										<div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center"><span class="flaticon-experiment-results"></span></div>
										<div class="text">
											<h3>전문치료</h3>
											<p>각 분야의 전문 의료진들이 상태에 맞게 치료합니다.</p>
										</div>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="services-2 d-flex">
										<div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center"><span class="flaticon-heart-rate"></span></div>
										<div class="text">
											<h3>진료예약</h3>
											<p>회원가입하시면 진료예약 서비스와 반려동물의 진료 내역을 볼 수 있습니다.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<section class="ftco-intro" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<h2>전문 의료진들이 정성으로 진료합니다</h2>
						<p class="mb-0">Your Health is Our Top Priority with Comprehensive, Affordable medical.</p>
						<p></p>
					</div>
					<div class="col-md-3 d-flex align-items-center">
						<p class="mb-0"><a href="#" class="btn btn-secondary px-4 py-3">예약하기</a></p>
					</div>
				</div>
			</div>
		</section>
		   
		   
<!-- footer -->
<jsp:include page="/footer_cos.jsp"></jsp:include>
<!-- END footer -->
 
</body>
</html>