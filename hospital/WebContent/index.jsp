<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동물 병원 예약사이트</title>
<meta charset="utf-8" />
</head>
<script>
	//location.href="template.jsp";
</script>
<body>
	<div>
		<jsp:include page="top_area.jsp"></jsp:include>
	</div>

	<div>
		<jsp:include page="${pagefile eq null ? 'index1.jsp' : pagefile }"></jsp:include>
	</div>
</body>
</html>