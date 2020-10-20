<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>반려동물 종류</title>
</head>

<body>
	<section class="hero-wrap hero-wrap-2" style="background-image: url('images/horse.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">반려동물</h1>
					<p class="breadcrumbs">
						<span class="mr-2">
						<a href="${pageContext.request.contextPath }/index.me">홈 
						<i class="ion-ios-arrow-forward"></i></a></span> <span>반려동물
					    <i class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-2">
				<div class="col-md-8 text-center heading-section ftco-animate">
					<span class="subheading">진료 가능한 반려동물</span>
					<h2 class="mb-4">반려 동물</h2>
					<p>무료 검진으로 소중한 반려동물의 건강을 지켜주세요.</p>
				</div>
			</div>
			<div class="ftco-departments">
				<div class="row">
					<div class="col-md-12 nav-link-wrap">
						<div class="nav nav-pills d-flex text-center" id="v-pills-tab"
							role="tablist" aria-orientation="vertical">
							<a class="nav-link ftco-animate active" id="v-pills-1-tab"
								data-toggle="pill" href="#v-pills-1" role="tab"
								aria-controls="v-pills-1" aria-selected="true">강아지</a> <a
								class="nav-link ftco-animate" id="v-pills-2-tab"
								data-toggle="pill" href="#v-pills-2" role="tab"
								aria-controls="v-pills-2" aria-selected="false">고양이</a> <a
								class="nav-link ftco-animate" id="v-pills-3-tab"
								data-toggle="pill" href="#v-pills-3" role="tab"
								aria-controls="v-pills-3" aria-selected="false">조류</a> <a
								class="nav-link ftco-animate" id="v-pills-4-tab"
								data-toggle="pill" href="#v-pills-4" role="tab"
								aria-controls="v-pills-4" aria-selected="false">설치류</a> <a
								class="nav-link ftco-animate" id="v-pills-5-tab"
								data-toggle="pill" href="#v-pills-5" role="tab"
								aria-controls="v-pills-5" aria-selected="false">기타 동물</a>
						</div>
					</div>
					<div class="col-md-12 tab-wrap">

						<div class="tab-content bg-light p-4 p-md-5 ftco-animate" id="v-pills-tabContent">

							<div class="tab-pane py-2 fade show active" id="v-pills-1"
								role="tabpanel" aria-labelledby="day-1-tab">
								<div class="row departments">
									<div class="col-lg-4 order-lg-last d-flex align-items-stretch">
										<div class="img d-flex align-self-stretch"
											style="background-image: url(images/dog1.jpg);"></div>
									</div>
									<div class="col-lg-8">
										<h2>강아지</h2>
										<p>동물 갯과의 포유류. 가축으로 사람을 잘 따르고 영리하다. 일반적으로 늑대 따위와 비슷하게 생겼으며
											날카로운 이빨이 있다. 냄새를 잘 맡으며 귀가 밝아 사냥이나 군용, 맹인 선도와 마약 및 폭약 탐지에 쓰인다.
											전 세계에 걸쳐 모양, 크기, 색깔이 다양한 300여 품종이 있다.</p>
										<div class="row mt-5 pt-2">
											<div class="col-lg-6">
												<div class="services-2 d-flex">
													<div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center">
														<span class="flaticon-first-aid-kit"></span>
													</div>
													<div class="text">
														<h3>진료 상담</h3>
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
														<p>상세한 검사가 가능합니다.</p>
													</div>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="services-2 d-flex">
													<div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center">
														<span class="flaticon-experiment-results"></span>
													</div>
													<div class="text">
														<h3>치료</h3>
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
														<a href="${pageContext.request.contextPath }/dog.sub">
															<h3>진료목록</h3>
															<p>
																진료가능한 목록을 볼 수 있습니다.<br>별도 상담도 예약 가능합니다.
															</p>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-day-2-tab">
								<div class="row departments">
									<div class="col-lg-4 order-lg-last d-flex align-items-stretch">
										<div class="img d-flex align-self-stretch"
											style="background-image: url(images/cat1.jpg);"></div>
									</div>
									<div class="col-md-8">
										<h2>고양이</h2>
										<p>명사 동물 고양잇과의 하나. 원래 아프리카의 리비아살쾡이를 길들인 것으로, 턱과 송곳니가 특히
											발달해서 육식을 주로 한다. 발톱은 자유롭게 감추거나 드러낼 수 있으며, 눈은 어두운 곳에서도 잘 볼 수
											있다.</p>
										<div class="row mt-5 pt-2">
											<div class="col-lg-6">
												<div class="services-2 d-flex">
													<div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center">
														<span class="flaticon-first-aid-kit"></span>
													</div>
													<div class="text">
														<h3>진료 상담</h3>
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
														<h3>치료</h3>
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
														<a href="${pageContext.request.contextPath }/cat.sub">
															<h3>진료목록</h3>
															<p>
																진료가능한 목록을 볼 수 있습니다.<br>별도 상담도 예약 가능합니다.
															</p>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="tab-pane fade" id="v-pills-4" role="tabpanel"
								aria-labelledby="v-pills-day-4-tab">
								<div class="row departments">
									<div class="col-lg-4 order-lg-last d-flex align-items-stretch">
										<div class="img d-flex align-self-stretch"
											style="background-image: url(images/ham1.jpg);"></div>
									</div>
									<div class="col-md-8">
										<h2>설치류</h2>
										<p>포유강의 한 목을 이루는 동물군. 송곳니는 없고, 앞니와 앞어금니 사이에 넓은 틈이 있다. 보통
											발가락이 5개이지만 앞발의 엄지발가락이 흔적만 남아 있거나 없는 것이 많다.</p>
										<div class="row mt-5 pt-2">
											<div class="col-lg-6">
												<div class="services-2 d-flex">
													<div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center">
														<span class="flaticon-first-aid-kit"></span>
													</div>
													<div class="text">
														<h3>진료 상담</h3>
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
														<h3>치료</h3>
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
														<a href="${pageContext.request.contextPath }/ham.sub">
															<h3>진료목록</h3>
															<p>
																진료가능한 목록을 볼 수 있습니다.<br>별도 상담도 예약 가능합니다.
															</p>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="tab-pane fade" id="v-pills-3" role="tabpanel"
								aria-labelledby="v-pills-day-3-tab">
								<div class="row departments">
									<div class="col-lg-4 order-lg-last d-flex align-items-stretch">
										<div class="img d-flex align-self-stretch"
											style="background-image: url(images/bir1.jpg);"></div>
									</div>
									<div class="col-md-8">
										<h2>조류</h2>
										<p>몸에 깃털이 있고 다리가 둘이며, 하늘을 자유로이 날 수 있는 짐승을 통틀어 이르는 말.</p>
										<div class="row mt-5 pt-2">
											<div class="col-lg-6">
												<div class="services-2 d-flex">
													<div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center">
														<span class="flaticon-first-aid-kit"></span>
													</div>
													<div class="text">
														<h3>진료상담</h3>
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
														<h3>치료</h3>
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
														<a href="${pageContext.request.contextPath }/bir.sub">
															<h3>진료목록</h3>
															<p>
																진료가능한 목록을 볼 수 있습니다.<br>별도 상담도 예약 가능합니다.
															</p>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="tab-pane fade" id="v-pills-5" role="tabpanel"
								aria-labelledby="v-pills-day-5-tab">
								<div class="row departments">
									<div class="col-lg-4 order-lg-last d-flex align-items-stretch">
										<div class="img d-flex align-self-stretch"
											style="background-image: url(images/etc.jpg);"></div>
									</div>
									<div class="col-md-8">
										<h2>기타</h2>
										<p>그 밖의 희귀 동물</p>
										<div class="row mt-5 pt-2">
											<div class="col-lg-6">
												<div class="services-2 d-flex">
													<div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center">
														<span class="flaticon-first-aid-kit"></span>
													</div>
													<div class="text">
														<h3>진료 상담</h3>
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
														<h3>치료</h3>
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
														<a href="${pageContext.request.contextPath }/etc.sub">
															<h3>진료목록</h3>
															<p>
																진료가능한 목록을 볼 수 있습니다.<br>별도 상담도 예약 가능합니다.
															</p>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
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