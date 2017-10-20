<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Cannot delete employee</title>
</head>
<body>
    Oops! Resource <a href="${employee.id}">${employee.name}</a> can not be deleted.
        Make sure employee doesn't have assigned any task or active timesheet.
 
 
<a href="../welcome">Back to main page.</a>
</body>
</html>