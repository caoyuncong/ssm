<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/25
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/commons/inc.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>${sessionScope.course.title}</h1>
<c:choose>
    <c:when test="${fn:length(sessionScope.course.students) eq 0}">
        没有学生
    </c:when>
    <c:otherwise>
        <ol>
            <c:forEach var="student" items="${sessionScope.course.students}">
                <li>${student.name}</li>
            </c:forEach>
        </ol>
    </c:otherwise>
</c:choose>
</body>
</html>
