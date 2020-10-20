<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<fmt:requestEncoding value="UTF-8" />

<c:set var="openInit"
	value="${param.openInit eq null ? 'false' : 'true'}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동물 아이디 중복 확인</title>
</head>

<script>
	function init(){
   		if(${openInit}) {
			document.getElementById("id").value=opener.document.getElementById("Animal_ID").value;
		}
	}
	
	function userId(v) {
   		opener.chkId=true;alert();
   		opener.idcheck=v.trim();
   		opener.document.getElementById("Animal_ID").value=v;
   		window.close();
	}
</script>
<body onload="init()">
<form action="idCheck2.jsp" method="post" name="f">
	<input type="text" name="id" id="id" /> <input type="submit" name="idcheck" value="중복확인" id="idcheck">
	</form>

	<c:if test="${!(param.id == null || param.id=='') }">

	<sql:setDataSource var="conn" dataSource="jdbc/javainfo1blw" />
	<sql:query var="rs" dataSource="${conn}">
   		select*from member_animal where animal_ID=?
   		<sql:param>${param.id}</sql:param>
	</sql:query>

	<c:set var="useful_id" value="true" />
	<%-- 아래 ${rs.rows[0] eq null} 사용 시  forEach문 없어도 됨  --%>
	<c:forEach var="row" items="${rs.rows }">
	<c:set var="useful_id" value="false" />
	</c:forEach>
	
	<c:choose>
		<c:when test="${useful_id}">
			<%-- ${rs.rows[0] eq null} 사용 가능 --%>
				<h3>${param.id}는 사용가능한 아이디입니다<br> <a href="javascript:userId('${param.id }')"><br>
					<input type="button" value="사용하기" onclick="window.close()" /></a>
				</h3>
		</c:when>
	<c:otherwise>
		<h3>${param.id}는사용 불가능한 아이디입니다</h3>
	</c:otherwise>
	</c:choose>
	</c:if>
</body>
</html>