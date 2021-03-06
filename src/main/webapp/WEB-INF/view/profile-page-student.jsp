<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:53 PM
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
    <meta name="robots" content="index, follow"/>
    <link rel="shortcut icon" type="image/png" href="../../resources/img/favicon.png">

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?7005">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?2593">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?6168">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <title>profile-page-student</title>


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
    <%@include file="header.jsp" %>
    <!-- bloc-0 END -->

    <!-- bloc-19 -->
    <div class="bloc l-bloc" id="bloc-19">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col-lg-8">
                            <h2 class="mg-md no-margin">
                                ${student.firstName}&nbsp;${student.lastName}
                            </h2>
                            <h4 class="mg-md no-margin">
                                ${student.email}
                            </h4>
                            <div class="divider-h">
                                <span class="divider"></span>
                            </div>
                            <div class="divider-h">
                                <span class="divider"></span>
                            </div>
                            <div class="no-margin">
                                <div class="progress mb-3">
                                    <div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="50"
                                         aria-valuemin="0" aria-valuemax="100">50%
                                    </div>
                                </div>
                            </div>
                            <h5 class="mg-md no-margin text-lg-center">
                                Completed courses&nbsp;
                            </h5>
                        </div>
                        <div class="col offset-lg-1">
                            <img src="../../resources/img/lazyload-ph.png"
                                 data-src="../../resources/img/b8d67043-5e4a-48ad-ad45-92f0a1352dc7.jpg"
                                 class="img-fluid rounded-circle mx-auto d-block lazyload"
                                 alt="b8d67043 5e4a-48ad-ad45-92f0a1352dc7"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="divider-h">
                                <span class="divider"></span>
                            </div>
                            <h4 class="mg-md no-margin text-lg-center">
                                Bought Courses
                            </h4>
                            <div>
                                <div class="text-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 50" stroke-width="1"
                                         stroke="#000000" fill="none" stroke-linecap="butt" style="max-width:500px">
                                        <path d="M2,25H498"></path>
                                    </svg>
                                </div>
                            </div>
                            <div class="row justify-content-around">
                                <c:if test="${fn:length(student.courseList) > 0}">
                                    <c:forEach var="course" items="${student.courseList}">
                                        <c:url var="courseLink" value="/courses/">
                                            <c:param name="courseId" value="${course.id}"/>
                                            <c:param name="type" value="${course.type}"/>
                                        </c:url>
                                        <div class="col-3 card-box" onclick="window.location.href='${courseLink}'">
                                            <div class="card">
                                                <div class="divider-h">
                                                    <span class="divider"></span>
                                                </div>
                                                <img src="../../resources/img/lazyload-ph.png"
                                                     data-src="${pageContext.request.contextPath}/resources/img/aae4217f-f6b0-4c3e-ae1f-f141fff1f68e.jpg"
                                                     class="img-fluid mx-auto d-block lazyload"
                                                     alt="placeholder image"/>
                                                <button class="btn">
                                                <h5 class="mg-md text-lg-center">
                                                    ${course.title}
                                                </h5>
                                                </button>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${fn:length(student.courseList) == 0}">
                                    <div class="text-center border border-2 rounded mt-5"
                                         style="padding: 50px; font-family: 'Ubuntu Mono'; font-size: 50px; width: fit-content">
                                        <p>No Course to show</p>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-19 END -->

    <%@include file="footer.jsp" %>

</div>
<!-- Main container END -->


<!-- Additional JS -->
<script src="../../resources/js/jquery.js?8669"></script>
<script src="../../resources/js/bootstrap.bundle.js?9765"></script>
<script src="../../resources/js/blocs.js?5117"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>
