<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 94764
  Date: 10/2/2021
  Time: 2:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Discount Report</title>
</head>
<body>

    <table border="1">
        <thead>
            <tr>
                <td>id</td>
                <td>admin_id</td>
                <td>discount</td>
                <td>teacher_name</td>
                <td>course</td>
                <td>image</td>
                <td>description</td>
                <td>grade</td>
                <td>title</td>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${discountList}" var="discount">
                <tr>
                    <td>${discount.id}</td>
                    <td>${discount.admin_id}</td>
                    <td>${discount.discount}</td>
                    <td>${discount.teacher_name}</td>
                    <td>${discount.course}</td>
                    <td>${discount.image}</td>
                    <td>${discount.description}</td>
                    <td>${discount.grade}</td>
                    <td>${discount.title}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <spring:url value="/discounts/discountPDFReport/?type=pdf" var="pdfURL" />
    <a href="${pdfURL}">Download PDF</a>

</body>
</html>
