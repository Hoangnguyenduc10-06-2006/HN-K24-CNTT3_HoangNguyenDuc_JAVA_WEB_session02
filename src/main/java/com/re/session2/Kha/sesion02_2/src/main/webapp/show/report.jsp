<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/9/2026
  Time: 12:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Báo cáo điểm</title>
</head>
<body>
<h1><c:out value="${reportTitle}"></c:out></h1>


<table border="1">
    <tr>
        <th>STT</th>
        <th>Họ tên</th>
        <th>Điểm</th>
        <th>Xếp loại</th>
    </tr>
    <c:forEach var="s" items="${studentList}" varStatus="foreach">
        <tr>
            <td>${foreach.index + 1}</td>
            <td><c:out value="${s.name}"></c:out></td>
            <td> <c:out value="${s.score}"></c:out></td>
            <td>



                <c:choose>
                    <c:when test="${s.score>=90}">xuất xắc</c:when>
                    <c:when test="${s.score>=80}">giỏi</c:when>
                    <c:when test="${s.score>=70}">khá</c:when>
                    <c:when test="${s.score>=60}">trung bình khá</c:when>
                    <c:when test="${s.score<60}">yếu</c:when>
                </c:choose>
            </td>
        </tr>

    </c:forEach>
</table>

</body>
</html>

