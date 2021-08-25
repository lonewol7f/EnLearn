<%--
  Created by IntelliJ IDEA.
  User: hasin
  Date: 8/25/2021
  Time: 2:36 AM
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

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?4482">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?4530">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?7280">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>add video</title>



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

    <!-- bloc-6 -->
    <div class="bloc l-bloc" id="bloc-6">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col">
                            <h3 class="mg-md">
                                Create Course
                            </h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <form id="add-video" data-form-type="blocs-form" action="add-video-action" method="POST">
                                <div class="form-group">
                                    <label>
                                        Course Name
                                    </label>
                                    <input id="course_name" class="form-control" required name="course_name" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        Course Fee
                                    </label>
                                    <input id="course_fee" class="form-control" required name="course_fee" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        Description
                                    </label>
                                    <input id="description" class="form-control" required name="description" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        Photo
                                    </label>
                                    <input type="file" id="image" class="form-control" required name="image" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        Description
                                    </label>
                                    <div class="form-group">
                                        <textarea class="form-control" rows="4" cols="50" id="textarea_1485" name="textarea_1485"></textarea>
                                    </div>
                                </div>
                                <button class="bloc-button btn btn-d btn-lg btn-block" type="submit">
                                    Submit
                                </button><a class="btn btn-lg btn-block btn-wire" href="add-course.jsp">Go Back</a>
                            </form>
                        </div>
                        <div class="col offset-lg-1">
                            <div class="video-box">
                                <div class="embed-responsive embed-responsive-16by9 video-style">
                                    <iframe class="embed-responsive-item lazyload" src="../../resources/img/lazyload-ph.png" data-src="https://www.youtube.com/embed/o6ifhsL4kKw" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                                    </iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-6 END -->

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
<script src="../../resources/js/jqBootstrapValidation.js"></script>
<script src="../../resources/js/formHandler.js?40"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>
