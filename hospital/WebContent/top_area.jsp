<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상단 메뉴</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/login.css">

</head>
<body>
	<nav class="navbar py-4 navbar-expand-lg ftco_navbar navbar-light bg-light flex-row">
		<div class="container">
			<div class="row no-gutters d-flex align-items-start align-items-center px-3 px-md-0">
				<div class="col-lg-2 pr-4 align-items-center">
					<a class="navbar-brand" href="${pageContext.request.contextPath }/index.me">Animal.<span>Hospital</span></a>
				</div>
			</div>
			<c:if test="${memberLog ne null }">
				<div class="aa">
					<span><h5>${memberLog.member_ID }님 환영합니다!</h5></span>
				</div>
			</c:if>
		</div>
	</nav>
	<c:choose>
		<c:when test="${memberLog.grade eq 'A' }">
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
				<div class="container d-flex align-items-center">
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#ftco-nav" aria-controls="ftco-nav"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="oi oi-menu"></span> Menu
					</button>

					<p class="button-custom order-lg-last mb-0">
						<c:choose>
							<c:when test="${memberLog.grade eq 'A' }">
								<a href="${pageContext.request.contextPath }/memberLogout.me"
									class="btn btn-secondary py-2 px-3">로그아웃</a>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath }/memberLogin.me"
									class="btn btn-secondary py-2 px-3">로그인</a>
								<a href="${pageContext.request.contextPath }/memberJoin.me"
									class="btn btn-secondary py-2 px-3">회원가입</a>
							</c:otherwise>
						</c:choose>
					</p>

					<div class="collapse navbar-collapse" id="ftco-nav">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item active">
							<a href="${pageContext.request.contextPath }/index.me" class="nav-link pl-0">홈</a></li>
							<li class="nav-item">
							<a href="${pageContext.request.contextPath }/memberListAction.me" class="nav-link">회원목록</a></li>
							<li class="nav-item">
							<a href="${pageContext.request.contextPath }/doctorListAction.doc" class="nav-link">의료진목록</a></li>
							<li class="nav-item">
							<a href="${pageContext.request.contextPath }/animalList.ani" class="nav-link">진료동물목록</a></li>
							<li class="nav-item">
							<a href="${pageContext.request.contextPath }/subjectListAction.sub" class="nav-link">진료항목관리</a></li>
							<li class="nav-item">
							<a href="${pageContext.request.contextPath }/ReservationViewAction2.res" class="nav-link">예약현황관리</a></li>
							<li class="dropdown nav-item">
							<a href="${pageContext.request.contextPath }/boardList.bo" class="nav-link">QnA</a>

								<ul id="products-menu" class="dropdown-menu" role="menu">
									<li>
									<a href="${pageContext.request.contextPath }/boardList.bo"
										style="color: black">게시판목록</a></li>
									<li>
									<a href="${pageContext.request.contextPath }/boardWriteForm.bo"
										style="color: black">게시판글쓰기</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</nav>

		</c:when>
		<c:otherwise>

			<nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
				<div class="container d-flex align-items-center">
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#ftco-nav" aria-controls="ftco-nav"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="oi oi-menu"></span> Menu
					</button>
					<p class="button-custom order-lg-last mb-0">
					
						<c:choose>
							<c:when test="${memberLog.grade eq 'S'}">
								<a href="${pageContext.request.contextPath }/memberLogout.me"
									class="btn btn-secondary py-2 px-3">로그아웃</a>
								<a href="${pageContext.request.contextPath }/memberViewAction2.me"
									class="btn btn-secondary py-2 px-3">내정보관리</a>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath }/memberLogin.me"
									class="btn btn-secondary py-2 px-3">로그인</a>
								<a href="${pageContext.request.contextPath }/memberJoin.me"
									class="btn btn-secondary py-2 px-3">회원가입</a>
							</c:otherwise>
						</c:choose>
					</p>
					
					<div class="collapse navbar-collapse" id="ftco-nav">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item active">
							<a href="${pageContext.request.contextPath }/index.me" class="nav-link pl-0">홈</a></li>
							<li class="nav-item">
							<a href="${pageContext.request.contextPath }/about.me" class="nav-link">병원 소개</a></li>
							<li class="nav-item">
							<a href="${pageContext.request.contextPath }/doctor.doc" class="nav-link">의료진</a></li>
							<li class="dropdown nav-item">
							<a href="${pageContext.request.contextPath }/department.sub" class="nav-link">진료</a>
								<ul id="products-menu" class="dropdown-menu" role="menu">
									<li><a href="${pageContext.request.contextPath }/dog.sub"
										style="color: black">강아지</a></li>
									<li><a href="${pageContext.request.contextPath }/cat.sub"
										style="color: black">고양이</a></li>
									<li><a href="${pageContext.request.contextPath }/ham.sub"
										style="color: black">설치류</a></li>
									<li><a href="${pageContext.request.contextPath }/bir.sub"
										style="color: black">조류</a></li>
									<li><a href="${pageContext.request.contextPath }/etc.sub"
										style="color: black">기타</a></li>
								</ul></li>

							<li class="nav-item">
							<a href="${pageContext.request.contextPath }/appointment.res"
								class="nav-link">예약하기</a></li>

							<c:if test="${memberLog ne null }">
								<li class="nav-item">
								<a href="${pageContext.request.contextPath }/ReservationViewAction.res"
									class="nav-link">예약확인</a></li>
							</c:if>

							<li class="dropdown nav-item">
							<a href="${pageContext.request.contextPath }/boardList.bo"
								class="nav-link">QnA</a>

								<ul id="products-menu" class="dropdown-menu" role="menu">
									<li>
									<a href="${pageContext.request.contextPath }/boardList.bo"
										style="color: black">게시판목록</a></li>
									<li>
									<a href="${pageContext.request.contextPath }/boardWriteForm.bo"
										style="color: black">게시판글쓰기</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</c:otherwise>
	</c:choose>
</body>
</html>