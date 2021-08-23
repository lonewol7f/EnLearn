<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:51 PM
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

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?7208">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?5359">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?1795">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>marks-and-access</title>



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

    <!-- main-menu -->
    <div class="bloc l-bloc" id="main-menu">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col-lg-7">
                            <h3 class="mg-md">
                                Heading content
                            </h3>
                            <div class="divider-h">
                                <span class="divider"></span>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="text-center">
                                        <div class="form-group">
                                            <select class="form-control">
                                                <option value="1">
                                                    course 1
                                                </option>
                                                <option value="2">
                                                    course 2
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="text-center">
                                        <a href="#" class="btn btn-d btn-lg btn-block" data-toggle-visibility="student-marks,main-menu">Button</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div>
                            </div>
                        </div>
                        <div class="col">
                            <img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/reshot-illustration-business-problem-solving-9MNJFALXDW-4ed2d%281%29.png" class="img-fluid mx-auto d-block lazyload" alt="reshot illustration-business-problem-solving-9MNJFALXDW-4ed2d%281%29" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- main-menu END -->

    <!-- student-marks -->
    <div class="bloc l-bloc object-hidden" id="student-marks">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col-lg-7">
                            <h4 class="mg-md">
                                Course Name
                            </h4>
                        </div>
                        <div class="col offset-lg-2">
                            <a href="#" class="btn btn-d btn-lg btn-block" data-toggle-visibility="student-marks,main-menu">Close</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-7">
                            <ul class="list-unstyled">
                                <li>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="student name" />
                                    </div>
                                </li>
                                <li>
                                    <div class="form-group">
                                        <input class="form-control" />
                                    </div>
                                </li>
                                <li>
                                    <div class="form-group">
                                        <input class="form-control" />
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="col">
                            <ul class="list-unstyled">
                                <li>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="marks" />
                                    </div>
                                </li>
                                <li>
                                    <div class="form-group">
                                        <input class="form-control" />
                                    </div>
                                </li>
                                <li>
                                    <div class="form-group">
                                        <input class="form-control" />
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="col">
                            <ul class="list-unstyled">
                                <li>
                                    <div class="text-center">
                                        <a href="index.jsp" class="btn btn-lg btn-block btn-rd btn-wire">Give access</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="text-center">
                                        <a href="index.jsp" class="btn btn-lg btn-block btn-rd btn-wire">Button</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="text-center">
                                        <a href="index.jsp" class="btn btn-lg btn-block btn-rd btn-wire">Button</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- student-marks END -->

    <!-- ScrollToTop Button -->
    <a class="bloc-button btn btn-d scrollToTop" onclick="scrollToTarget('1',this)"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 32 32"><path class="scroll-to-top-btn-icon" d="M30,22.656l-14-13-14,13"/></svg></a>
    <!-- ScrollToTop Button END-->


    <!-- bloc-27 -->
    <div class="bloc l-bloc" id="bloc-27">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <h4 class="mg-md text-sm-left text-center">
                        About
                    </h4><a href="index.jsp" class="a-btn a-block footer-link">The Team</a><a href="index.jsp" class="a-btn a-block footer-link">Contact Us</a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <h4 class="mg-md text-sm-left text-center">
                        Get the app
                    </h4><a href="index.jsp" class="a-btn a-block footer-link">Android</a><a href="index.jsp" class="a-btn a-block footer-link">iOS</a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <h4 class="mg-md text-sm-left text-center">
                        Follow Us
                    </h4><a href="index.jsp" class="a-btn a-block footer-link">Twitter</a><a href="index.jsp" class="a-btn a-block footer-link">Facebook</a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <h4 class="mg-md text-sm-left text-center">
                        Connect
                    </h4>
                    <div class="row">
                        <div class="col-6 col-sm-2 col offset-sm-0">
                            <div class="text-center">
                                <a href="facebook.com"><span class="fab fa-facebook-f icon-md"></span></a>
                            </div>
                        </div>
                        <div class="col-6 col-sm-2">
                            <div class="text-center">
                                <a><span class="fab fa-twitter icon-md"></span></a>
                            </div>
                        </div>
                        <div class="col-6 col-sm-2">
                            <div class="text-center">
                                <a><span class="fab fa-instagram icon-md"></span></a>
                            </div>
                        </div>
                        <div class="col-6 col-sm-2">
                            <div class="text-center">
                                <a><span class="far fa-envelope icon-md"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-27 END -->

</div>
<!-- Main container END -->



<!-- Additional JS -->
<script src="../../resources/js/jquery.js?8669"></script>
<script src="../../resources/js/bootstrap.bundle.js?9765"></script>
<script src="../../resources/js/blocs.js?5117"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>
