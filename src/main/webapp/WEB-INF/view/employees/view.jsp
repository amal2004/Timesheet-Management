<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee page</title>
<link rel="stylesheet" href="/TimesheetManagement/resources/styles.css"
	type="text/css">
</head>
<body>
	<h2>Employee info</h2>
	<div id="list">
		<sf:form method="post">
			<ul>
				<li><label for="name">Name:</label> 
				<input name="name" id="name" value="${employee.name}" disabled="true" /></li>
					
				<li><label for="department">Department:</label> 
				<input name="department" id="department" value="${employee.department}" disabled="true" /></li>
					
				<li><input type="button" value="Unlock" id="unlock" /> 
				<input type="submit" value="Save" id="save" class="hidden" /></li>
					
			</ul>
		</sf:form>
	</div>
	<a href="../employees">Go Back</a>

	<script src="/TimesheetManagement/resources/jquery-1.7.1.js"></script>
	<script>
		(function() {
			$("#unlock").on("click", function() {
				$("#unlock").addClass("hidden");

				// enable stuff
				$("#name").removeAttr("disabled");
				$("#department").removeAttr("disabled");
				$("#save").removeClass("hidden");
			});
		})();
	</script>
</body>
</html>