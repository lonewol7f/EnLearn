<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:52 PM
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
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/favicon.png">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css?5573">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css?3600">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.css?9309">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>notification-view</title>



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
    <div class="bloc l-bloc none full-width-bloc b-divider " id="bloc-0">
        <div class="container bloc-no-padding-lg">
            <div class="row">
                <div class="col">
                    <nav class="navbar row navbar-expand-md navbar-light" role="navigation">
                        <a class="navbar-brand" href="index.jsp"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="logo" /></a>
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

    <!-- bloc-29 -->
    <div class="bloc l-bloc" id="bloc-29">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col-lg-3">
                            <div>
                            </div>
                        </div>
                        <div class="col">
                            <ul class="nav nav-tabs" id="nav-40313-tab" role="tablist">
                                <li class="nav-item">
                                    <a class="a-btn nav-link active content-box-1 select-box-notif" id="nav-40313-tab-1" data-toggle="tab" href="#nav-40313-content-1" role="tab" aria-controls="nav-40313-content-1" aria-selected="true">Messages</a>
                                </li>
                                <li class="nav-item">
                                    <a class="a-btn nav-link content-box-2 select-box-notif" id="nav-40313-tab-2" data-toggle="tab" href="#nav-40313-content-2" role="tab" aria-controls="nav-40313-content-2" aria-selected="false">Admin Messages</a>
                                </li>
                                <li class="nav-item">
                                    <a class="a-btn nav-link content-box-3 select-box-notif" id="nav-40313-tab-3" data-toggle="tab" href="#nav-40313-content-3" role="tab" aria-controls="nav-40313-content-3" aria-selected="false">Events</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="nav-40313-content-1" role="tabpanel" aria-labelledby="nav-40313-content-1">
                                    <div>
                                        <div class="row">
                                            <div class="offset-lg-1 col-lg-6">
                                                <div class="form-group">
                                                    <select class="form-control">
                                                        <option value="0">
                                                            Option 1
                                                        </option>
                                                        <option value="1">
                                                            Option 2
                                                        </option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col offset-lg-0">
                                                <a href="${pageContext.request.contextPath}/" class="btn btn-d btn-lg btn-block btn-76-style btn-rd">Button</a>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <div>
                                                    <div class="blockquote">
                                                        <p>
                                                            Lorem ipsum dolor sit amet, adipiscing elit Aenean commodo ligula eget.
                                                        </p>
                                                    </div><a href="index.jsp" class="btn btn-lg float-lg-right btn-77-style btn-wire">Go to Video</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <div>
                                                    <div class="blockquote">
                                                        <p>
                                                            Lorem ipsum dolor sit amet, adipiscing elit Aenean commodo ligula eget.
                                                        </p>
                                                    </div><a href="index.jsp" class="btn btn-lg float-lg-right btn-77-style btn-wire">Go to Video</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <div>
                                                    <div class="blockquote">
                                                        <p>
                                                            Lorem ipsum dolor sit amet, adipiscing elit Aenean commodo ligula eget.
                                                        </p>
                                                    </div><a href="index.jsp" class="btn btn-lg float-lg-right btn-77-style btn-wire">Go to Video</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <div>
                                                    <div class="blockquote">
                                                        <p>
                                                            Lorem ipsum dolor sit amet, adipiscing elit Aenean commodo ligula eget.
                                                        </p>
                                                    </div><a href="index.jsp" class="btn btn-lg float-lg-right btn-77-style btn-wire">Go to Video</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade-tab-bs" id="nav-40313-content-2" role="tabpanel" aria-labelledby="nav-40313-content-2">
                                    <div class="blockquote">
                                        <p>
                                            Lorem ipsum dolor sit amet, adipiscing elit Aenean commodo ligula eget.
                                        </p>
                                    </div>
                                    <div class="blockquote">
                                        <p>
                                            Lorem ipsum dolor sit amet, adipiscing elit Aenean commodo ligula eget.
                                        </p>
                                    </div>
                                    <div class="blockquote">
                                        <p>
                                            Lorem ipsum dolor sit amet, adipiscing elit Aenean commodo ligula eget.
                                        </p>
                                    </div>
                                    <div class="blockquote">
                                        <p>
                                            This message will be sent to admins , make sure to make it short and sweet<br>
                                        </p>
                                        <div class="row">
                                            <div class="col-lg-9">
                                                <div class="form-group">
                                                    <input class="form-control" />
                                                </div>
                                            </div>
                                            <div class="col offset-lg--1">
                                                <div class="text-center">
                                                    <a href="index.jsp" class="btn btn-d btn-lg btn-81-style">Send</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade-tab-bs" id="nav-40313-content-3" role="tabpanel" aria-labelledby="nav-40313-content-3">
                                    <div class="row">
                                        <div class="col">
                                            <div class="card">
                                                <div class="divider-h">
                                                    <span class="divider"></span>
                                                </div>
                                                <h1 class="mg-md text-lg-center">
                                                    21 may
                                                </h1>
                                                <div class="divider-h">
                                                    <span class="divider"></span>
                                                </div>
                                                <h3 class="mg-md text-lg-center">
                                                    What
                                                </h3>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="card">
                                                <div class="divider-h">
                                                    <span class="divider"></span>
                                                </div>
                                                <h1 class="mg-md text-lg-center">
                                                    21 may
                                                </h1>
                                                <div class="divider-h">
                                                    <span class="divider"></span>
                                                </div>
                                                <h3 class="mg-md text-lg-center">
                                                    What
                                                </h3>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="card">
                                                <div class="divider-h">
                                                    <span class="divider"></span>
                                                </div>
                                                <h1 class="mg-md text-lg-center">
                                                    21 may
                                                </h1>
                                                <div class="divider-h">
                                                    <span class="divider"></span>
                                                </div>
                                                <h3 class="mg-md text-lg-center">
                                                    What
                                                </h3>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="card">
                                                <div class="divider-h">
                                                    <span class="divider"></span>
                                                </div>
                                                <h1 class="mg-md text-lg-center">
                                                    21 may
                                                </h1>
                                                <div class="divider-h">
                                                    <span class="divider"></span>
                                                </div>
                                                <h3 class="mg-md text-lg-center">
                                                    What
                                                </h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-29 END -->

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
<script src="${pageContext.request.contextPath}/resources/js/jquery.js?8669"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.js?9765"></script>
<script src="${pageContext.request.contextPath}/resources/js/blocs.js?5117"></script>
<script src="${pageContext.request.contextPath}/resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>
