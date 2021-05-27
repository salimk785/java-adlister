<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! int counter = 0; %>
<% counter += 1; %>

<html>
<head>
    <title>Login</title>
</head>
<body>
<%request.getParameter("username");%>
<%request.getParameter("password");%>
<h1>Login</h1>

<form method="POST" action="login.jsp">
<div>
    <label for="username">Username</label>
    <input type="text" id="username" name ="username">
</div>
<div>
    <label for="password">Password</label>
    <input type="password" id="password" name = "password">
</div>
<button type="submit">Submit</button>

</form>

<p>Thanks for visiting our site: <%= counter %> times!</p>

<p>"username" is: ${param.username}</p>
<p>"password" is: ${param.password}</p>

<c:choose>
    <c:when test="${param.username.equals('admin') && param.password.equals('password')}">
        <p>Welcome</p>
        <c:redirect url="/profile.jsp"/>
    </c:when>
<c:when test="${param.username == null && param.password == null}">
    <p>Welcome Back</p>
</c:when>
    <c:otherwise>
        <p>Dont Worry Be Happy</p>
    </c:otherwise>
</c:choose>

</body>
</html>

