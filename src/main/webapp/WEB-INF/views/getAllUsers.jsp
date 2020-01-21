<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="users" scope="request" type="java.util.List<mate.academy.internetshop.model.User>"/>
<jsp:useBean id="greeting" scope="request" type="java.lang.String"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Users</title>
</head>
<body>

<h1>All Users, ${greeting}!</h1>

<table border="2">
    <tr>
        <th>ID</th>
        <th>Login</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Rolex</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>
                <c:out value="${user.id}" />
            </td>
            <td>
                <c:out value="${user.login}" />
            </td>
            <td>
                <c:out value="${user.name}" />
            </td>
            <td>
                <c:out value="${user.surname}" />
            </td>
            <td>
                <a href="/internetshop2_war_exploded/servlet/deleteUser?user_id=${user.id}">DELETE</a>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<form action="${pageContext.request.contextPath}/servlet/registration">
    <button>ADD NEW USER</button>
</form>
<form action="${pageContext.request.contextPath}/index">
    <button>BACK HOME</button>
</form>
</body>
</html>
