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
    <input type="text" id="username">
</div>
<div>
    <label for="password">Username</label>
    <input type="password" id="password">
</div>
<button type="submit">Submit</button>

</form>

</body>
</html>

