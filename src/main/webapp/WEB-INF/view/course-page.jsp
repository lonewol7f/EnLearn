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
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/favicon.png">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css?4661">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css?9576">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.css?7434">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>course-page</title>



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

    <!-- bloc-9 -->
    <div class="bloc l-bloc" id="bloc-9">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="row">
                                <div class="col">
                                    <div>
                                        <h2 class="mg-md no-margin">
                                            Course Name
                                        </h2>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/a356cca4-fad9-4d98-bc8e-940cba7abf0e.jpeg" class="img-fluid rounded-circle img-placeholder-us-style float-right lazyload" alt="a356cca4 fad9-4d98-bc8e-940cba7abf0e.jpeg" />
                                </div>
                            </div>
                            <div class="no-margin"><label style="color:rgba(0,0,0,.5);" class="rating-label"></label>

                                <div class="rating">
	<span class="rating-score" style="width: 70%;">
		<svg fill="#ffd702" width="130" height="50px">
			<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#star-rating"></use>
		</svg>
	</span>
                                    <span class="rating-empty">
		<svg fill="rgba(0,0,0,.1)" width="130" height="50px">
			<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#star-rating"></use>
		</svg>
	</span>
                                </div>

                                <svg xmlns="http://www.w3.org/2000/svg" display="none" version="1.1" height="0">
                                    <symbol id="star-rating" viewBox="0 0 240 48">
                                        <polygon points="24 35 12.244 41.18 14.489 28.09 4.979 18.82 18.122 16.91 24 5 29.878 16.91 43.021 18.82 33.511 28.09 35.756 41.18"></polygon>
                                        <polygon points="72 35 60.244 41.18 62.489 28.09 52.979 18.82 66.122 16.91 72 5 77.878 16.91 91.021 18.82 81.511 28.09 83.756 41.18"></polygon>
                                        <polygon points="120 35 108.244 41.18 110.489 28.09 100.979 18.82 114.122 16.91 120 5 125.878 16.91 139.021 18.82 129.511 28.09 131.756 41.18"></polygon>
                                        <polygon points="168 35 156.244 41.18 158.489 28.09 148.979 18.82 162.122 16.91 168 5 173.878 16.91 187.021 18.82 177.511 28.09 179.756 41.18"></polygon>
                                        <polygon points="216 35 204.244 41.18 206.489 28.09 196.979 18.82 210.122 16.91 216 5 221.878 16.91 235.021 18.82 225.511 28.09 227.756 41.18"></polygon>
                                    </symbol>
                                </svg>
                            </div><a href="#" class="btn btn-wire btn-rd" data-toggle="modal" data-target="#review-modal">Review</a>
                            <div id="review-modal" class="modal fade" tabindex="-1" role="dialog">
                                <div class="modal-dialog  modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h3 class="mg-clear">
                                                Rate Me !
                                            </h3>
                                        </div>
                                        <div class="text-lg-center">
                                            <div class="modal-body">
                                                <div class="form-group text-lg-center">
                                                    <select class="form-control">
                                                        <option value="1">
                                                            ⭐️
                                                        </option>
                                                        <option value="2">
                                                            ⭐️⭐️
                                                        </option>
                                                        <option value="3">
                                                            ⭐️⭐️⭐️
                                                        </option>
                                                        <option value="4">
                                                            ⭐️⭐️⭐️⭐️
                                                        </option>
                                                        <option value="5">
                                                            ⭐️⭐️⭐️⭐️⭐️
                                                        </option>
                                                    </select>
                                                </div><a href="index.jsp" class="btn btn-d btn-lg modal-btns">Send</a><a href="#" class="btn btn-d btn-lg modal-btns" data-toggle="modal" data-target="#review-modal">Close</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="divider-h">
                                <span class="divider"></span>
                            </div>
                            <div>
                                <div class="row">
                                    <div class="col">
                                        <h4 class="mg-md">
                                            by <a href="index.jsp">ara sir</a>
                                        </h4>
                                        <h6 class="mg-md">
                                            <br>
                                        </h6>
                                        <h6 class="mg-md">
                                            <a href="index.jsp">Ask for a refund</a> <br>
                                        </h6>
                                    </div>
                                    <div class="col">
                                        <div class="text-lg-center price-boxes buy-box" id="buybox" data-placement="top" data-toggle="tooltip" title="LKR 200">
                                            <label class="text-lg-center">
                                                Buy&nbsp;<br>
                                            </label>
                                        </div>
                                        <div class="text-lg-center price-boxes owned-box">
                                            <label class="text-lg-center">
                                                Owned
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col offset-lg-1">
                            <div class="text-lg-center">
                                <div class="embed-responsive embed-responsive-16by9">
                                    <video controls class="embed-responsive-item lazyload" data-src="vid/video-placeholder.mp4">
                                        Your browser does not support HTML5 video.
                                    </video>
                                </div>
                                <h4 class="mg-md">
                                    Introduction Video or trailer
                                </h4>
                                <div class="blockquote">
                                    <p class="text-lg-left">
                                        Description is here tbh
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-9 END -->

    <!-- video-list -->
    <div class="bloc l-bloc" id="video-list">
        <div class="container bloc-lg bloc-md-lg">
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col-lg-2">
                            <div class="completion-square text-lg-center">
                                <div><div class="text-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 50" stroke-width="1" stroke="#000000" fill="none" stroke-linecap="round" style="max-width:500px"><path d="M264,25H500"></path><path d="M0,25H237"></path><path d="M251,22v7"></path><path d="M247,22v7"></path><path d="M255,22v7"></path><path d="M259,22v7"></path><path d="M243,22v7"></path></svg>
                                </div>
                                </div>
                                <h2 class="mg-md text-lg-center no-margin text-sm-center text-center">
                                    11 / 26
                                </h2>
                                <div><div class="text-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 50" stroke-width="1" stroke="#000000" fill="none" stroke-linecap="round" style="max-width:500px"><path d="M264,25H500"></path><path d="M0,25H237"></path><path d="M251,22v7"></path><path d="M247,22v7"></path><path d="M255,22v7"></path><path d="M259,22v7"></path><path d="M243,22v7"></path></svg>
                                </div>
                                </div>
                                <div><div class="progress mb-3">
                                    <div class="progress-bar" role="progressbar" style="width: 43%;" aria-valuenow="43" aria-valuemin="0" aria-valuemax="100">43%</div>
                                </div>
                                </div>
                                <h6 class="mg-md text-lg-center">
                                    Completion rate
                                </h6>
                            </div>
                        </div>
                        <div class="col">
                            <div>
                                <div class="row">
                                    <div class="col-lg-3">
                                        <div class="text-center text-lg-right icon-on-videos">
                                            <span class="icon-md fa fa-lock-open lockunlock"></span>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="course-box heading-box" id="week-1-intro">
                                            <div class="row">
                                                <div class="col-lg-3">
                                                    <h5 class="mg-md week-label">
                                                        Week 1
                                                    </h5>
                                                </div>
                                                <div class="col">
                                                    <h5 class="mg-md">
                                                        Heading of the week
                                                    </h5>
                                                </div>
                                                <div class="col">
                                                    <a href="#" class="btn float-lg-right btn-wire float-sm-right float-right expand-btn" data-toggle-visibility="week-1-content,week-1-intro">Expand</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="course-box object-hidden content-box" id="week-1-content">
                                            <h4 class="mg-md">
                                                Heading content
                                            </h4>
                                            <ol>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Name of first vid</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Name of Second Vid</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Heading content</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Heading content</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Heading content</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Heading content</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <div class="row">
                                                        <div class="col">
                                                            <h4 class="mg-md no-margin">
                                                                <a href="index.jsp">Quiz</a><br>
                                                            </h4>
                                                        </div>
                                                        <div class="col">
                                                            <a href="#" class="btn float-lg-right btn-wire float-sm-right float-right" data-toggle-visibility="week-1-content,week-1-intro">Collapse</a>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ol>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="row">
                                    <div class="col-lg-3">
                                        <div class="text-center text-lg-right icon-on-videos">
                                            <span class="icon-md fa fa-lock-open lockunlock"></span>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="course-box heading-box" id="week-2-intro">
                                            <div class="row">
                                                <div class="col-lg-3">
                                                    <h5 class="mg-md week-label">
                                                        Week 2
                                                    </h5>
                                                </div>
                                                <div class="col">
                                                    <h5 class="mg-md">
                                                        Heading of the week
                                                    </h5>
                                                </div>
                                                <div class="col">
                                                    <a href="#" class="btn float-lg-right btn-wire float-sm-right float-right expand-btn" data-toggle-visibility="week-2-content,week-2-intro">Expand</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="course-box object-hidden content-box" id="week-2-content">
                                            <h4 class="mg-md">
                                                Heading content
                                            </h4>
                                            <ol>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Name of first vid</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Name of Second Vid</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Heading content</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Heading content</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Heading content</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Heading content</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <div class="row">
                                                        <div class="col">
                                                            <h4 class="mg-md no-margin">
                                                                <a href="index.jsp">Quiz</a><br>
                                                            </h4>
                                                        </div>
                                                        <div class="col">
                                                            <a href="#" class="btn float-lg-right btn-wire float-sm-right float-right" data-toggle-visibility="week-2-content,week-2-intro">Collapse</a>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ol>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="row">
                                    <div class="col-lg-3">
                                        <div class="text-center text-lg-right icon-on-videos">
                                            <span class="icon-md fa fa-play icon-push lockunlock"></span>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="course-box heading-box" id="week-3-intro">
                                            <div class="row">
                                                <div class="col-lg-3">
                                                    <h5 class="mg-md week-label">
                                                        Week 3
                                                    </h5>
                                                </div>
                                                <div class="col">
                                                    <h5 class="mg-md">
                                                        Heading of the week
                                                    </h5>
                                                </div>
                                                <div class="col">
                                                    <a href="#" class="btn float-lg-right btn-wire float-sm-right float-right expand-btn" data-toggle-visibility="week-3-content,week-3-intro">Expand</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="course-box object-hidden content-box" id="week-3-content">
                                            <h4 class="mg-md">
                                                Heading content
                                            </h4>
                                            <ol>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Heading content</a>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Heading content</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Heading content</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Heading content</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <div class="row">
                                                        <div class="col">
                                                            <h4 class="mg-md no-margin">
                                                                <a href="index.jsp">Quiz</a><br>
                                                            </h4>
                                                        </div>
                                                        <div class="col">
                                                            <a href="#" class="btn float-lg-right btn-wire float-sm-right float-right" data-toggle-visibility="week-3-content,week-3-intro">Collapse</a>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ol>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="row">
                                    <div class="col-lg-3 icon-on-videos">
                                        <div class="text-center text-lg-right">
                                            <span class="icon-md fa fa-lock icon-push lockunlock"></span>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="course-box heading-box" id="week-4-intro">
                                            <div class="row">
                                                <div class="col-lg-3">
                                                    <h5 class="mg-md week-label">
                                                        Week 4<br>
                                                    </h5>
                                                </div>
                                                <div class="col">
                                                    <h5 class="mg-md">
                                                        Heading of the week
                                                    </h5>
                                                </div>
                                                <div class="col">
                                                    <a href="#" class="btn float-lg-right btn-wire float-sm-right float-right expand-btn" data-toggle-visibility="week-4-content,week-4-intro">Expand</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="course-box object-hidden content-box" id="week-4-content">
                                            <h4 class="mg-md">
                                                Heading content
                                            </h4>
                                            <ol>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">1. Name of first vid</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">2. Name of Second Vid</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Heading content</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Heading content</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Heading content</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <h5 class="mg-md">
                                                        <a href="index.jsp">Heading content</a><br>
                                                    </h5>
                                                </li>
                                                <li>
                                                    <div class="row">
                                                        <div class="col">
                                                            <h4 class="mg-md no-margin">
                                                                <a href="index.jsp">Quiz</a><br>
                                                            </h4>
                                                        </div>
                                                        <div class="col">
                                                            <a href="#" class="btn float-lg-right btn-wire float-sm-right float-right" data-toggle-visibility="week-4-content,week-4-intro">Collapse</a>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ol>
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
    <!-- video-list END -->

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
