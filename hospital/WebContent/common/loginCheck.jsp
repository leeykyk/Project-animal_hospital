<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${id eq null }">
	<script>
		alert("로그인을 하세요!");
		location.href="/Chapter16_Comb1/memberLogin.me";
	</script>
</c:if>