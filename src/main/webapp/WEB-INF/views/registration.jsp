<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Student Registration Form</title>

<style>

	.error {
		color: #ff0000;
	}
</style>

</head>

<body>

	<h2>Registration Form</h2>
 
	<form:form method="POST" modelAttribute="student">
		<form:input type="hidden" path="id" id="id"/>
		<table>
			<tr>
				<td><label for="name">Name: </label> </td>
				<td><form:input path="name" id="name"/></td>
				<td><form:errors path="name" cssClass="error"/></td>
		    </tr>
	    
			<tr>
				<td><label for="enteringDate">Entering Date: </label> </td>
				<td><form:input path="enteringDate" id="enteringDate"/></td>
				<td><form:errors path="enteringDate" cssClass="error"/></td>
		    </tr>
	
			<tr>
				<td><label for="nationality">Nationality: </label> </td>
				<td><form:input path="nationality" id="nationality"/></td>
				<td><form:errors path="nationality" cssClass="error"/></td>
		    </tr>
	
			<tr>
				<td><label for="code">CODE: </label> </td>
				<td><form:input path="code" id="code"/></td>
				<td><form:errors path="code" cssClass="error"/></td>
		    </tr>
	
			<tr>
				<td colspan="3">
					<c:choose>
						<c:when test="${edit}">
							<input type="submit" value="Update"/>
						</c:when>
						<c:otherwise>
							<input type="submit" value="Register"/>
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
		</table>
	</form:form>
	<br/>
	<br/>
	Go back to <a href="<c:url value='/list' />">List of All Students</a>
</body>
</html>