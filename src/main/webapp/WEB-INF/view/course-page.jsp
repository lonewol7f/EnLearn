<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:50 PM
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
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/favicon.png">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css?4661">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css?9576">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.css?7434">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <title>course-page</title>


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

    <!-- bloc-9 -->
    <div class="bloc l-bloc" id="bloc-9">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="row">
                                <div class="col">
                                    <div>
                                        <h2 class="mg-md no-margin">
                                            ${course.title}
                                        </h2>
                                        <h4 class="mg-md" style="color: darkred">
                                            Course Type &nbsp; &nbsp; - &nbsp; &nbsp; ${course.type}
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <img src="../../resources/img/lazyload-ph.png"
                                         data-src="../../resources/img/a356cca4-fad9-4d98-bc8e-940cba7abf0e.jpeg"
                                         class="img-fluid rounded-circle img-placeholder-us-style float-right lazyload"
                                         alt="a356cca4 fad9-4d98-bc8e-940cba7abf0e.jpeg"/>
                                </div>
                            </div>
                            <div class="no-margin"><label style="color:rgba(0,0,0,.5);" class="rating-label"></label>

                                <div class="rating">
	<span class="rating-score" style="width: 70%;">
		<svg fill="#ffd702" width="130" height="50px">
			<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#star-rating"></use>
		</svg>
	</span>
                                    <span class="rating-empty">
		<svg fill="rgba(0,0,0,.1)" width="130" height="50px">
			<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#star-rating"></use>
		</svg>
	</span>
                                </div>

                                <svg xmlns="http://www.w3.org/2000/svg" display="none" version="1.1" height="0">
                                    <symbol id="star-rating" viewBox="0 0 240 48">
                                        <polygon
                                                points="24 35 12.244 41.18 14.489 28.09 4.979 18.82 18.122 16.91 24 5 29.878 16.91 43.021 18.82 33.511 28.09 35.756 41.18"></polygon>
                                        <polygon
                                                points="72 35 60.244 41.18 62.489 28.09 52.979 18.82 66.122 16.91 72 5 77.878 16.91 91.021 18.82 81.511 28.09 83.756 41.18"></polygon>
                                        <polygon
                                                points="120 35 108.244 41.18 110.489 28.09 100.979 18.82 114.122 16.91 120 5 125.878 16.91 139.021 18.82 129.511 28.09 131.756 41.18"></polygon>
                                        <polygon
                                                points="168 35 156.244 41.18 158.489 28.09 148.979 18.82 162.122 16.91 168 5 173.878 16.91 187.021 18.82 177.511 28.09 179.756 41.18"></polygon>
                                        <polygon
                                                points="216 35 204.244 41.18 206.489 28.09 196.979 18.82 210.122 16.91 216 5 221.878 16.91 235.021 18.82 225.511 28.09 227.756 41.18"></polygon>
                                    </symbol>
                                </svg>
                            </div>
                            <a href="#" class="btn btn-wire btn-rd" data-toggle="modal" data-target="#review-modal">Review</a>
                            <div id="review-modal" class="modal fade" tabindex="-1" role="dialog">
                                <div class="modal-dialog  modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h3 class="mg-clear">
                                                Rate Me !
                                            </h3>
                                        </div>
                                        <div class="text-lg-center">
                                            <div class="modal-body">
                                                <div class="form-group text-lg-center">
                                                    <select class="form-control">
                                                        <option value="1">
                                                            ⭐️
                                                        </option>
                                                        <option value="2">
                                                            ⭐️⭐️
                                                        </option>
                                                        <option value="3">
                                                            ⭐️⭐️⭐️
                                                        </option>
                                                        <option value="4">
                                                            ⭐️⭐️⭐️⭐️
                                                        </option>
                                                        <option value="5">
                                                            ⭐️⭐️⭐️⭐️⭐️
                                                        </option>
                                                    </select>
                                                </div>
                                                <a href="index.jsp" class="btn btn-d btn-lg modal-btns">Send</a><a
                                                    href="#" class="btn btn-d btn-lg modal-btns" data-toggle="modal"
                                                    data-target="#review-modal">Close</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="divider-h">
                                <span class="divider"></span>
                            </div>
                            <div>
                                <div class="row">
                                    <div class="col">
                                        <h4 class="mg-md">
                                            by <a
                                                href="#">${course.teacher.firstName}&nbsp;${course.teacher.lastName}</a>
                                        </h4>
                                        <h6 class="mg-md">
                                            <br>
                                        </h6>
                                        <h6 class="mg-md">
                                            <a href="index.jsp">Ask for a refund</a> <br>
                                        </h6>
                                    </div>
                                    <div class="col">
                                        <c:if test="${!owned}">
                                            <c:url var="buyLink" value="/students/enroll">
                                                <c:param name="courseId" value="${course.id}"/>
                                            </c:url>
                                            <sec:authorize access="hasRole('STUDENT')">
                                                <div class="text-lg-center price-boxes buy-box" id="buybox"
                                                     onclick="window.location.href='${buyLink}'"
                                                     data-placement="top" data-toggle="tooltip"
                                                     title="LKR ${course.price}">
                                                    <label class="text-lg-center">
                                                        Buy&nbsp;<br>
                                                    </label>
                                                </div>
                                            </sec:authorize>
                                            <sec:authorize access="hasAnyRole('ADMIN', 'TEACHER')">
                                                <div class="text-lg-center price-boxes buy-box" id="buybox"
                                                     onclick="window.location.href='#'"
                                                     data-placement="top" data-toggle="tooltip"
                                                     title="You need to log in as Student to buy this course">
                                                    <label class="text-lg-center">
                                                        Buy&nbsp;<br>
                                                    </label>
                                                </div>
                                            </sec:authorize>
                                            <sec:authorize access="!isAuthenticated()">
                                                <div class="text-lg-center price-boxes buy-box" id="buybox"
                                                     onclick="window.location.href='/login'"
                                                     data-placement="top" data-toggle="tooltip"
                                                     title="You need to log in as Student to buy this course">
                                                    <label class="text-lg-center">
                                                        Buy&nbsp;<br>
                                                    </label>
                                                </div>
                                            </sec:authorize>
                                        </c:if>
                                        <c:if test="${owned}">
                                            <div class="text-lg-center price-boxes owned-box">
                                                <label class="text-lg-center">
                                                    Owned
                                                </label>
                                            </div>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col offset-lg-1">
                            <div class="text-lg-center">
                                <div class="embed-responsive embed-responsive-16by9">
                                    <video controls class="embed-responsive-item lazyload"
                                           data-src="vid/video-placeholder.mp4">
                                        Your browser does not support HTML5 video.
                                    </video>
                                </div>
                                <h4 class="mg-md">
                                    Introduction Video or trailer
                                </h4>
                                <br>
                                <br>
                                <div class="blockquote">
                                    <p class="text-lg-left">
                                        ${course.description}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-9 END -->
    <!-- zoom-list -->
    <c:if test="${owned}">
        <c:if test="${param.type.equals('Zoom Class')}">
            <div class="bloc l-bloc" id="video-list">
                <div class="container bloc-lg bloc-md-lg">
                    <div class="row">
                        <div class="col">
                            <div class="row">
                                <div class="col-lg-2">
                                    <div class="completion-square text-lg-center">
                                        <div>
                                            <div class="text-center">
                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 50"
                                                     stroke-width="1" stroke="#000000" fill="none"
                                                     stroke-linecap="round"
                                                     style="max-width:500px">
                                                    <path d="M264,25H500"></path>
                                                    <path d="M0,25H237"></path>
                                                    <path d="M251,22v7"></path>
                                                    <path d="M247,22v7"></path>
                                                    <path d="M255,22v7"></path>
                                                    <path d="M259,22v7"></path>
                                                    <path d="M243,22v7"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <h2 class="mg-md text-lg-center no-margin text-sm-center text-center">
                                            11 / 26
                                        </h2>
                                        <div>
                                            <div class="text-center">
                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 50"
                                                     stroke-width="1" stroke="#000000" fill="none"
                                                     stroke-linecap="round"
                                                     style="max-width:500px">
                                                    <path d="M264,25H500"></path>
                                                    <path d="M0,25H237"></path>
                                                    <path d="M251,22v7"></path>
                                                    <path d="M247,22v7"></path>
                                                    <path d="M255,22v7"></path>
                                                    <path d="M259,22v7"></path>
                                                    <path d="M243,22v7"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="progress mb-3">
                                                <div class="progress-bar" role="progressbar" style="width: 43%;"
                                                     aria-valuenow="43" aria-valuemin="0" aria-valuemax="100">43%
                                                </div>
                                            </div>
                                        </div>
                                        <h6 class="mg-md text-lg-center">
                                            Completion rate
                                        </h6>
                                    </div>
                                </div>
                                <div class="col">
                                    <div>
                                        <div class="row">
                                            <div class="col">
                                                <div class="course-box heading-box" id="week-1-intro">
                                                    <div class="row">
                                                        <div class="col-lg-3">
                                                            <h5 class="mg-md week-label">
                                                                Week 01
                                                            </h5>
                                                        </div>
                                                        <div class="col">
                                                            <a href="#"
                                                               class="btn float-lg-right btn-wire float-sm-right float-right expand-btn"
                                                               data-toggle-visibility="week-1-content,week-1-intro">Expand</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="course-box object-hidden content-box" id="week-1-content">
                                                    <h4 class="mg-md" style="color: darkblue">
                                                        Week 01 - Zoom Classes
                                                    </h4>
                                                    <ol>
                                                        <c:forEach var="tempZoom" items="${zoomClassList}">
                                                            <c:if test="${tempZoom.week == 'Week 01'}">
                                                                <li>
                                                                    <h5 class="mg-md">
                                                                            ${tempZoom.title} &nbsp;
                                                                        &nbsp; ${tempZoom.date}
                                                                        &nbsp; &nbsp; ${tempZoom.time}&nbsp;&nbsp;
                                                                        &nbsp;
                                                                        &nbsp; &nbsp; &nbsp; |&nbsp; &nbsp; <a
                                                                            href="${tempZoom.zoomLink}">Click here to
                                                                        join
                                                                        Zoom Class</a><br>
                                                                    </h5>
                                                                </li>
                                                            </c:if>
                                                        </c:forEach>
                                                        <li>
                                                            <div class="row">
                                                                <div class="col">
                                                                    <h4 class="mg-md no-margin">
                                                                        <a href="${pageContext.request.contextPath}/courses/select-quizzes">Quiz</a><br>
                                                                    </h4>
                                                                </div>
                                                                <div class="col">
                                                                    <a href="#"
                                                                       class="btn float-lg-right btn-wire float-sm-right float-right"
                                                                       data-toggle-visibility="week-1-content,week-1-intro">Collapse</a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="row">
                                            <div class="col">
                                                <div class="course-box heading-box" id="week-2-intro">
                                                    <div class="row">
                                                        <div class="col-lg-3">
                                                            <h5 class="mg-md week-label">
                                                                Week 02
                                                            </h5>
                                                        </div>
                                                        <div class="col">
                                                            <a href="#"
                                                               class="btn float-lg-right btn-wire float-sm-right float-right expand-btn"
                                                               data-toggle-visibility="week-2-content,week-2-intro">Expand</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="course-box object-hidden content-box" id="week-2-content">
                                                    <h4 class="mg-md" style="color: darkblue">
                                                        Week 02 - Zoom Classes
                                                    </h4>
                                                    <ol>
                                                        <c:forEach var="tempZoom" items="${zoomClassList}">
                                                            <c:if test="${tempZoom.week == 'Week 02'}">
                                                                <li>
                                                                    <h5 class="mg-md">
                                                                            ${tempZoom.title} &nbsp;
                                                                        &nbsp; ${tempZoom.date}
                                                                        &nbsp; &nbsp; ${tempZoom.time}&nbsp;&nbsp;
                                                                        &nbsp;
                                                                        &nbsp; &nbsp; &nbsp; |&nbsp; &nbsp; <a
                                                                            href="${tempZoom.zoomLink}">Click here to
                                                                        join
                                                                        Zoom Class</a><br>
                                                                    </h5>
                                                                </li>
                                                            </c:if>
                                                        </c:forEach>
                                                        <li>
                                                            <div class="row">
                                                                <div class="col">
                                                                    <h4 class="mg-md no-margin">
                                                                        <a href="${pageContext.request.contextPath}/courses/select-quizzes">Quiz</a><br>
                                                                    </h4>
                                                                </div>
                                                                <div class="col">
                                                                    <a href="#"
                                                                       class="btn float-lg-right btn-wire float-sm-right float-right"
                                                                       data-toggle-visibility="week-2-content,week-2-intro">Collapse</a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="row">
                                            <div class="col">
                                                <div class="course-box heading-box" id="week-3-intro">
                                                    <div class="row">
                                                        <div class="col-lg-3">
                                                            <h5 class="mg-md week-label">
                                                                Week 03
                                                            </h5>
                                                        </div>
                                                        <div class="col">
                                                            <a href="#"
                                                               class="btn float-lg-right btn-wire float-sm-right float-right expand-btn"
                                                               data-toggle-visibility="week-3-content,week-3-intro">Expand</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="course-box object-hidden content-box" id="week-3-content">
                                                    <h4 class="mg-md" style="color: darkblue">
                                                        Week 03 - Zoom Classes
                                                    </h4>
                                                    <ol>
                                                        <c:forEach var="tempZoom" items="${zoomClassList}">
                                                            <c:if test="${tempZoom.week == 'Week 03'}">
                                                                <li>
                                                                    <h5 class="mg-md">
                                                                            ${tempZoom.title} &nbsp;
                                                                        &nbsp; ${tempZoom.date}
                                                                        &nbsp; &nbsp; ${tempZoom.time}&nbsp;&nbsp;
                                                                        &nbsp;
                                                                        &nbsp; &nbsp; &nbsp; |&nbsp; &nbsp; <a
                                                                            href="${tempZoom.zoomLink}">Click here to
                                                                        join
                                                                        Zoom Class</a><br>
                                                                    </h5>
                                                                </li>
                                                            </c:if>
                                                        </c:forEach>
                                                        <li>
                                                            <div class="row">
                                                                <div class="col">
                                                                    <h4 class="mg-md no-margin">
                                                                        <a href="${pageContext.request.contextPath}/courses/select-quizzes">Quiz</a><br>
                                                                    </h4>
                                                                </div>
                                                                <div class="col">
                                                                    <a href="#"
                                                                       class="btn float-lg-right btn-wire float-sm-right float-right"
                                                                       data-toggle-visibility="week-3-content,week-3-intro">Collapse</a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="row">
                                            <div class="col">
                                                <div class="course-box heading-box" id="week-4-intro">
                                                    <div class="row">
                                                        <div class="col-lg-3">
                                                            <h5 class="mg-md week-label">
                                                                Week 04<br>
                                                            </h5>
                                                        </div>
                                                        <div class="col">
                                                            <a href="#"
                                                               class="btn float-lg-right btn-wire float-sm-right float-right expand-btn"
                                                               data-toggle-visibility="week-4-content,week-4-intro">Expand</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="course-box object-hidden content-box" id="week-4-content">
                                                    <h4 class="mg-md" style="color: darkblue">
                                                        Week 04 - Zoom Classes
                                                    </h4>
                                                    <ol>
                                                        <c:forEach var="tempZoom" items="${zoomClassList}">
                                                            <c:if test="${tempZoom.week == 'Week 04'}">
                                                                <li>
                                                                    <h5 class="mg-md">
                                                                            ${tempZoom.title} &nbsp;
                                                                        &nbsp; ${tempZoom.date}
                                                                        &nbsp; &nbsp; ${tempZoom.time}&nbsp;&nbsp;
                                                                        &nbsp;
                                                                        &nbsp; &nbsp; &nbsp; |&nbsp; &nbsp; <a
                                                                            href="${tempZoom.zoomLink}">Click here to
                                                                        join
                                                                        Zoom Class</a><br>
                                                                    </h5>
                                                                </li>
                                                            </c:if>
                                                        </c:forEach>
                                                        <li>
                                                            <div class="row">
                                                                <div class="col">
                                                                    <h4 class="mg-md no-margin">
                                                                        <a href="${pageContext.request.contextPath}/courses/select-quizzes">Quiz</a><br>
                                                                    </h4>
                                                                </div>
                                                                <div class="col">
                                                                    <a href="#"
                                                                       class="btn float-lg-right btn-wire float-sm-right float-right"
                                                                       data-toggle-visibility="week-4-content,week-4-intro">Collapse</a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ol>
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
        </c:if>
        <!-- video-list END -->


        <!-- video-list -->
        <c:if test="${param.type.equals('Recorded Video')}">
            <div class="bloc l-bloc" id="video-list">
                <div class="container bloc-lg bloc-md-lg">
                    <div class="row">
                        <div class="col">
                            <div class="row">
                                <div class="col-lg-2">
                                    <div class="completion-square text-lg-center">
                                        <div>
                                            <div class="text-center">
                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 50"
                                                     stroke-width="1" stroke="#000000" fill="none"
                                                     stroke-linecap="round"
                                                     style="max-width:500px">
                                                    <path d="M264,25H500"></path>
                                                    <path d="M0,25H237"></path>
                                                    <path d="M251,22v7"></path>
                                                    <path d="M247,22v7"></path>
                                                    <path d="M255,22v7"></path>
                                                    <path d="M259,22v7"></path>
                                                    <path d="M243,22v7"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <h2 class="mg-md text-lg-center no-margin text-sm-center text-center">
                                            11 / 26
                                        </h2>
                                        <div>
                                            <div class="text-center">
                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 50"
                                                     stroke-width="1" stroke="#000000" fill="none"
                                                     stroke-linecap="round"
                                                     style="max-width:500px">
                                                    <path d="M264,25H500"></path>
                                                    <path d="M0,25H237"></path>
                                                    <path d="M251,22v7"></path>
                                                    <path d="M247,22v7"></path>
                                                    <path d="M255,22v7"></path>
                                                    <path d="M259,22v7"></path>
                                                    <path d="M243,22v7"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="progress mb-3">
                                                <div class="progress-bar" role="progressbar" style="width: 43%;"
                                                     aria-valuenow="43" aria-valuemin="0" aria-valuemax="100">43%
                                                </div>
                                            </div>
                                        </div>
                                        <h6 class="mg-md text-lg-center">
                                            Completion rate
                                        </h6>
                                    </div>
                                </div>
                                <div class="col">
                                    <div>
                                        <div class="row">
                                            <div class="col">
                                                <div class="course-box heading-box" id="week-1-intro">
                                                    <div class="row">
                                                        <div class="col-lg-3">
                                                            <h5 class="mg-md week-label">
                                                                Week 01
                                                            </h5>
                                                        </div>
                                                        <div class="col">
                                                            <a href="#"
                                                               class="btn float-lg-right btn-wire float-sm-right float-right expand-btn"
                                                               data-toggle-visibility="week-1-content,week-1-intro">Expand</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="course-box object-hidden content-box" id="week-1-content">
                                                    <h4 class="mg-md" style="color: darkblue">
                                                        Week 01 - Recorded Videos
                                                    </h4>
                                                    <ol>
                                                        <c:forEach var="tempVideo" items="${videoList}">
                                                            <c:url var="playVideo" value="/courses/videos">
                                                                <c:param name="videoId" value="${tempVideo.id}"/>
                                                            </c:url>
                                                            <c:if test="${tempVideo.week == 'Week 01'}">
                                                                <li>
                                                                    <h5 class="mg-md">
                                                                            ${tempVideo.title}&nbsp;&nbsp; &nbsp; &nbsp;
                                                                        &nbsp; &nbsp; |&nbsp; &nbsp; <a
                                                                            href="${playVideo}">Click
                                                                        here to watch video</a><br>
                                                                    </h5>
                                                                </li>
                                                            </c:if>
                                                        </c:forEach>
                                                        <li>
                                                            <div class="row">
                                                                <div class="col">
                                                                    <h4 class="mg-md no-margin">
                                                                        <a href="index.jsp">Quiz</a><br>
                                                                    </h4>
                                                                </div>
                                                                <div class="col">
                                                                    <a href="#"
                                                                       class="btn float-lg-right btn-wire float-sm-right float-right"
                                                                       data-toggle-visibility="week-1-content,week-1-intro">Collapse</a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="row">
                                            <div class="col">
                                                <div class="course-box heading-box" id="week-2-intro">
                                                    <div class="row">
                                                        <div class="col-lg-3">
                                                            <h5 class="mg-md week-label">
                                                                Week 02
                                                            </h5>
                                                        </div>
                                                        <div class="col">
                                                            <a href="#"
                                                               class="btn float-lg-right btn-wire float-sm-right float-right expand-btn"
                                                               data-toggle-visibility="week-2-content,week-2-intro">Expand</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="course-box object-hidden content-box" id="week-2-content">
                                                    <h4 class="mg-md" style="color: darkblue">
                                                        Week 02 - Recorded Videos
                                                    </h4>
                                                    <ol>
                                                        <c:forEach var="tempVideo" items="${videoList}">
                                                            <c:url var="playVideo" value="/courses/videos">
                                                                <c:param name="videoId" value="${tempVideo.id}"/>
                                                            </c:url>
                                                            <c:if test="${tempVideo.week == 'Week 02'}">
                                                                <li>
                                                                    <h5 class="mg-md">
                                                                            ${tempVideo.title}&nbsp;&nbsp; &nbsp; &nbsp;
                                                                        &nbsp; &nbsp; |&nbsp; &nbsp; <a
                                                                            href="${playVideo}">Click
                                                                        here to watch video</a><br>
                                                                    </h5>
                                                                </li>
                                                            </c:if>
                                                        </c:forEach>
                                                        <li>
                                                            <div class="row">
                                                                <div class="col">
                                                                    <h4 class="mg-md no-margin">
                                                                        <a href="index.jsp">Quiz</a><br>
                                                                    </h4>
                                                                </div>
                                                                <div class="col">
                                                                    <a href="#"
                                                                       class="btn float-lg-right btn-wire float-sm-right float-right"
                                                                       data-toggle-visibility="week-2-content,week-2-intro">Collapse</a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="row">
                                            <div class="col">
                                                <div class="course-box heading-box" id="week-3-intro">
                                                    <div class="row">
                                                        <div class="col-lg-3">
                                                            <h5 class="mg-md week-label">
                                                                Week 03
                                                            </h5>
                                                        </div>
                                                        <div class="col">
                                                            <a href="#"
                                                               class="btn float-lg-right btn-wire float-sm-right float-right expand-btn"
                                                               data-toggle-visibility="week-3-content,week-3-intro">Expand</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="course-box object-hidden content-box" id="week-3-content">
                                                    <h4 class="mg-md" style="color: darkblue">
                                                        Week 03 - Recorded Videos
                                                    </h4>
                                                    <ol>
                                                        <c:forEach var="tempVideo" items="${videoList}">
                                                            <c:url var="playVideo" value="/courses/videos">
                                                                <c:param name="videoId" value="${tempVideo.id}"/>
                                                            </c:url>
                                                            <c:if test="${tempVideo.week == 'Week 03'}">
                                                                <li>
                                                                    <h5 class="mg-md">
                                                                            ${tempVideo.title}&nbsp;&nbsp; &nbsp; &nbsp;
                                                                        &nbsp; &nbsp; |&nbsp; &nbsp; <a
                                                                            href="${playVideo}">Click
                                                                        here to watch video</a><br>
                                                                    </h5>
                                                                </li>
                                                            </c:if>
                                                        </c:forEach>
                                                        <li>
                                                            <div class="row">
                                                                <div class="col">
                                                                    <h4 class="mg-md no-margin">
                                                                        <a href="index.jsp">Quiz</a><br>
                                                                    </h4>
                                                                </div>
                                                                <div class="col">
                                                                    <a href="#"
                                                                       class="btn float-lg-right btn-wire float-sm-right float-right"
                                                                       data-toggle-visibility="week-3-content,week-3-intro">Collapse</a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="row">
                                            <div class="col">
                                                <div class="course-box heading-box" id="week-4-intro">
                                                    <div class="row">
                                                        <div class="col-lg-3">
                                                            <h5 class="mg-md week-label">
                                                                Week 04<br>
                                                            </h5>
                                                        </div>
                                                        <div class="col">
                                                            <a href="#"
                                                               class="btn float-lg-right btn-wire float-sm-right float-right expand-btn"
                                                               data-toggle-visibility="week-4-content,week-4-intro">Expand</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="course-box object-hidden content-box" id="week-4-content">
                                                    <h4 class="mg-md" style="color: darkblue">
                                                        Week 04 - Recorded Videos
                                                    </h4>
                                                    <ol>
                                                        <c:forEach var="tempVideo" items="${videoList}">
                                                            <c:url var="playVideo" value="/courses/videos">
                                                                <c:param name="videoId" value="${tempVideo.id}"/>
                                                            </c:url>
                                                            <c:if test="${tempVideo.week == 'Week 04'}">
                                                                <li>
                                                                    <h5 class="mg-md">
                                                                            ${tempVideo.title}&nbsp;&nbsp; &nbsp; &nbsp;
                                                                        &nbsp; &nbsp; |&nbsp; &nbsp; <a
                                                                            href="${playVideo}">Click
                                                                        here to watch video</a><br>
                                                                    </h5>
                                                                </li>
                                                            </c:if>
                                                        </c:forEach>
                                                        <li>
                                                            <div class="row">
                                                                <div class="col">
                                                                    <h4 class="mg-md no-margin">
                                                                        <a href="index.jsp">Quiz</a><br>
                                                                    </h4>
                                                                </div>
                                                                <div class="col">
                                                                    <a href="#"
                                                                       class="btn float-lg-right btn-wire float-sm-right float-right"
                                                                       data-toggle-visibility="week-4-content,week-4-intro">Collapse</a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ol>
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
        </c:if>
    </c:if>
    <!-- video-list END -->


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

