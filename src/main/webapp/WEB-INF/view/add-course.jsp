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

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?1667">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?3577">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?5200">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>add-course</title>



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

    <!-- bloc-5 -->
    <div class="bloc l-bloc" id="bloc-5">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div>
                        <div class="row">
                            <div class="col">
                                <h3 class="mg-md">
                                    Add Course
                                </h3><img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/62-film-outline.gif" class="img-fluid img-62-film-outli-style float-lg-none lazyload" alt="62 film-outline" />
                            </div>
                            <div class="col offset-lg-3">
                                <a href="index.jsp" class="btn btn-d btn-lg btn-block add-couse-btn"><span class="icon-spacer ion ion-android-send icon-inside-btn"></span>Publish Course</a><a href="index.jsp" class="btn btn-lg btn-block save-course-btn btn-wire"><span class="icon-spacer fa fa-bookmark icon-inside-btn"></span>Save cousrse</a>
                            </div>
                        </div>
                        <div class="row video-upload-row">
                            <div class="col">
                                <div>
                                    <h5 class="mg-md week-text h5-style">
                                        Week 1
                                    </h5>
                                    <form id="form_8" data-form-type="blocs-form" action="custom-action-url" method="POST">
                                        <div class="form-group">
                                            <label>
                                                Topic Of the week
                                            </label>
                                            <input id="name8" class="form-control field-style" required name="name8" />
                                        </div>
                                    </form>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div>
                                            <div class="row">
                                                <div>
                                                    <div class="text-center">
                                                        <a style="width: 25%; alignment: left" href="${pageContext.request.contextPath}/courses/add-videos" class="btn btn-d btn-lg btn-block">Add Recorded Video</a>
                                                        <a style="width: 25%; alignment: left" href="${pageContext.request.contextPath}/courses/create-zoom" class="btn btn-d btn-lg btn-block">Add Zoom Class</a>
                                                        <a style="width: 25%; alignment: left" href="${pageContext.request.contextPath}/teachers/special-quizzes" class="btn btn-d btn-lg btn-block">Add Special Quiz</a>
                                                    </div>
                                                </div>
                                                Test week 01
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row video-upload-row">
                            <div class="col">
                                <div>
                                    <h5 class="mg-md week-text h5-style">
                                        Week 2
                                    </h5>
                                </div>
                                <form id="form_17302" data-form-type="blocs-form" action="custom-action-url" method="POST">
                                    <div class="form-group">
                                        <label>
                                            Topic Of the week
                                        </label>
                                        <input id="name8_15404_16545_17302" class="form-control field-style" required name="name8" />
                                    </div>
                                </form>
                                <div class="row">
                                    <div class="col">
                                        <div>
                                            <div class="row">
                                                <div class="text-center">
                                                    <a style="width: 25%; alignment: left" href="${pageContext.request.contextPath}/courses/add-videos" class="btn btn-d btn-lg btn-block">Add Recorded Video</a>
                                                    <a style="width: 25%; alignment: left" href="${pageContext.request.contextPath}/courses/create-zoom" class="btn btn-d btn-lg btn-block">Add Zoom Class</a>
                                                    <a style="width: 25%; alignment: left" href="${pageContext.request.contextPath}/teachers/special-quizzes" class="btn btn-d btn-lg btn-block">Add Special Quiz</a>
                                                </div>
                                                Test week 02
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row video-upload-row">
                            <div class="col">
                                <div>
                                    <h5 class="mg-md week-text h5-style">
                                        Week 3
                                    </h5>
                                    <form id="form_16545" data-form-type="blocs-form" action="custom-action-url" method="POST">
                                        <div class="form-group">
                                            <label>
                                                Topic Of the week
                                            </label>
                                            <input id="name8_15404_16545" class="form-control field-style" required name="name8" />
                                        </div>
                                    </form>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div>
                                            <div class="row">
                                                <div class="text-center">
                                                    <a style="width: 25%; alignment: left" href="${pageContext.request.contextPath}/courses/add-videos" class="btn btn-d btn-lg btn-block">Add Recorded Video</a>
                                                    <a style="width: 25%; alignment: left" href="${pageContext.request.contextPath}/courses/create-zoom" class="btn btn-d btn-lg btn-block">Add Zoom Class</a>
                                                    <a style="width: 25%; alignment: left" href="${pageContext.request.contextPath}/teachers/special-quizzes" class="btn btn-d btn-lg btn-block">Add Special Quiz</a>
                                                </div>
                                                Test week 03
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row video-upload-row">
                            <div class="col">
                                <h5 class="mg-md week-text h5-style">
                                    Week 4
                                </h5>
                                <div>
                                    <form id="form_15404" data-form-type="blocs-form" action="custom-action-url" method="POST">
                                        <div class="form-group">
                                            <label>
                                                Topic Of the week
                                            </label>
                                            <input id="name8_15404" class="form-control field-style" required name="name8" />
                                        </div>
                                    </form>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div>
                                            <div class="row">
                                                <div class="text-center">
                                                    <a style="width: 25%; alignment: left" href="${pageContext.request.contextPath}/courses/add-videos" class="btn btn-d btn-lg btn-block">Add Recorded Video</a>
                                                    <a style="width: 25%; alignment: left" href="${pageContext.request.contextPath}/courses/create-zoom" class="btn btn-d btn-lg btn-block">Add Zoom Class</a>
                                                    <a style="width: 25%; alignment: left" href="${pageContext.request.contextPath}/teachers/special-quizzes" class="btn btn-d btn-lg btn-block">Add Special Quiz</a>
                                                </div>
                                                Test week 04
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
    <!-- bloc-5 END -->

    <%@include file="footer.jsp" %>

</div>
<!-- Main container END -->



<!-- Additional JS -->
<script src="../../resources/js/jquery.js?8669"></script>
<script src="../../resources/js/bootstrap.bundle.js?9765"></script>
<script src="../../resources/js/blocs.js?5117"></script>
<script src="../../resources/js/jqBootstrapValidation.js"></script>
<script src="../../resources/js/formHandler.js?215"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>