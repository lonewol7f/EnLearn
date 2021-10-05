@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 94764
  Date: 9/5/2021
  Time: 3:24 PM
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
    <title>Discount Rate Report</title>
</head>
<body>
<!-- Main container -->
<div class="page-container">

    <!-- bloc-0 -->
    <%@include file="header.jsp"%>
    <!-- bloc-0 END -->

    <!-- Back Button START -->
    <div class="container mt-lg-5">
        <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/report" role="button">Back</a>
    </div>
    <!-- Back Button END -->

    <%--<div class="bloc l-bloc" id="bloc-8">
      <div class="container bloc-lg">
        <div class="row">
          <div class="col" style="background-color: #5cc4d2">
            <h3 class="mg-md" style="text-align: center">
              Discount Rate Report
            </h3>
            &lt;%&ndash;<img class="img-fluid lazyload test-img" src="${pageContext.request.contextPath}/resources/img/discount.png" data-src="${pageContext.request.contextPath}/resources/img/discount.png" width="450rem" height="450rem"  style="position: relative;left: 32%; padding-bottom: 30px;" alt="Discount Image" />&ndash;%&gt;
            <div class="row">
              <table  class="table">
                <tr>
                  <th>Discount ID</th>
                  <th>Admin ID</th>
                  <th>Discount</th>
                  <th>Teacher Name</th>
                  <th>Course</th>
                  <th>Grade</th>
                </tr>

                <c:forEach items="${discountList}" var="discount">
                  <tr>
                    <td>${discount.id}</td>
                    <td>${discount.admin_id}</td>
                    <td>${discount.discount}</td>
                    <td>${discount.teacher_name}</td>
                    <td>${discount.course}</td>
                    <td>${discount.grade}</td>
                  </tr>
                  </c:forEach>
              </table>
            </div>
            <br>

            <hr style="color: #8e2e48; height: 3px;">

            <div class="row">
              <spring:url value="/discounts/discountPDFReport/?type=pdf" var="pdfURL" />
              <a href="${pdfURL}" class="bloc-button btn btn-d btn-lg btn-block">Download PDF</a>
            </div>

            <hr style="color: #8e2e48; height: 3px;">
          </div>
        </div>
      </div>
    </div>--%>




    <div class="bloc l-bloc" id="bloc-8">
        <div class="container bloc-lg" style="background-color: #abb7bd; padding: 30px; margin-top: 30px;">
            <div class="row">
                <div class="col">
                    <h1 class="mg-md text-center" style="color: #000000">
                        Discount Rate Report
                    </h1>
                </div>
                <div class="col text-center">
                    <spring:url value="/discounts/discountPDFReport/?type=pdf" var="pdfURL" />
                    <a href="${pdfURL}" class="btn btn-outline-light">Download PDF</a>
                </div>
            </div>
            <%--<img class="img-fluid lazyload test-img" src="${pageContext.request.contextPath}/resources/img/discount.png" data-src="${pageContext.request.contextPath}/resources/img/discount.png" width="450rem" height="450rem"  style="position: relative;left: 32%; padding-bottom: 30px;" alt="Discount Image" />--%>
            <div class="row">
                <table  class="table" style="color: #34ce57;">
                    <tr>
                        <th>Advertisement ID</th>
                        <th>Advertiser ID</th>
                        <th>Company Name</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Package</th>
                    </tr>

                    <c:forEach items="${discountList}" var="discount">
                        <tr>
                            <td>${discount.id}</td>
                            <td>${discount.admin_id}</td>
                            <td>${discount.discount}</td>
                            <td>${discount.teacher_name}</td>
                            <td>${discount.course}</td>
                            <td>${discount.grade}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <%--<br>

            <hr style="color: #8e2e48; height: 3px;">--%>

            <%--<div class="row">
              <spring:url value="/discounts/discountPDFReport/?type=pdf" var="pdfURL" />
              <a href="${pdfURL}" class="bloc-button btn btn-d btn-lg btn-block">Download PDF</a>
            </div>--%>

            <%--<hr style="color: #8e2e48; height: 3px;">--%>

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
