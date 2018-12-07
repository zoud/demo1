<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: zoud
  Date: 2018/12/6
  Time: 4:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>物种</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>中文名</th>
        <th>英文名</th>
        <th>拉丁名</th>
        <th>类型</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items="${speciesList}" var="species">
        <tr>
            <td>${species.speciesChineseName}</td>
            <td>${species.speciesEnglishName}</td>
            <td>${species.speciesLatinName}</td>
            <td>${species.speciesType}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
