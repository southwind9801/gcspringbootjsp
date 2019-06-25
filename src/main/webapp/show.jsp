<%--
  Created by IntelliJ IDEA.
  User: southwind
  Date: 2019-06-04
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>用户信息</h1>
    <table>
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>性别</th>
        </tr>
        <c:forEach items="${requestScope.list}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>
                    <c:if test="${user.gender == 1}">男</c:if>
                    <c:if test="${user.gender == 0}">女</c:if>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
