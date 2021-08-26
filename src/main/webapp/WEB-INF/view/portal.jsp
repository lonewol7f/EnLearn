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
    <link rel="shortcut icon" type="image/png" href="../../resources/img/favicon.png">

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?2299">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?3568">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?9827">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>Home-1</title>



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

    <!-- language-selector -->
    <div class="bloc l-bloc none b-divider" id="language-selector">
        <div class="container bloc-lg bloc-sm-lg">
            <div class="row">
                <div class="col">
                    <div class="text-lg-center text-center language-selector-card">
                        <h2 class="mg-md no-margin text-lg-center mx-auto d-block select-langugae-txt h3-style">
                            Select Your Language
                        </h2>
                        <div class="divider-h no-margin">
                            <span class="divider"></span>
                        </div><img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/S2_Couple-removebg-preview.png" class="img-fluid mx-auto d-block img-style mg-sm lazyload" alt="S2_Couple removebg-preview" />
                        <div>
                            <div class="row">
                                <div class="col-lg-2">
                                </div>
                                <div class="offset-lg--1 col-lg-8">
                                    <div class="row">
                                        <div class="col">
                                            <div class="text-center">
                                                <a href="index.jsp" class="btn btn-d btn-lg btn-block language-btn">English</a>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="text-center">
                                                <a href="index.jsp" class="btn btn-d btn-lg btn-block language-btn">සිංහල</a>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="text-center">
                                                <a href="index.jsp" class="btn btn-d btn-lg btn-block language-btn">தமிழ்</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-2">
                                </div>
                                <div class="offset-lg--1 col-lg-8">
                                    <div class="row">
                                        <div class="col-lg-3">
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="text-center">
                                                <a href="#" class="btn btn-d btn-lg btn-block language-selector-btn" data-toggle-visibility="language-selector,other-content">Done</a>
                                            </div>
                                        </div>
                                        <div class="col offset-lg-0">
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- language-selector END -->

    <!-- other-content -->
    <div class="bloc object-hidden sub-menu l-bloc" id="other-content">
        <div class="container bloc-lg bloc-md-lg">
            <div class="row">
                <div class="col">
                    <h2 class="mg-md btn-resize-mode h2-style text-lg-center no-margin">
                        Select a Subsite
                    </h2>
                    <p>
                        $(‘#my-panel&rsquo;).click( function({ window.location.replace(“next page url"); });
                    </p>
                    <div class="divider-h animDelay08 animated fadeIn" data-appear-anim-style="fadeIn">
                        <span class="divider"></span>
                    </div>
                    <div>
                        <div class="row">
                            <div class="col-lg-2">
                            </div>
                            <div class="col-lg-8">
                                <div>
                                    <div class="row menu-section-selector-box none animated pulse-hvr pre-school-card" id="pre-school">
                                        <div class="col-lg-4">
                                            <img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/reshot-icon-baby-mobile-P3DXREUZFB.svg" class="img-fluid mx-auto d-block img-other-content-style lazyload" alt="reshot icon-baby-mobile-P3DXREUZFB" />
                                        </div>
                                        <div class="col offset-lg-1">
                                            <h4 class="mg-md">
                                                enLearn <span class="style-font">Pre-School</span>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="row menu-section-selector-box none animated pulse-hvr normal-school-card" id="school">
                                        <div class="col-lg-4">
                                            <img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/reshot-icon-books-XCG3EJ45V6.svg" class="img-fluid mx-auto d-block img-other-content-style lazyload" alt="reshot icon-books-XCG3EJ45V6" />
                                        </div>
                                        <div class="col offset-lg-1">
                                            <h4 class="mg-md">
                                                enLearn <span class="style-font">School</span>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="row menu-section-selector-box none animated pulse-hvr academy-card" id="academy">
                                        <div class="col-lg-4">
                                            <img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/reshot-icon-skill-development-AQ76UCF35K.svg" class="img-fluid mx-auto d-block img-other-content-style lazyload" alt="reshot icon-books-XCG3EJ45V6" />
                                        </div>
                                        <div class="col offset-lg-1">
                                            <h4 class="mg-md">
                                                enLearn <span class="style-font">Academy</span>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="row menu-section-selector-box none animated pulse-hvr shop-card" id="shop">
                                        <div class="col-lg-4">
                                            <img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/reshot-icon-chest-9PGBX7KVT5.svg" class="img-fluid mx-auto d-block img-other-content-style lazyload" alt="reshot icon-books-XCG3EJ45V6" />
                                        </div>
                                        <div class="col offset-lg-1">
                                            <h4 class="mg-md">
                                                Shop
                                            </h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- other-content END -->

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
