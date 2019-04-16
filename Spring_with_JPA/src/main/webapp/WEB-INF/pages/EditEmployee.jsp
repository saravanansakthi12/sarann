<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EditEmployee</title>
</head>
<body>
	<form:form name="form" action="update" modelAttribute="emp">
		<table align="center" border="1">
			<tr>
				<td>ID</td>
				<td>Name</td>
				<td>Place</td>
				<td>phone</td>
				<td>E-mail</td>
				<td>password</td>
				<td>Edit</td>
				<td>Delete</td>
			</tr>


			<c:forEach items="${list}" var="ls">
				<c:if test="${ls.empId!=employee.empId}">
					<tr>
						<td><c:out value="${ls.empId}"></c:out></td>
						<td><c:out value="${ls.empName}"></c:out></td>
						<td><c:out value="${ls.empPlace}"></c:out></td>
						<td><c:out value="${ls.phoneNo}"></c:out></td>
						<td><c:out value="${ls.email}"></c:out></td>
						<td><c:out value="${ls.password}"></c:out></td>
						<td><a href="edit?id=${ls.empId}"><span class="glyphicon glyphicon-pencil"></span></a></td>
						<td><a href="delete?id=${ls.empId}"><span class="glyphicon glyphicon-trash"></span></a></td>
					</tr>
				</c:if>

				<c:if test="${ls.empId==employee.empId}">
					<tr>
						<td><c:out value="${ls.empId}"></c:out></td>
						<td><form:input path="empName" value="${ls.empName}" /></td>
						<td><form:input path="empPlace" value="${ls.empPlace}" /></td>
						<td><form:input path="phoneNo" value="${ls.phoneNo}" /></td>
						<td><form:input path="email" value="${ls.email}" /></td>
						<td><form:input path="password" value="${ls.password}" /></td>
						<td><a onclick="form.submit()" href="#"><span class="glyphicon glyphicon-repeat"></span></a></td>
						<td><a href="delete?id=${ls.empId}"><span class="glyphicon glyphicon-trash"></span></a></td>
					</tr>
				</c:if>
			</c:forEach>
		</table>

	</form:form>
</body>
</html>