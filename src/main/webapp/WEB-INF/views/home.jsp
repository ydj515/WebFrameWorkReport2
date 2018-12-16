<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>

<body>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h3>유동진 님</h3>
	</c:if>

	<h1>환영합니다.</h1>

	<br>
	<br>

	<p>
		<a href="${pageContext.request.contextPath}/showCourse"
			class="btn btn-primary btn-lg active" role="button">학기별 이수학점 조회</a>
	</p>

	<p>
		<a href="${pageContext.request.contextPath}/registerCourse"
			class="btn btn-primary btn-lg active" role="button">수강 신청하기</a>
	</p>
	<p>
		<a href="${pageContext.request.contextPath}/showRegisterCourse"
			class="btn btn-primary btn-lg active" role="button">수강 신청 조회</a>
	</p>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<a href="javascript:document.getElementById('logout').submit()"
			class="btn btn-primary btn-lg active" role="button">로그아웃</a>

	</c:if>
	<form id="logout" action="<c:url value="/logout" />" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
</body>
</html>
