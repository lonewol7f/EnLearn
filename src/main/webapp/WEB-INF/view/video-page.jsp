<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css?4767">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css?2158">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.css?3273">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <title>video-page</title>


    <!-- Analytics -->

    <!-- Analytics END -->
    <script>
        function reStructure() { /* to make sure the script runs after page load */

            $('.item').each(function (event) { /* select all divs with the item class */

                var max_length = 150; /* set the max content length before a read more link will be added */

                if ($(this).html().length > max_length) { /* check for content length */

                    var short_content = $(this).html().substr(0, max_length); /* split the content in two parts */
                    var long_content = $(this).html().substr(max_length);

                    $(this).html(short_content + '...' +
                        '<details>' +
                        '<summary style="float: right">see all/less</summary>' + '<p style="clear:both;">' + short_content + long_content + '</p>' +
                        '</details> <br>');
                }

            });

        }
    </script>

</head>
<body onload="loadComments()">

<!-- Preloader -->
<div id="page-loading-blocs-notifaction" class="page-preloader"></div>
<!-- Preloader END -->


<!-- Main container -->
<div class="page-container">

    <!-- bloc-0 -->
    <%@include file="header.jsp"%>
    <!-- bloc-0 END -->
    <input type="hidden" value="${recordedVideo.id}" id="videoId"/>
    <input type="hidden" value="${userId}" id="userId"/>
    <!-- bloc-17 -->
    <div class="bloc l-bloc" id="bloc-17">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item lazyload"
                                src="${pageContext.request.contextPath}/resources/img/lazyload-ph.png"
                                data-src="${recordedVideo.videoLink}" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen>
                        </iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-17 END -->

    <!-- bloc-18 -->
    <div class="bloc l-bloc" id="bloc-18">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <ul class="nav nav-tabs list-horizontal-layout" id="nav-17627-tab" role="tablist">
                        <li class="nav-item">
                            <a class="a-btn nav-link active" id="nav-17627-tab-1" data-toggle="tab"
                               href="#nav-17627-content-1" role="tab" aria-controls="nav-17627-content-1"
                               aria-selected="true">Overview</a>
                        </li>
                        <li class="nav-item">
                            <a class="a-btn nav-link" id="nav-17627-tab-2" data-toggle="tab" href="#nav-17627-content-2"
                               role="tab" aria-controls="nav-17627-content-2" aria-selected="false">Comment</a>
                        </li>
                        <li class="nav-item">
                            <a class="a-btn nav-link" id="nav-17627-tab-3" data-toggle="tab" href="#nav-17627-content-3"
                               role="tab" aria-controls="nav-17627-content-3" aria-selected="false">Note</a>
                        </li>
                        <li class="nav-item">
                            <a class="a-btn nav-link" id="nav-17627-tab-4" data-toggle="tab" href="#nav-17627-content-4"
                               role="tab" aria-controls="nav-17627-content-4" aria-selected="false">Announcement</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="nav-17627-content-1" role="tabpanel"
                             aria-labelledby="nav-17627-content-1">
                            <div class="tab-pane fade-tab-bs show active content-inside-tab" role="tabpanel"
                                 aria-labelledby="nav-20063-content-1">
                                <h1 class="mg-md">
                                    Overview
                                </h1>
                                <h2 class="mg-md">
                                    ${recordedVideo.title}
                                </h2>
                                <p>
                                    ${recordedVideo.description}
                                </p>
                                <div class="divider-h">
                                    <span class="divider"></span>
                                </div>
                                <div class="divider-h">
                                    <span class="divider"></span>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <h4 class="mg-md">
                                            Heading content
                                        </h4>
                                    </div>
                                    <div class="col">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <img src="${pageContext.request.contextPath}/resources/img/lazyload-ph.png"
                                                     data-src="${pageContext.request.contextPath}/resources/img/placeholder-user.png"
                                                     class="img-fluid rounded-circle mx-auto d-block img-placeholder-us-style lazyload"
                                                     alt="placeholder user"/>
                                            </div>
                                            <div class="col offset-lg-0">
                                                <h4 class="mg-md">
                                                    Heading content
                                                </h4>
                                                <p>
                                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
                                                    commodo ligula eget dolor. Aenean massa. Cum sociis natoque
                                                    penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                                                    Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.
                                                    Nulla consequat massa quis enim.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="row icon-row-content-1">
                                            <div class="col">
                                                <div>
                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="text-center">
                                                                <span class="icon-md fab fa-facebook"></span>
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <div class="text-center">
                                                                <span class="icon-md fab fa-whatsapp"></span>
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <div class="text-center">
                                                                <span class="fa fa-star icon-md"></span>
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <div class="text-center">
                                                                <span class="fa fa-star icon-md"></span>
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <div class="text-center">
                                                                <span class="fa fa-star icon-md"></span>
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <div class="text-center">
                                                                <span class="fa fa-star icon-md"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <div>
                                                    <p>
                                                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
                                                        commodo ligula eget dolor. Aenean massa. Cum sociis natoque
                                                        penatibus et magnis dis parturient montes, nascetur ridiculus
                                                        mus. Donec quam felis, ultricies nec, pellentesque eu, pretium
                                                        quis, sem. Nulla consequat massa quis enim.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade-tab-bs" id="nav-17627-content-2" role="tabpanel"
                             aria-labelledby="nav-17627-content-2">
                            <div class="tab-pane fade-tab-bs content-inside-tab" role="tabpanel"
                                 aria-labelledby="nav-20063-content-2">
                                <h1 class="mg-md">
                                    Comments (Q&amp;A)
                                </h1>
                                <h2 class="mg-md">
                                    All questions in this course (number here)
                                </h2>
                                <div class="divider-h">
                                    <span class="divider"></span>
                                </div>
                                <%--TODO: comments here--%>
                                <div class="container">
                                    <div>
                                        <div class="mb-3">
                                            <textarea class="form-control" id="commentBox"
                                                      placeholder="Type your comment..." rows="7"
                                                      style="resize: none;"></textarea>
                                        </div>
                                        <button onclick="addComment()" class="btn btn-primary" style="float: right;">
                                            Comment
                                        </button>
                                    </div>
                                    <div id="results" style="clear: both; margin-top: 10vh;" class="container"></div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade-tab-bs" id="nav-17627-content-3" role="tabpanel"
                             aria-labelledby="nav-17627-content-3">
                            <div class="tab-pane fade-tab-bs content-inside-tab" id="nav-20063-content-3"
                                 role="tabpanel" aria-labelledby="nav-20063-content-3">
                                <h1 class="mg-md">
                                    Note
                                </h1>
                                <div class="divider-h">
                                    <span class="divider"></span>
                                </div>
