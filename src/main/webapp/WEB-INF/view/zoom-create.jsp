<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 4:00 PM
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

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?8684">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?7198">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?9580">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>zoom-create</title>



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

    <!-- bloc-14 -->
    <div class="bloc l-bloc" id="bloc-14">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <h3 class="mg-md">
                        Create a zoom for the month
                    </h3>
                </div>
                <div class="col">
                    <div class="text-lg-right">
                        <img class="img-fluid img-31-style lazyload" src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/970-video-conference-outline.gif" alt="970 video-conference-outline" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col offset-lg-1">
                    <div>
                        <form id="create-zoom" data-form-type="blocs-form" class="form-12-style" action="create-zoom-action" method="POST">
                            <div class="form-group">
                                <label>
                                    URL for Week 1
                                </label>
                                <input id="name12" class="form-control" required name="name12" />
                                <label>
                                    Date when class is sheduled
                                </label>
                                <input class="form-control" id="input_2277" name="input_2277" />
                                <div><div class="text-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 50" stroke-width="1" stroke="#000000" fill="none" stroke-linecap="round" style="max-width:500px"><path d="M2,25H498"></path></svg>
                                </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>
                                    URL for Week 2
                                </label>
                                <input id="name12" class="form-control" required name="name12" />
                                <label>
                                    Date when class is sheduled
                                </label>
                                <input class="form-control" id="input_1308" name="input_1308" />
                                <div><div class="text-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 50" stroke-width="1" stroke="#000000" fill="none" stroke-linecap="round" style="max-width:500px"><path d="M2,25H498"></path></svg>
                                </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>
                                    URL for Week 3
                                </label>
                                <input id="name12" class="form-control" required name="name12" />
                                <label>
                                    Date when class is sheduled
                                </label>
                                <input class="form-control" id="input_50" name="input_50" />
                                <div><div class="text-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 50" stroke-width="1" stroke="#000000" fill="none" stroke-linecap="round" style="max-width:500px"><path d="M2,25H498"></path></svg>
                                </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>
                                    URL for Week 4
                                </label>
                                <input id="name12" class="form-control" required name="name12" />
                                <label>
                                    Date when class is sheduled
                                </label>
                                <input class="form-control" id="input_1778" name="input_1778" />
                                <div><div class="text-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 50" stroke-width="1" stroke="#000000" fill="none" stroke-linecap="round" style="max-width:500px"><path d="M2,25H498"></path></svg>
                                </div>
                                </div>
                            </div><a href="index.jsp" class="btn btn-d btn-lg btn-block">Submit</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-14 END -->

    <%@include file="footer.jsp" %>

</div>
<!-- Main container END -->



<!-- Additional JS -->
<script src="../../resources/js/jquery.js?8669"></script>
<script src="../../resources/js/bootstrap.bundle.js?9765"></script>
<script src="../../resources/js/blocs.js?5117"></script>
<script src="../../resources/js/jqBootstrapValidation.js"></script>
<script src="../../resources/js/formHandler.js?4904"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>

