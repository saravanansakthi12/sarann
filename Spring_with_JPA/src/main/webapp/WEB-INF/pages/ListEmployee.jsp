<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>list</title>
</head>
<body>
	<form:form action="createnew" modelAttribute="emp">
	<h1 align="center">List of Employee Details</h1>
		<table class="table table-striped" align="center" border="1">
			<tr>
				<td>ID</td>
				<td>Name</td>
				<td>Place</td>
				<td>Phone</td>
				<td>E-Mail</td>
				<td>Edit</td>
				<td>Delete</td>
			</tr>


			<c:forEach items="${list}" var="ls">
				<tr>
					<td><c:out value="${ls.empId}"></c:out></td>
					<td><c:out value="${ls.empName}"></c:out></td>
					<td><c:out value="${ls.empPlace}"></c:out></td>
					<td><c:out value="${ls.phoneNo}"></c:out></td>
					<td><c:out value="${ls.email}"></c:out></td>
					<td><a href="edit?id=${ls.empId}"><span class="glyphicon glyphicon-pencil"></span></a></td>
					<td><a href="delete?id=${ls.empId}"><span class="glyphicon glyphicon-trash"></span></a></td>
				</tr>
			</c:forEach>
		</table>
	</form:form>

</body>
</html>
