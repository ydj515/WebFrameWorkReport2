<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수강 신청 내역</title>
<style>
th, td {
	width: 70px;
}
</style>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

</head>

<body>

<h3 style="text-align: center">수강 신청 내역</h3>
	<table class="table table-striped" id="mytable">
		<thead>
			<tr>
				<th>학번(ID)</th>
				<th>이름</th>
				<th>수강년도</th>
				<th>학기</th>
				<th>교과코드</th>
				<th>교과목명</th>
				<th>구분</th>
				<th>학점</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="courses" items="${courses}">
				<tr>
					<td><c:out value="${courses.hansungID}"></c:out></td>
					<td><c:out value="${courses.hansungName}"></c:out></td>
					<td><c:out value="${courses.year}"></c:out></td>
					<td><c:out value="${courses.semester}"></c:out></td>
					<td><c:out value="${courses.courseCode}"></c:out></td>
					<td><c:out value="${courses.courseName}"></c:out></td>
					<td><c:out value="${courses.division}"></c:out></td>
					<td><c:out value="${courses.grade}"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="/course" class="btn btn-primary btn-lg active" role="button">Home</a>
</body>
</html>