<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

</head>

<body>
	<h3>2018년도까지의 학기별이수학점</h3>
	<table class="table table-striped" id="mytable">
		<thead>
			<tr>
				<th>수강년도</th>
				<th>학기</th>
				<th>이수 학점</th>
				<th>상세 보기</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="course" items="${courseBySemesters}">
				<tr>
					<td><c:out value="${course.year}"></c:out></td>
					<td><c:out value="${course.semester}"></c:out></td>
					<td><c:out value="${course.gradeCount}"></c:out></td>
					<td><a
						href="${pageContext.request.contextPath}/detail?year=${course.year}&semester=${course.semester}">링크</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="${pageContext.request.contextPath}" class="btn btn-primary btn-lg active" role="button">Home</a>
</body>
</html>