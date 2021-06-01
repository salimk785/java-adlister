<%--
  Created by IntelliJ IDEA.
  User: salimkhan
  Date: 6/1/21
  Time: 11:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Ads</title>
</head>
<body>
<h1>Here are all the Ads:</h1>

<c:forEach var="Ad" items="${Ad}">
    <div class="Ad">
        <h2>${Ad.title}</h2>
        <p>${Ad.description}</p>
    </div>
</c:forEach>
</body>
</html>
