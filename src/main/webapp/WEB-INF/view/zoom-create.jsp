<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                    <c:url var="saveLink" value="/courses/zoomClass/save">
                        <c:param name="courseId" value="${zoomClass.course.id}"/>
                    </c:url>
                    <div>
                        <form:form data-form-type="blocs-form" action="${saveLink}" modelAttribute="zoomClass" method="post">

                            <form:hidden path="id"/>

                            <div class="form-group">
                                <form:label path="week">
                                    Select Week
                                </form:label>
                                <form:select  path="week" required="required" cssClass="form-control" id="select_2708">
                                    <form:option value="Week 01">
                                        Week 01
                                    </form:option>
                                    <form:option value="Week 02">
                                        Week 02
                                    </form:option>
                                    <form:option value="Week 03">
                                        Week 03
                                    </form:option>
                                    <form:option value="Week 04">
                                        Week 04
                                    </form:option>
                                </form:select>
                            </div>

                            <div class="form-group">
                                <form:label path="title">
                                    Title
                                </form:label>
                                <form:input path="title" required="required" cssClass= "form-control" />
                            </div>
                            <div class="form-group">
                                <form:label path="description">
                                    Description
                                </form:label>
                                <form:input path="description" required="required" cssClass="form-control" />
                            </div>
                            <div class="form-group">
                                <form:label path="date">
                                    Date
                                </form:label>
                                <form:input path="date" type="date" required="required" cssClass="form-control" />
                            </div>
                            <div class="form-group">
                                <form:label path="time">
                                    Time
                                </form:label>
                                <form:input path="time" required="required" min="09:00" max="20:00" type="time" class="form-control" />
                            </div>
                            <div class="form-group">
                                <form:label path="zoomLink">
                                    Zoom Link
                                </form:label>
                                <form:input path="zoomLink" required="required" type="url" class="form-control"/>
                            </div>
                            <button class="bloc-button btn btn-d btn-lg btn-block" type="submit">
                                Create Zoom Class
                            </button><a class="btn btn-lg btn-block btn-wire" href="add-course.jsp">Go Back</a>
                        </form:form>
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

