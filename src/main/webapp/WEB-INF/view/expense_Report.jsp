<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Maneesha
  Date: 9/5/2021
  Time: 3:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <meta name="robots" content="index, follow" />
    <link rel="shortcut icon" type="image/png" href="../../resources/img/favicon.png">


    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?759">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?7076">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?9014">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>Admin Report Page</title>
</head>
<body>
<!-- Main container -->
<div class="page-container">

    <!-- bloc-0 -->
    <%@include file="header.jsp"%>
    <!-- bloc-0 END -->

    <div class="bloc l-bloc" id="bloc-8">
        <div class="container bloc-lg" style="background: #7575aa; padding: 30px;margin-top: 40px;">
            <div class="row">
                <div class="col">
                    <h3 class="mg-md" style="text-align: center;">
                        Expense Report
                    </h3>
                    <div class="row">
                        <table  class="table">
                            <tr>
                                <th>Expense ID</th>
                                <th>Admin ID</th>
                                <th>Description</th>
                                <th>Price</th>
                                <th>Admin Name</th>
                                <th>File Name</th>
                            </tr>

                            <c:forEach items="${expenseList}" var="ex">
                                <tr>
                                    <td>${ex.id}</td>
                                    <td>${ex.admin_id}</td>
                                    <td>${ex.description}</td>
                                    <td>${ex.price}</td>
                                    <td>${ex.name}</td>
                                    <td>${ex.filename}</td>
                                <tr>
                            </c:forEach>

                            <%--<tr>
                                <td>10</td>
                                <td>Kamal</td>
                                <td>100000</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>Kamal</td>
                                <td>100000</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>Kamal</td>
                                <td>100000</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>Kamal</td>
                                <td>100000</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>Kamal</td>
                                <td>100000</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>Kamal</td>
                                <td>100000</td>
                            </tr>--%>
                        </table>
                    </div>
                    <br>
                    <div class="row">
                        <%--<button class="bloc-button btn btn-d btn-lg btn-block">Print</button>--%>
                        <spring:url value="/admins/expensePDFReport/?type=pdf" var="pdfURL" />
                        <a href="${pdfURL}" class="btn btn-warning">Download Expense PDF</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <%@include file="footer.jsp" %>
    <!-- END Footer -->

</div>
<!-- Main container END -->


<!-- Additional JS -->
<script src="../../resources/js/jquery.js?8669"></script>
<script src="../../resources/js/bootstrap.bundle.js?9765"></script>
<script src="../../resources/js/blocs.js?5117"></script>
<script src="../../resources/js/jqBootstrapValidation.js"></script>
<script src="../../resources/js/formHandler.js?1725"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script>
<!-- Additional JS END -->

</body>
</html>
