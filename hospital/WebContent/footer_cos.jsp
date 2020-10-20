<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하단 메뉴(회원)</title>
</head>
<body>

	<!-- footer -->
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
								<li><span class="icon icon-phone"></span>
								<span class="text">+2 010-1234-5678</span></li>
								<li><span class="icon icon-envelope"></span>
								<span class="text">aaa@aaa.com</span></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-5 ml-md-4">
						<h2 class="ftco-heading-2">Links</h2>
						<ul class="list-unstyled">
							<li><a href="${pageContext.request.contextPath }/index.me">
								<span class="ion-ios-arrow-round-forward mr-2"></span>홈</a></li>
							<li><a href="${pageContext.request.contextPath }/doctor.doc">
								<span class="ion-ios-arrow-round-forward mr-2"></span>의료진</a></li>
							<li><a href="${pageContext.request.contextPath }/department.sub">
								<span class="ion-ios-arrow-round-forward mr-2"></span>진료</a></li>
							<li><a href="${pageContext.request.contextPath }/appointment.res">
								<span class="ion-ios-arrow-round-forward mr-2"></span>예약하기</a></li>
							<li><a href="${pageContext.request.contextPath }/boardList.bo">
								<span class="ion-ios-arrow-round-forward mr-2"></span>QNA</a></li>
						</ul>
					</div>
					<div class="ftco-footer-widget mb-5 ml-md-4">
						<h2 class="ftco-heading-2">진료</h2>
						<ul class="list-unstyled">
							<li><a href="${pageContext.request.contextPath }/dog.sub">
								<span class="ion-ios-arrow-round-forward mr-2"></span>강아지</a></li>
							<li><a href="${pageContext.request.contextPath }/cat.sub">
								<span class="ion-ios-arrow-round-forward mr-2"></span>고양이</a></li>
							<li><a href="${pageContext.request.contextPath }/bir.sub">
								<span class="ion-ios-arrow-round-forward mr-2"></span>새</a></li>
							<li><a href="${pageContext.request.contextPath }/ham.sub">
								<span class="ion-ios-arrow-round-forward mr-2"></span>햄스터</a></li>
							<li><a href="${pageContext.request.contextPath }/etc.sub">
								<span class="ion-ios-arrow-round-forward mr-2"></span>기타동물</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-5">
						<h2 class="ftco-heading-2">진료 목록</h2>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4" style="background-image: url(images/cat_blog_1.jpg);"></a>
							<div class="text">
								<h3 class="heading" style="color: white">고양이 스케일링 수술 현황</h3>
								<div class="meta">
									<div>
										<span class="icon-calendar" style="color: white">12/25.2018</span>
									</div>
									<div>
										<span class="icon-person" style="color: white"> Admin</span>
									</div>
									<div>
										<span class="icon-chat" style="color: white"> 19</span>
									</div>
								</div>
							</div>
						</div>
						<div class="block-21 mb-5 d-flex">
							<a class="blog-img mr-4" style="background-image: url(images/dog_blog_5.jpg);"></a>
							<div class="text">
								<h3 class="heading" style="color: white">강아지 심장사상충 예방접종 안내
								</h3>
								<div class="meta">
									<div>
										<span class="icon-calendar" style="color: white">12/25.2018</span>
									</div>
									<div>
										<span class="icon-person" style="color: white"> Admin</span>
									</div>
									<div>
										<span class="icon-chat" style="color: white"> 19</span>
									</div>
								</div>
							</div>
						</div>
						<h2 class="ftco-heading-2">진료 시간</h2>
						<h3 class="open-hours pl-4">
							<span class="ion-ios-time mr-3" style="color: white"> 월-금 진료, 공휴일 휴무</span>
						</h3>
						<h3 class="open-hours pl-4">
							<span class="ion-ios-time mr-3" style="color: white"> AM 10:00 - PM 18:00 (야간진료 가능)</span>
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
	<script src="${pageContext.request.contextPath }/js/scrollax.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="${pageContext.request.contextPath }/js/google-map.js"></script>
	<script src="${pageContext.request.contextPath }/js/main.js"></script>

</body>
</html>