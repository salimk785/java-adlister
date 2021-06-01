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

<c:forEach var="Ads" items="${Ads}">
    <div class="Ads">
        <h2>${Ads.name}</h2>
        <p>Price: $ ${Ads.price}</p>
    </div>
</c:forEach>
</body>
</html>
