<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="vo.MemberBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동물병원 메인 페이지</title>
</head>

<body>
	<section class="home-slider owl-carousel">
		<div class="slider-item"
			style="background-image: url(images/index_bg.jpg);"
			data-stellar-background-ratio="0.5">
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
							<a href="${pageContext.request.contextPath }/department.sub"
								class="btn btn-secondary px-4 py-3 mt-3">진료 보기</a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<div class="slider-item"
			style="background-image: url(images/index_bg2.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div class="row no-gutters slider-text align-items-center justify-content-start"
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
				<div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
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
				<div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
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
				<div class="col-md-5 p-md-5 img img-2 mt-5 mt-md-0"
					style="background-image: url(images/home.JPG);"></div>
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

	<section class="ftco-intro" style="background-image: url(images/cat.jpg);" data-stellar-background-ratio="0.5">
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
						<a href="${pageContext.request.contextPath }/appointment.res"
							class="btn btn-secondary px-4 py-3">예약하기</a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="/footer_cos.jsp"></jsp:include>
	<!-- END footer -->

</body>
</html>