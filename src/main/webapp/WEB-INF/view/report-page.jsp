<%--
  Created by IntelliJ IDEA.
  User: 94764
  Date: 9/5/2021
  Time: 2:56 PM
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

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?3942">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?1901">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?3351">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>Report Page</title>
</head>
<body>
    <!-- Main container -->
    <div class="page-container">

        <!-- bloc-0 -->
        <%@include file="header.jsp"%>
        <!-- bloc-0 END -->

        <!-- Back Button START -->
        <div class="container mt-lg-5">
            <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/admins/" role="button">Back</a>
        </div>
        <!-- Back Button END -->

        <!-- bloc-30 -->
        <div class="bloc l-bloc" id="bloc-30">
            <div class="container bloc-lg">
                <div class="row">
                    <div class="col">
                        <h3 class="mg-md">
                            Report Panel<br>
                        </h3>
                        <div class="divider-h">
                            <span class="divider"></span>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="text-center">
                                    <a href="${pageContext.request.contextPath}/admins/expensePDFReport" class="btn btn-d btn-lg btn-block" >Expense Report</a>
                                </div>
                            </div>
                            <div class="col">
                                <div class="text-center">
                                    <a href="${pageContext.request.contextPath}/#" class="btn btn-d btn-lg btn-block" >#</a>
                                </div>
                            </div>
                            <div class="col">
                                <div class="text-center">
                                    <a href="${pageContext.request.contextPath}/discounts/discountPDFReport" class="btn btn-d btn-lg btn-block" >Discount Rate Report</a>
                                    <a href="${pageContext.request.contextPath}/#" class="btn btn-d btn-lg btn-block" >#</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer START -->
        <%@include file="footer.jsp" %>
        <!-- Footer END -->

    </div>

</body>
</html>
