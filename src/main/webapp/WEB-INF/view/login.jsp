<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:50 PM
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

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?8700">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?4257">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?8726">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>login</title>



    <!-- Analytics -->

    <!-- Analytics END -->

</head>
<body>

<!-- Preloader -->
<div id="page-loading-blocs-notifaction" class="page-preloader"></div>
<!-- Preloader END -->


<!-- Main container -->
<div class="page-container">

    <!-- bloc-3 -->
    <div class="bloc l-bloc full-width-bloc bloc-fill-screen d-md-flex  d-none" id="bloc-3">
        <div class="container">
            <div class="row">
                <div class="col">
                    <a href="${pageContext.request.contextPath}/" class="btn btn-lg go-to-home btn-wire">Go Back</a>
                    <div id="login-slides" class="carousel slide" data-ride="carousel" data-interval="false">
                        <ol class="carousel-indicators hide-indicators">
                            <li data-target="#login-slides" data-slide-to="0" class="active">
                            </li>
                            <li data-target="#login-slides" data-slide-to="1">
                            </li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <img alt="slide 2" class="d-inline-block w-100" src="../../resources/img/reshot-illustration-system-user-login-GTQRL8HFXU.png" />
                                <div class="carousel-caption login-register-form-box">
                                    <form id="login-form" data-form-type="blocs-form" class="login-form-placement form-style" action="login-action" method="POST">
                                        <h3 class="mg-md text-lg-left">
                                            Login
                                        </h3>
                                        <div class="form-group">
                                            <label>
                                                Email
                                            </label>
                                            <input id="email" class="form-control" type="email" data-error-validation-msg="Not a valid email address" required name="email" />
                                        </div>
                                        <div class="form-group">
                                            <label>
                                                Password
                                            </label>
                                            <input id="email" class="form-control" type="password" required name="email" />
                                        </div>
                                        <div class="divider-h no-margin">
                                            <span class="divider"></span>
                                        </div>
                                        <button class="bloc-button btn btn-d btn-lg btn-block" type="submit">
                                            Login
                                        </button>
                                    </form>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-inline-block w-100" alt="slide 3" src="../../resources/img/reshot-illustration-user-login-3HNWGDRT5M.png" />
                                <div class="carousel-caption login-register-form-box">
                                    <form id="register_form" data-form-type="blocs-form" class="login-form-placement form-bloc-3-style" action="register" method="POST">
                                        <div class="form-group">
                                            <h3 class="mg-md text-lg-left">
                                                Register
                                            </h3>
                                            <label>
                                                Name
                                            </label>
                                            <input id="name2" class="form-control" required name="name2" />
                                        </div>
                                        <div class="form-group">
                                            <label>
                                                Email
                                            </label>
                                            <input id="email2" class="form-control" type="email" data-error-validation-msg="Not a valid email address" required name="email2" />
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="optin2" data-validation-minchecked-message="You must agree to this before you register to take services of our site." data-validation-minchecked-minchecked="1" name="optin2" />
                                            <label class="form-check-label">
                                                I Agree yadi yada ….
                                            </label>
                                        </div>
                                        <div class="divider-h">
                                            <span class="divider"></span>
                                        </div>
                                        <button class="bloc-button btn btn-d btn-lg btn-block" type="submit">
                                            Submit
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div><a class="carousel-nav-controls carousel-control-prev" href="#login-slides" role="button" data-slide="prev"><svg width="26" height="26" viewBox="0 0 32 32"><path class="carousel-nav-icon carousel-prev-icon" d="M22,2L9,16,22,30"></path></svg><span class="sr-only">Previous</span></a><a class="carousel-nav-controls carousel-control-next" href="#login-slides" role="button" data-slide="next"><svg width="26" height="26" viewBox="0 0 32 32"><path class="carousel-nav-icon carousel-next-icon" d="M10.344,2l13,14-13,14"></path></svg><span class="sr-only">Next</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-3 END -->

    <!-- bloc-4 -->
    <div class="bloc l-bloc  d-md-none d-flex bloc-fill-screen" id="bloc-4">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="text-center">
                        <a href="index.jsp" class="btn btn-d btn-lg btn-style">Login With google</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-4 END -->

    <!-- ScrollToTop Button -->
    <a class="bloc-button btn btn-d scrollToTop" onclick="scrollToTarget('1',this)"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 32 32"><path class="scroll-to-top-btn-icon" d="M30,22.656l-14-13-14,13"/></svg></a>
    <!-- ScrollToTop Button END-->


</div>
<!-- Main container END -->



<!-- Additional JS -->
<script src="../../resources/js/jquery.js?8669"></script>
<script src="../../resources/js/bootstrap.bundle.js?9765"></script>
<script src="../../resources/js/blocs.js?5117"></script>
<script src="../../resources/js/jqBootstrapValidation.js"></script>
<script src="../../resources/js/formHandler.js?6968"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>

