<%@ page import="vo.PageInfo"%>
<%@ page import="vo.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%
	ArrayList<BoardBean> articleList = (ArrayList<BoardBean>) request.getAttribute("articleList");
	// request 영역에 articleList라는 이름으로 공유되어있는 속성값을 ArrayList 타입으로 얻어옴

	PageInfo pageInfo = (PageInfo) request.getAttribute("pageInfo");
	// request 영역에 pageInfo라는 이름으로 공유되어있는 페이징 처리 관련 정보를 PageInfo 타입으로 얻어옴
	
	int listCount = pageInfo.getListCount();
	int nowPage = pageInfo.getPage();
	int maxPage = pageInfo.getMaxPage();
	int startPage = pageInfo.getStartPage();
	int endPage = pageInfo.getEndPage();
%>

<!DOCTYPE html>
<html>
<head>
<title>QNA</title>
<meta charset="utf-8">

<!-- top area -->
<jsp:include page="/top_area.jsp"></jsp:include>
<!-- END top area -->


<style type="text/css">
h2 {
   text-align: center;
   color: #007bff;;
}

table {
   margin: auto;
   width: 700px;
}

.td_left {
   width: 100px;
   background: #5ABEFF;
   text-align: center;
}

.td_right {
   width: 600px;
   background: #f8f9fa;
}

#commandCell {
   text-align: center;
}

.line{
	text-align: center;
}

</style>
</head>
<body>${id }
   
  <section class="hero-wrap hero-wrap-2" style="background-image: url('images/horse.jpg');" data-stellar-background-ratio="0.5">
  	<div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
               <h1 class="mb-2 bread">QNA</h1>
               <p class="breadcrumbs">
                  <span class="mr-2"><a href="${pageContext.request.contextPath }/index.me">홈 <i class="ion-ios-arrow-forward"></i></a></span> <span>QNA <i class="ion-ios-arrow-forward"></i></span>
               </p>
            </div>
         </div>
      </div>
  </section>
   
  <br>
	<!-- 게시판 리스트 -->
	<section id="listForm">
		<h2>
			글 목록&nbsp;&nbsp;
		</h2><br>
		<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
			<% if (articleList != null && listCount > 0) { %>
			<tr id="tr_top">
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>날짜</td>
				<td>조회수</td>
			</tr>
			<% for (int i = 0; i < articleList.size(); i++) { %>
			<tr>
				<td><%=articleList.get(i).getBOARD_NUMBER()%></td>
				<td>
					<% if (articleList.get(i).getBOARD_RE_LEV() != 0) { %> 
					<% for (int a = 0; a <= articleList.get(i).getBOARD_RE_LEV() * 2; a++) { %> &nbsp; 
					<% } %> ▶
					 <% } else { %> ▶ 
					 <% } %> 
					 <a href="boardDetail.bo?board_number=<%=articleList.get(i).getBOARD_NUMBER()%>&page=<%=nowPage%>">
						<%=articleList.get(i).getBOARD_SUBJECT()%></a>
				</td>
				<td><%=articleList.get(i).getBOARD_NAME()%></td>
				<td><%=articleList.get(i).getBOARD_DATE()%></td>
				<td><%=articleList.get(i).getBOARD_READCOUNT()%></td>
			</tr>
			<% } %>
		</table>
	</section>
	
	<section id="pageList">
	 <div class="line"><br>	
		<% if (nowPage <= 1) { %>
		[이전]&nbsp;
		<% } else { %>
		<a href="boardList.bo?page=<%=nowPage - 1%>">[이전]</a>&nbsp;
		<% } %>

		<% for (int a = startPage; a <= endPage; a++) {
			if (a == nowPage) { %>
		[<%=a%>]
		<% } else { %>
		<a href="boardList.bo?page=<%=a%>">[<%=a%>]
		</a>&nbsp;
		<% } %>
		<% } %>

		<% if (nowPage >= maxPage) { %>
		[다음]
		<% } else { %>
		<a href="boardList.bo?page=<%=nowPage + 1%>">[다음]</a>
		<% } %>
	</div>
	</section>
	<% } else { %>
		<section id="emptyArea">등록된 글이 없습니다.</section>
	<% } %>

<br>	
	<!-- top area -->
		<jsp:include page="/footer_cos.jsp"></jsp:include>
	<!-- END top area -->

</body>
</html>