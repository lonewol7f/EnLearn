<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:54 PM
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
    <meta name="robots" content="index, follow"/>
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/favicon.png">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css?8155">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css?63">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.css?5610">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <title>quiz-select-page</title>


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
    <%@include file="header.jsp" %>
    <!-- bloc-0 END -->

    <!-- bloc-15 -->
    <div class="bloc l-bloc" id="bloc-15">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col">
                            <div>
                                <a href="${pageContext.request.contextPath}/courses/videos"
                                   class="btn btn-lg go-back-btn btn-wire">Go Back</a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <h3 class="mg-md h3-13-style">
                                Select Prefered Quiz Type
                            </h3>
                        </div>
                        <div class="col offset-lg-5">
                            <div class="text-lg-right">
                                <img class="img-fluid img-32-style lazyload"
                                     src="${pageContext.request.contextPath}/resources/img/lazyload-ph.png"
                                     data-src="${pageContext.request.contextPath}/resources/img/112-book-morph-outline.gif"
                                     alt="112 book-morph-outline"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h3 class="mg-md text-lg-center">
                                MCQ
                            </h3>
                            <div class="text-center">
                                <a href="index.jsp" class="btn btn-d btn-lg btn-52-style">Start</a>
                            </div>
                        </div>
                        <div class="col">
                            <h3 class="mg-md text-lg-center">
                                Essay + Structured
                            </h3>
                            <div class="text-center">
                                <a href="index.jsp" class="btn btn-d btn-lg btn-53-style">Start</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="divider-h">
                        <span class="divider"></span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col-lg-6">
                            <h3 class="mg-md h3-13-style">
                                Submit Result Screenshot
                            </h3>
                        </div>
                        <div class="col offset-lg-5">
                            <div class="text-lg-right">
                                <img class="img-fluid img-32-style lazyload"
                                     src="${pageContext.request.contextPath}/resources/img/lazyload-ph.png"
                                     data-src="${pageContext.request.contextPath}/resources/img/1103-confetti-outline.gif"
                                     alt="112 book-morph-outline"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h3 class="mg-md text-lg-center">
                                MCQ
                            </h3>
                            <div class="text-center">
                                <a href="index.jsp" class="btn btn-d btn-lg btn-52-style">Send</a>
                            </div>
                        </div>
                        <div class="col">
                            <h3 class="mg-md text-lg-center">
                                Essay + Structured
                            </h3>
                            <div class="text-center">
                                <a href="index.jsp" class="btn btn-d btn-lg btn-53-style">Send</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <img class="img-fluid lazyload test-img"
                 src="${pageContext.request.contextPath}/resources/img/lazyload-ph.png"
                 data-src="${pageContext.request.contextPath}/resources/img/reshot-illustration-quiz-time-card-with-colorful.png"
                 width="550rem" height="550rem"
                 style="position:absolute; top: 30%;left: 35%; z-index: -999"
                 alt="reshot-illustration-quiz-time-card-with-colorful"/>

        </div>
    </div>


    <%@include file="footer.jsp" %>

</div>
<!-- Main container END -->


<!-- Additional JS -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.js?8669"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.js?9765"></script>
<script src="${pageContext.request.contextPath}/resources/js/blocs.js?5117"></script>
<script src="${pageContext.request.contextPath}/resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>

