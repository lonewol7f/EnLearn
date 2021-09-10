<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 4:01 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<!--Created by Yasas on 20/07/2021-->
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <meta name="robots" content="index, follow" />
    <link rel="shortcut icon" type="image/png" href="../../resources/img/favicon.png">

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?1465">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?3550">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?6417">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>Home</title>



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

    <!-- bloc-1 -->
    <div class="bloc l-bloc" id="bloc-1">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <h1 class="mg-md">
                        this will be the home page later on the line
                    </h1>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-1 END -->

    <!-- bloc-2 -->
    <div class="bloc l-bloc" id="bloc-2">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col-md-4">
                    <img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/placeholder-user.png" class="img-fluid rounded-circle mx-auto d-block img-2-style animated pulse-hvr lazyload" alt="placeholder user" />
                    <div>
                        <h4 class="text-lg-center mg-clear h4-style text-sm-center text-center">
                            Student Registration
                        </h4>
                    </div>
                </div>
                <div class="col-md-4">
                    <img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/placeholder-user.png" class="img-fluid rounded-circle mx-auto d-block img-2-style animated pulse-hvr lazyload" alt="placeholder user" />
                    <div>
                        <h4 class="text-lg-center mg-clear h4-style text-sm-center text-center">
                            Teacher Registration
                        </h4>
                    </div>
                </div>
                <div class="col-md-4">
                    <img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/placeholder-user.png" class="img-fluid rounded-circle mx-auto d-block img-2-style animated pulse-hvr lazyload" alt="placeholder user" />
                    <div>
                        <h4 class="text-lg-center mg-clear h4-style text-sm-center text-center">

                            <a href="${pageContext.request.contextPath}/advertisers/register">Advertiser Registration </a>

                        </h4>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-2 END -->

    <%@include file="footer.jsp" %>

</div>
<!-- Main container END -->



<!-- Additional JS -->
<script src="../../resources/js/jquery.js?8669"></script>
<script src="../../resources/js/bootstrap.bundle.js?9765"></script>
<script src="../../resources/js/blocs.js?5117"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>
