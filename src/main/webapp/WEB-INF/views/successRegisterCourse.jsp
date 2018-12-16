<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수강신청성공</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

</head>
<body>
	<h3>${course.hansungName}님 등록에 성공하였습니다.</h3>
	<br>

	<a href="${pageContext.request.contextPath}/showRegisterCourse" class="btn btn-primary btn-lg active" role="button">수강 신청 조회</a>
	<br>
	<a href="/course" class="btn btn-primary btn-lg active" role="button">Home</a>
</body>
</html>