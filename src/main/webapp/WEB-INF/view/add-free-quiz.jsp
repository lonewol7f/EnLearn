<%--
  Created by IntelliJ IDEA.
  User: osini
  Date: 9/4/21
  Time: 10:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <meta name="robots" content="index, follow" />
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/favicon.png">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css?1588">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css?946">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.css?468">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>add-free-quiz</title>



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

    <!-- bloc-7 -->
    <div class="bloc l-bloc" id="bloc-7">
        <div class="container bloc-lg" style="padding-bottom:5px">
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col">
                            <div>
                                <a href="${pageContext.request.contextPath}/teachers/free-quiz-links" class="btn btn-lg go-back-btn btn-wire">Go Back</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div>
                            <div class="row">
                                <div class="col-lg-9">
                                    <div class="form-group">
                                        <input class="form-control" />
                                    </div>
                                </div>
                                <div class="col">
                                    <a href="index.jsp" class="btn btn-lg btn-block btn-d btn-clean btn-padding add-btn">Add</a>
                                </div>
                            </div>
<%--                            <div class="row">--%>
<%--                                <div class="col-lg-9">--%>
<%--                                    <div class="form-group">--%>
<%--                                        <input class="form-control" />--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col">--%>
<%--                                    <a href="index.jsp" class="btn btn-lg btn-block btn-d btn-clean btn-padding add-btn">Add</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="row">--%>
<%--                                <div class="col-lg-9">--%>
<%--                                    <div class="form-group">--%>
<%--                                        <input class="form-control" />--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col">--%>
<%--                                    <a href="index.jsp" class="btn btn-lg btn-block btn-d btn-clean btn-padding add-btn">Add</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--     changed       --%>
    <div class="col mb-0">
        <div class="divider-h" style="padding-top:5px;padding-bottom: 5px ">
            <span class="divider mb-1"></span>
        </div>
        <div>
            <img class="img-fluid lazyload test-img" src="${pageContext.request.contextPath}/resources/img/lazyload-ph.png" data-src="${pageContext.request.contextPath}/resources/img/reshot-illustration-woman-thinking-quizzes.png" width="550rem" height="550rem" style="position: relative;left: 29%" alt="reshot-illustration-woman-thinking-quizzes" />
        </div>
    </div>
    <!-- bloc-7 END-->
                    <%@include file="footer.jsp" %>
        </div>
        <!-- Main container END -->

<!-- Additional JS -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.js?8669"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.js?9765"></script>
<script src="${pageContext.request.contextPath}/resources/js/blocs.js?5117"></script>
<script src="${pageContext.request.contextPath}/resources/js/jqBootstrapValidation.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/formHandler.js?4737"></script>
<script src="${pageContext.request.contextPath}/resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->
</body>
</html>