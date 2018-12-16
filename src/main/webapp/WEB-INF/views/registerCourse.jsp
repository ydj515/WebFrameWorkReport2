<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수강 신청</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->
<link rel="stylesheet" rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">

</head>
<body>
	<h1>수강 신청 하기</h1>
	<sf:form method="post"
		action="${pageContext.request.contextPath}/successRegisterCourse"
		modelAttribute="course">

		<table border="1" cellpadding="10"
			style="border-collapse: collapse; text-align: center;">
			<tr>
				<td class="label">학번(ID)</td>
				<td><sf:input class="control" type="text" path="hansungID" /><br />
					<sf:errors path="hansungID" class="error" /></td>
			</tr>
			<tr>
				<td class="label">이름</td>
				<td><sf:input class="control" type="text" path="hansungName" /><br />
					<sf:errors path="hansungName" class="error" /></td>
			</tr>
			<tr>
				<td class="label">년도</td>
				<td>${course.year}</td>
			</tr>
			<tr>
				<td class="label">학기</td>
				<td>${course.semester}</td>
			</tr>
			<tr>
				<td class="label">교과코드</td>
				<td><sf:input class="control" type="text" path="courseCode" /><br />
					<sf:errors path="courseCode" class="error" /></td>
			</tr>
			<tr>
				<td class="label">교과목명</td>
				<td><sf:input class="control" type="text" path="courseName" /><br />
					<sf:errors path="courseName" class="error" /></td>
			</tr>
			<tr>
				<td class="label">구분</td>
				<td><sf:input class="control" type="text" path="division" /><br />
					<sf:errors path="division" class="error" /></td>
			</tr>
			<tr>
				<td class="label">학점</td>
				<td><sf:input class="control" type="text" path="grade" /><br />
					<sf:errors path="grade" class="error" /></td>
			</tr>
		</table>
		<input class="btn btn-default" type="submit" value="등록">
		
	</sf:form>
	<a href="${pageContext.request.contextPath}" class="btn btn-primary btn-lg active" role="button">Home</a>
</body>
</html>