<%--
  Created by IntelliJ IDEA.
  User: Pehesara
  Date: 2021-07-20
  Time: 3:59 PM
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
    <title>Confirm Expense</title>



    <!-- Analytics -->

    <!-- Analytics END -->

</head>
<body>

<!-- Preloader -->
<div id="page-loading-blocs-notifaction" class="page-preloader"></div>
<!-- Preloader END -->


<!-- Main container -->
<div class="page-container">

    <!-- bloc-0 -->
    <%@include file="header.jsp"%>
    <!-- bloc-0 END -->


    <!-- bloc-12 -->
    <div class="bloc l-bloc animDelay04" id="bloc-12">
        <div class="container bloc-lg bloc-no-padding-lg">
            <div class="row shop-heading">
                <div class="col-lg-2">
                    <h2 class="mg-md">
                        Additional Expences
                    </h2>
                </div>
                <div class="col go-dissapear">
                    <div class="divider-h">
                        <span class="divider"></span>
                    </div>
                </div>
            </div>
            <div class="row">

                <c:forEach var="expenses" items="${allExpenses}">
                    <div class="col spacing-top">
                        <div class="card">
                            <h5 class="mg-md text-lg-center">
                                <c:out value="${expenses.admin_id}" />
                            </h5>
                            <div>
                                <img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/placeholder-image.png" class="img-fluid mx-auto d-block lazyload" alt="placeholder image" />
                                <div class="divider-h">
                                    <span class="divider"></span>
                                </div>
                                <div class="text-center">
                                    <a href="index.jsp" class="btn btn-danger">Delete</a><br><br>
                                    <a href="index.jsp" class="btn btn-success">Update</a>
                                </div>
                                <div class="divider-h">
                                    <span class="divider"></span>
                                </div>
                            </div>
                        </div>
                    </div>

                </c:forEach>


            </div>
        </div>
    </div>
    <!-- bloc-12 END -->

    <%@include file="footer.jsp" %>

</div>
<!-- Main container END -->



<!-- Additional JS -->
<script src="../../resources/js/jquery.js?8669"></script>
<script src="../../resources/js/bootstrap.bundle.js?9765"></script>
<script src="../../resources/js/blocs.js?5117"></script>
<script src="../../resources/js/jqBootstrapValidation.js"></script>
<script src="../../resources/js/formHandler.js?1725"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>
