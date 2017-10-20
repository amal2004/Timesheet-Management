<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employees</title>
<link rel="stylesheet" href="/TimesheetManagement/resources/styles.css" type="text/css">
</head>
<body>

	<h1>List of employees</h1>
	<a href="employees?new">Add new employee</a>
	<table cellspacing="5" class="main-table">
		<tr>
			<th>Name</th>
			<th>Department</th>
			<th>Details</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="#{employees}" var="emp">
			<tr>
				<td>${emp.name}</td>
				<td>${emp.department}</td>
				<td><a href="employees/${emp.id}">Go to page</a></td>
				<td><sf:form action="employees/${emp.id}" method="delete"
						cssClass="delete">
						<input type="submit" class="delete-button" value="ffff" />
					</sf:form></td>
			</tr>
		</c:forEach>
	</table>
	<a href="welcome">Go back</a>

</body>
</html>