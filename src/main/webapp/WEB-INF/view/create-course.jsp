<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: hasin
  Date: 8/25/2021
  Time: 2:36 AM
  To change this template use File | Settings | File Templates.
--%>
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

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?4482">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?4530">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?7280">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <%--    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">--%>
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
                                Create Course
                            </h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <form:form  enctype="multipart/form-data" data-form-type="blocs-form" action="/teachers/courses/save" modelAttribute="course" method="post">

                                <form:hidden path="id"/>

                                <div class="form-group">
                                    <form:label path="title">
                                        Course Name
                                    </form:label>
                                    <form:input path="title" required="required" cssClass= "form-control" />
                                </div>
                                <div class="form-group">
                                    <form:label path="price">
                                        Course Fee
                                    </form:label>
                                    <form:input path="price"  required="required" cssClass="form-control" />
                                </div>
                                <div class="form-group">
                                    <form:label path="description">
                                        Description
                                    </form:label>
                                    <form:input path="description" required="required" cssClass="form-control" />
                                </div>
                                <div class="form-group">
                                    <form:label path="type">
                                        Select Course Type
                                    </form:label>
                                    <div class="form-group">
                                        <form:select  path="type" required="required" cssClass="form-control" id="select_2708">
                                            <form:option value="Recorded Video">
                                                Recorded Video
                                            </form:option>
                                            <form:option value="Zoom Class">
                                                Zoom Class
                                            </form:option>
                                        </form:select>
                                    </div>
                                </div>
<%--                                <div class="form-group">--%>
<%--                                    <form:label path="image">--%>
<%--                                        Image--%>
<%--                                    </form:label>--%>
<%--                                    <form:input path="image" type="file"  cssClass="form-control" name="image" />--%>
<%--                                </div>--%>
                                <button class="bloc-button btn btn-d btn-lg btn-block" type="submit">
                                    Create Course
                                </button><a class="btn btn-lg btn-block btn-wire" href="add-course.jsp">Go Back</a>
                            </form:form>
                        </div>
                        <div class="col offset-lg-1">
                            <div class="video-box">
                                <div class="embed-responsive embed-responsive-16by9 video-style">
                                    <img style="position: relative; bottom: 400px; border-radius: 1rem" src="${pageContext.request.contextPath}/resources/img/placeholder-image.png"  width="500" height="400">
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
