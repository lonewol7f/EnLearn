<%--
  Created by IntelliJ IDEA.
  User: Maneesha
  Date: 8/22/2021
  Time: 11:17 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<%--Created by Maneesha on 20/07/2021--%>
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
    <title>Add Discount</title>



</head>
<body>

<!-- Preloader -->
<div id="page-loading-blocs-notifaction" class="page-preloader"></div>
<!-- Preloader END -->


<!-- Main container -->
<div class="page-container">

    <!-- bloc-0 -->
    <div class="bloc l-bloc none full-width-bloc b-divider " id="bloc-0">
        <div class="container bloc-no-padding-lg">
            <div class="row">
                <div class="col">
                    <nav class="navbar row navbar-expand-md navbar-light" role="navigation">
                        <a class="navbar-brand" href="${pageContext.request.contextPath}/"><img src="../../resources/img/logo.png" alt="logo" /></a>
                        <button id="nav-toggle" type="button" class="ml-auto ui-navbar-toggler navbar-toggler border-0 p-0" data-toggle="collapse" data-target=".navbar-36863" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse navbar-36863 special-dropdown-nav  fullscreen-nav open-down">
                            <ul class="site-navigation nav navbar-nav ml-auto">
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/" class="nav-link">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/login" class="nav-link">login</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/courses/add-courses" class="nav-link">add-course</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/courses/add-videos" class="nav-link">add video</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/courses/add-quizzes" class="nav-link">add-quiz</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/students/register" class="nav-link">register-student</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/courses/" class="nav-link">course-page</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/shop" class="nav-link">shop</a>
                                </li>


                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/Add-Discount" class="nav-link">Add-Discounts</a>
                                </li>

                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/courses/create-zoom" class="nav-link">zoom-create</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/courses/select-quizzes" class="nav-link">quiz-select-page</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/portal" class="nav-link">Portal</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/courses/videos" class="nav-link">video-page</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/students/" class="nav-link">profile-page-student</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/teachers/register" class="nav-link a-btn">register-teacher</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/teachers/" class="nav-link a-btn">profile-page-teacher</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/test-lang" class="a-btn nav-link">test-lang</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/advertisers/" class="nav-link a-btn">profile-page-advertiser</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/advertisers/register" class="nav-link a-btn">register-advertiser</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/teachers/marks-and-access" class="a-btn nav-link">marks-and-access</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/teachers/notifications" class="a-btn nav-link">notification-view</a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/admins/" class="a-btn nav-link">admin-panel</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-0 END -->



    <!--Add Discount START -->
    <div class="bloc l-bloc" id="bloc-a">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div>

                        <div class="discount-box">
                            <form id="adddiscount" data-form-type="blocs-form" action="addDiscount" method="POST">
                                <h4 class="mg-md mx-auto d-block text-lg-center">
                                    Add Discount
                                </h4>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="form-label text-lg-center h5-style mx-auto d-block mg-clear btn-resize-mode">
                                            Discount title name
                                        </h5>
                                    </div>
                                    <div class="col">
                                        <div class="form-group mb-3">
                                            <input class="form-control field-style" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="form-label text-lg-center h5-style mx-auto d-block mg-clear btn-resize-mode">
                                            Discount Amount
                                        </h5>
                                    </div>
                                    <div class="col">
                                        <div class="form-group mb-3">
                                            <input class="form-control field-style" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="form-label text-lg-center h5-style mx-auto d-block mg-clear btn-resize-mode">
                                            Teacher Name
                                        </h5>
                                    </div>
                                    <div class="col">
                                        <div class="form-group mb-3">
                                            <input class="form-control field-style" />
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="form-label text-lg-center h5-style mx-auto d-block mg-clear btn-resize-mode">
                                            Course/Module
                                        </h5>
                                    </div>
                                    <div class="col">
                                        <div class="form-group mb-3">
                                            <div class="form-group mb-3 container-div-style">
                                                <select class="form-control">
                                                    <option disabled selected value>
                                                         -- Select Course/Module --
                                                    </option>
                                                    <option value="0">
                                                        Course
                                                    </option>
                                                    <option value="1">
                                                        Module
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="form-label text-lg-center h5-style mx-auto d-block mg-clear btn-resize-mode">
                                            Grade
                                        </h5>
                                    </div>
                                    <div class="col">
                                        <div class="form-group mb-3">
                                            <div class="form-group mb-3 container-div-style">
                                                <select class="form-control">
                                                    <option disabled selected value>
                                                         -- Grade --
                                                    </option>
                                                    <option value="1">
                                                        6
                                                    </option>
                                                    <option value="2">
                                                        7
                                                    </option>
                                                    <option value="2">
                                                        8
                                                    </option>
                                                    <option value="2">
                                                        9
                                                    </option>
                                                    <option value="2">
                                                        10
                                                    </option>
                                                    <option value="2">
                                                        11
                                                    </option>
                                                    <option value="2">
                                                        12
                                                    </option>
                                                    <option value="2">
                                                        13
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="form-label text-lg-center h5-style mx-auto d-block mg-clear btn-resize-mode">
                                            Discount Description
                                        </h5>
                                    </div>
                                    <div class="col">
                                        <div class="form-group mb-3">
                                            <div class="form-group mb-3">
                                                <textarea class="form-control text-area-style" rows="4" cols="50"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="form-label text-lg-center h5-style mx-auto d-block mg-clear btn-resize-mode">
                                            Upload Image
                                        </h5>
                                    </div>
                                    <div class="col">
                                        <div class="form-group mb-3">
                                            <div class="row">
                                                <div class="col-lg-3">
                                                    <a href="index.html" class="btn btn-lg w-100 btn-wire btn-button-style">Button</a>
                                                </div>
                                                <div class="col-lg-4">
                                                    <h5 class="mg-md">
                                                        No file chosen
                                                    </h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="text-center">
                                    <button class="bloc-button btn btn-d btn-lg btn-submit-style" type="submit">
                                        Submit
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>





        </div>
    </div>
    <!-- ADD Discount END -->










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