<%--                                <div>--%>
<%--                                    <div class="text-center">--%>
<%--                                        <a href="${pageContext.request.contextPath}/courses/select-quizzes" class="btn btn-d btn-lg btn-59-style">Attempt Quiz</a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                                <div class="divider-h">
                                    <span class="divider"></span>
                                </div>
                                <h3 class="mg-md">
                                    <span class="fa fa-star"></span>Note 1
                                </h3>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget
                                    dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes,
                                    nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium
                                    quis, sem. Nulla consequat massa quis enim.
                                </p>
                            </div>
                        </div>
                        <div class="tab-pane fade-tab-bs" id="nav-17627-content-4" role="tabpanel"
                             aria-labelledby="nav-17627-content-4">
                            <div class="tab-pane fade-tab-bs content-inside-tab" id="nav-20063-content-4"
                                 role="tabpanel" aria-labelledby="nav-20063-content-4">
                                <h1 class="mg-md">
                                    Announcements
                                </h1>
                                <div class="divider-h">
                                    <span class="divider"></span>
                                </div>
                                <div class="row">
                                    <div class="col-lg-2">
                                        <img src="${pageContext.request.contextPath}/resources/img/lazyload-ph.png"
                                             data-src="${pageContext.request.contextPath}/resources/img/placeholder-user.png"
                                             class="img-fluid rounded-circle mx-auto d-block lazyload"
                                             alt="placeholder user"/>
                                    </div>
                                    <div class="col">
                                        <h3 class="mg-md">
                                            Heading content
                                        </h3>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo
                                            ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis
                                            parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec,
                                            pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.
                                        </p>
                                    </div>
                                </div>
                                <h3 class="mg-md">
                                    Heading content
                                </h3>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget
                                    dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes,
                                    nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium
                                    quis, sem. Nulla consequat massa quis enim.
                                </p>
                                <div class="divider-h">
                                    <span class="divider"></span>
                                </div>
                                <h3 class="mg-md">
                                    Heading content
                                </h3>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget
                                    dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes,
                                    nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium
                                    quis, sem. Nulla consequat massa quis enim.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-18 END -->

    <%@include file="footer.jsp" %>

</div>
<!-- Main container END -->


<!-- Additional JS -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.js?8669"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.js?9765"></script>
<script src="${pageContext.request.contextPath}/resources/js/blocs.js?5117"></script>
<script src="${pageContext.request.contextPath}/resources/js/lazysizes.min.js" defer></script>
<script src="${pageContext.request.contextPath}/resources/js/commentHandler.js"></script>
<!-- Additional JS END -->


</body>
</html>

