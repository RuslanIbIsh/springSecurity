<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>com.iri.Company Home Page</title>
</head>
<body>
<h2>Company Home Page</h2>
<hr>
Welcome to the com.iri company home page !
<hr>
User: <security:authentication property="principal.username"/>
<br>
Role(s): <security:authentication property="principal.authorities"/>
<hr>
<security:authorize access="hasRole('MANAGER')">
    <a href="${pageContext.request.contextPath}/leaders">Leaders only</a>
</security:authorize>
<security:authorize access="hasRole('ADMIN')">
    <a href="${pageContext.request.contextPath}/systems">System Administrator</a>
</security:authorize>
<form:form action="${pageContext.request.contextPath}/logout"
method="post">
    <input type="submit" value="Logout"/>
</form:form>
</body>
</html>