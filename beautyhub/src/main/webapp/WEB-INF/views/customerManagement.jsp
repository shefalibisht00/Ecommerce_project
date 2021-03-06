<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>List of teams</h1>
	<p>Here you can see the list of the teams, edit them, remove or
		update.</p>

	<table border="1px" cellpadding="0" cellspacing="0">
		<thead>
			<tr>
				<th width="10%">id</th>
				<th width="15%">Name</th>
				<th width="10%">Email</th>
				<th width="10%">username</th>
				<th width="10%">Phone</th>
				<th width="10%">options</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="team" items="${customerList}">
				<tr>
					<td>${team.cutomerId}</td>
					<td>${team.customerName}</td>
					<td>${team.customerEmail}</td>
					<td>${team.username}</td>
					<td>${team.customerPhone}</td>
					<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
						<td><a
							href="${pageContext.request.contextPath}/editCustomer/${team.cutomerId}">Edit</a><br>
							<a href="${pageContext.request.contextPath}/delete/${team.cutomerId}">Delete</a><br>
						</td>
					</c:if>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<p>
		<a href="${pageContext.request.contextPath}/index">Home page</a>
	</p>
	...

</body>
</html>