<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:45 PM
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
                                Add Video
                            </h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <form id="add-video" data-form-type="blocs-form" action="add-video-action" method="POST">
                                <div class="form-group">
                                    <label>
                                        Titlle
                                    </label>
                                    <input id="name" class="form-control" required name="name" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        URL
                                    </label>
                                    <input id="name" class="form-control" required name="name" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        Photo
                                    </label>
                                    <div class="row">
                                        <div class="col">
                                            <a href="index.jsp" class="btn btn-lg btn-button-style btn-wire">Select</a>
                                        </div>
                                        <div class="col">
                                            <h5 class="mg-md">
                                                No Photo added<br>&nbsp;2 : 1&nbsp;
                                            </h5>
                                        </div>
                                    </div>
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

    <%@include file="footer.jsp" %>

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

