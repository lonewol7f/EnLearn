<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:58 PM
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

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?9078">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?524">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?5388">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>register-student</title>



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
                        <a class="navbar-brand" href="index.jsp"><img src="../../resources/img/logo.png" alt="logo" /></a>
                        <button id="nav-toggle" type="button" class="ml-auto ui-navbar-toggler navbar-toggler border-0 p-0" data-toggle="collapse" data-target=".navbar-36863" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse navbar-36863 special-dropdown-nav  fullscreen-nav open-down">
                            <ul class="site-navigation nav navbar-nav ml-auto">
                                <li class="nav-item">
                                    <a href="index.jsp" class="nav-link">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a href="login.jsp" class="nav-link">login</a>
                                </li>
                                <li class="nav-item">
                                    <a href="add-course.jsp" class="nav-link">add-course</a>
                                </li>
                                <li class="nav-item">
                                    <a href="add-video.jsp" class="nav-link">add video</a>
                                </li>
                                <li class="nav-item">
                                    <a href="add-quiz.jsp" class="nav-link">add-quiz</a>
                                </li>
                                <li class="nav-item">
                                    <a href="register-student.jsp" class="nav-link">register-student</a>
                                </li>
                                <li class="nav-item">
                                    <a href="course-page.jsp" class="nav-link">course-page</a>
                                </li>
                                <li class="nav-item">
                                    <a href="shop.jsp" class="nav-link">shop</a>
                                </li>
                                <li class="nav-item">
                                    <a href="zoom-create.jsp" class="nav-link">zoom-create</a>
                                </li>
                                <li class="nav-item">
                                    <a href="quiz-select-page.jsp" class="nav-link">quiz-select-page</a>
                                </li>
                                <li class="nav-item">
                                    <a href="portal.jsp" class="nav-link">Portal</a>
                                </li>
                                <li class="nav-item">
                                    <a href="video-page.jsp" class="nav-link">video-page</a>
                                </li>
                                <li class="nav-item">
                                    <a href="profile-page-student.jsp" class="nav-link">profile-page-student</a>
                                </li>
                                <li class="nav-item">
                                    <a href="register-teacher.jsp" class="nav-link a-btn">register-teacher</a>
                                </li>
                                <li class="nav-item">
                                    <a href="profile-page-teacher.jsp" class="nav-link a-btn">profile-page-teacher</a>
                                </li>
                                <li class="nav-item">
                                    <a href="test-lang.jsp" class="a-btn nav-link">test-lang</a>
                                </li>
                                <li class="nav-item">
                                    <a href="profile-page-advertiser.jsp" class="nav-link a-btn">profile-page-advertiser</a>
                                </li>
                                <li class="nav-item">
                                    <a href="register-advertiser.jsp" class="nav-link a-btn">register-advertiser</a>
                                </li>
                                <li class="nav-item">
                                    <a href="marks-and-access.jsp" class="a-btn nav-link">marks-and-access</a>
                                </li>
                                <li class="nav-item">
                                    <a href="notification-view.jsp" class="a-btn nav-link">notification-view</a>
                                </li>
                                <li class="nav-item">
                                    <a href="admin-panel.jsp" class="a-btn nav-link">admin-panel</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-0 END -->

    <!-- bloc-8 -->
    <div class="bloc l-bloc" id="bloc-8">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <h3 class="mg-md">
                        Student Registration - School
                    </h3><img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/21-avatar-outline.gif" class="img-fluid img-bloc-8-style float-lg-none mg-md lazyload" alt="21 avatar-outline" />
                    <div class="row">
                        <div class="col-lg-8">
                            <form id="form_19919" data-form-type="blocs-form" action="custom-action-url" method="POST">
                                <div class="form-group">
                                    <label>
                                        Name
                                    </label>
                                    <input id="name7_10830_22096_19919" class="form-control" required name="name7" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        Email
                                    </label>
                                    <input id="email7_10830_22096_19919" class="form-control" type="email" data-error-validation-msg="Not a valid email address" required name="email7" />
                                </div>
                                <div class="form-group">
                                    <div class="form-group">
                                        <label>
                                            Profile Picture
                                        </label>
                                        <div class="row">
                                            <div class="col">
                                                <div class="text-center">
                                                    <a href="index.jsp" class="btn btn-lg btn-wire btn-26-style">Upload a photo</a>
                                                </div>
                                            </div>
                                            <div class="col no-margin">
                                                <h6 class="mg-md">
                                                    No picture Selected
                                                </h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            School
                                        </label>
                                        <input class="form-control" id="input_782_10830_22096_19919" name="input_782" />
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            Grade&nbsp;<br>
                                        </label>
                                        <div class="form-group">
                                            <select class="form-control" id="select_2708" name="select_2708">
                                                <option value="1">
                                                    Grade 1
                                                </option>
                                                <option value="2">
                                                    Grade 2
                                                </option>
                                                <option value="3">
                                                    Grade 3
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="input_79_10830_22096_19919" name="input_79" data-placement="top" data-toggle="tooltip" title="Be Sure to Read" />
                                                <label class="form-check-label">
                                                    I Agree to These
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <a href="#" class="a-btn a-block" data-toggle="modal" data-target="#modal-27160">Terms and Conditions</a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div id="modal-27160" class="modal fade" tabindex="-1" role="dialog">
                                                <div class="modal-dialog  modal-dialog-centered" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h3 class="mg-clear">
                                                                Terms and Conditions
                                                            </h3>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="text-lg-center">
                                                                <img class="img-fluid img-13-style lazyload" src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/966-privacy-policy-outline.gif" alt="966 privacy-policy-outline" />
                                                            </div>
                                                            <p>
                                                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                                                            </p>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <a href="#" class="btn btn-d btn-lg" data-toggle="modal" data-target="#modal-27160">Agree and Close</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="divider-h">
                                    <span class="divider"></span>
                                </div>
                                <button class="bloc-button btn btn-d btn-lg btn-block" type="submit">
                                    Submit
                                </button>
                            </form>
                        </div>
                        <div class="col">
                            <img class="img-fluid lazyload" src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/reshot-illustration-students-at-the-library-3ESJPLQFHR.png" alt="reshot illustration-students-at-the-library-3ESJPLQFHR" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-8 END -->

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
<script src="../../resources/js/formHandler.js?3891"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>

