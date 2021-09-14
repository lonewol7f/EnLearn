<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:51 PM
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

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css?7208">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css?5359">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.css?1795">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>marks-and-access</title>



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

    <!-- main-menu -->
    <div class="bloc l-bloc" id="main-menu">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col">
                            <div>
                                <a href="${pageContext.request.contextPath}/teachers/" class="btn btn-lg go-back-btn btn-wire">Go Back</a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-7">
                            <h3 class="mg-md">
                                Heading content
                            </h3>
                            <div class="divider-h">
                                <span class="divider"></span>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="text-center">
                                        <div class="form-group">
                                            <select class="form-control">
                                                <option value="1">
                                                    course 1
                                                </option>
                                                <option value="2">
                                                    course 2
                                                </option>
                                                <option value="3">
                                                    course 3
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="text-center">
                                        <div class="form-group">
                                            <select class="form-control">
                                                <option value="1">
                                                    week 1
                                                </option>
                                                <option value="2">
                                                    week 2
                                                </option>
                                                <option value="3">
                                                    week 3
                                                </option>
                                                <option value="4">
                                                    week 4
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="text-center">
                                        <a href="#" class="btn btn-d btn-lg btn-block" data-toggle-visibility="student-marks,main-menu">View Details</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div>
                            </div>
                        </div>
                        <div class="col">
                            <img src="${pageContext.request.contextPath}/resources/img/lazyload-ph.png" data-src="${pageContext.request.contextPath}/resources/img/reshot-illustration-business-problem-solving-9MNJFALXDW-4ed2d%281%29.png" class="img-fluid mx-auto d-block lazyload" alt="reshot illustration-business-problem-solving-9MNJFALXDW-4ed2d%281%29" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- main-menu END -->

    <!-- student-marks -->
    <div class="bloc l-bloc object-hidden" id="student-marks">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col-lg-7">
                            <h4 class="mg-md">
                                Course Name
                            </h4>
                        </div>
                        <div class="col offset-lg-2">
                            <a href="#" class="btn btn-d btn-lg btn-block" data-toggle-visibility="student-marks,main-menu">Close</a>
                        </div>
                    </div>
                    <div class="row">
                        <form:form action="" method="post">
                        <div class="col-lg-7">
                            <ul class="list-unstyled">
                                <li>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="student id" />
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="col">
                            <ul class="list-unstyled">
                                <li>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="marks" />
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="col">
                            <button type="submit" class="py-2 px-4  bg-indigo-600 hover:bg-indigo-700 focus:ring-indigo-500 focus:ring-offset-indigo-200 text-white w-full transition ease-in duration-200 text-center text-base font-semibold shadow-md focus:outline-none focus:ring-2 focus:ring-offset-2  rounded-lg ">
                                Give Access
                            </button>
<%--                            <ul class="list-unstyled">--%>
<%--                                <li>--%>
<%--                                    <div class="text-center">--%>
<%--                                        <a href="index.jsp" class="btn btn-lg btn-block btn-rd btn-wire">Give access</a>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
<%--                            </ul>--%>
                        </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- student-marks END -->

    <%@include file="footer.jsp" %>

</div>
<!-- Main container END -->



<!-- Additional JS -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.js?8669"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.js?9765"></script>
<script src="${pageContext.request.contextPath}/resources/js/blocs.js?5117"></script>
<script src="${pageContext.request.contextPath}/resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>
