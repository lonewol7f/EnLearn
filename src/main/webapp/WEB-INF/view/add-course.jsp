<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
                        <br>
                        <br>
                        <br>

                        <div class="row">
                            <div class="col">
                                <div>
                                    <div class="text-center">
                                        <a style="width: 50%; alignment: left" href="${pageContext.request.contextPath}/courses/add-videos" class="btn btn-d btn-lg btn-block">Add Recorded Video</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div>
                                    <div class="text-center">
                                        <c:url var="zoomCreateLink" value="/courses/create-zoom">
                                            <c:param name="courseId" value="${courseId}"/>
                                        </c:url>
                                        <a style="width: 50%; alignment: left" href="${zoomCreateLink}" class="btn btn-d btn-lg btn-block">Add Zoom Class</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- bloc-22 -->
    <div style="display: flex; justify-content: center">

        <c:if test="${fn:length(zoomClassList) > 0}">
            <table class="table table-hover">


                    <%-- Loop over and print zoom classes --%>
                <c:forEach var="tempZoomLink" items="${zoomClassList}">

                    <%-- construct an 'update' link with zoom id --%>
                    <c:url var="updateLink" value="/courses/zoomClass/update">
                        <c:param name="zoomClassId" value="${tempZoomLink.id}"/>
                    </c:url>

                    <%-- construct an 'delete' link with zoom id --%>
                    <c:url var="deleteLink" value="/courses/zoomClass/delete">
                        <c:param name="zoomClassId" value="${tempZoomLink.id}"/>
                    </c:url>

                    <c:url var="quizLink" value="/teachers/special-quizzes">
                        <c:param name="zoomClassId" value="${tempZoomLink.id}"/>
                    </c:url>

                    <tr>
                        <td>${tempZoomLink.week}</td>
                        <td>${tempZoomLink.title}</td>
                        <td style="height:100px;width:25%">${tempZoomLink.description}</td>
                        <td>${tempZoomLink.date}</td>
                        <td>${tempZoomLink.time}</td>
                        <td style="height:100px;width:30%"><a href="${tempZoomLink.zoomLink}">${tempZoomLink.zoomLink}</a></td>
                        <td><a href="${quizLink}">Quiz</a></td>

                        <td>
                                <%-- display the update link --%>
                            <a href="${updateLink}"
                               onclick="if (!(confirm('Are you sure, You want to Edit this course?'))) return false"
                               class="btn btn-success">Update</a>
                            <a href="${deleteLink}"
                               onclick="if (!(confirm('Are you sure, You want to Delete this course?'))) return false"
                               class="btn btn-danger">Delete</a>

                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <c:if test="${fn:length(zoomClassList) == 0}">
            <div class="text-center border border-2 rounded"
                 style="padding: 50px; font-family: 'Ubuntu Mono'; font-size: 50px; width: fit-content">
                <p>No zoom classes Currently</p>
            </div>
        </c:if>
    </div>
    <!-- bloc-22 END -->

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