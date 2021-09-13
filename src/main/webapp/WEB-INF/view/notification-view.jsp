<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:52 PM
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

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css?5573">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css?3600">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.css?9309">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <title>notification-view</title>


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

    <!-- bloc-29 -->
    <div class="bloc l-bloc" id="bloc-29">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col-lg-3">
                            <div>
                            </div>
                        </div>
                        <div class="col">
                            <ul class="nav nav-tabs" id="nav-40313-tab" role="tablist">
                                <li class="nav-item">
                                    <a class="a-btn nav-link active content-box-1 select-box-notif" id="nav-40313-tab-1"
                                       data-toggle="tab" href="#nav-40313-content-1" role="tab"
                                       aria-controls="nav-40313-content-1" aria-selected="true">Notifications</a>
                                </li>
                                <li class="nav-item">
                                    <a class="a-btn nav-link content-box-2 select-box-notif" id="nav-40313-tab-2"
                                       data-toggle="tab" href="#nav-40313-content-2" role="tab"
                                       aria-controls="nav-40313-content-2" aria-selected="false">Events</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="nav-40313-content-1" role="tabpanel"
                                     aria-labelledby="nav-40313-content-1">
                                    <div>
                                        <div class="row">
                                            <div class="col">
                                                <div>
                                                    <div class="blockquote">
                                                        <p>
                                                            Lorem ipsum dolor sit amet, adipiscing elit Aenean commodo
                                                            ligula eget.
                                                        </p>
                                                    </div>
                                                    <a href="index.jsp"
                                                       class="btn btn-lg float-lg-right btn-77-style btn-wire">Go to
                                                        Video</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <div>
                                                    <div class="blockquote">
                                                        <p>
                                                            Lorem ipsum dolor sit amet, adipiscing elit Aenean commodo
                                                            ligula eget.
                                                        </p>
                                                    </div>
                                                    <a href="index.jsp"
                                                       class="btn btn-lg float-lg-right btn-77-style btn-wire">Go to
                                                        Video</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <div>
                                                    <div class="blockquote">
                                                        <p>
                                                            Lorem ipsum dolor sit amet, adipiscing elit Aenean commodo
                                                            ligula eget.
                                                        </p>
                                                    </div>
                                                    <a href="index.jsp"
                                                       class="btn btn-lg float-lg-right btn-77-style btn-wire">Go to
                                                        Video</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <div>
                                                    <div class="blockquote">
                                                        <p>
                                                            Lorem ipsum dolor sit amet, adipiscing elit Aenean commodo
                                                            ligula eget.
                                                        </p>
                                                    </div>
                                                    <a href="index.jsp"
                                                       class="btn btn-lg float-lg-right btn-77-style btn-wire">Go to
                                                        Video</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade-tab-bs" id="nav-40313-content-2" role="tabpanel"
                                     aria-labelledby="nav-40313-content-2">
                                    <div class="row d-flex align-items-center justify-content-around">
                                        <c:if test="${fn:length(events) > 0}">
                                            <c:forEach var="event" items="${events}">

                                                <%-- construct an 'export to PDF' link with event id --%>
                                                <c:url var="exportLink" value="/reports/single-event">
                                                    <c:param name="eventId" value="${event.id}"/>
                                                </c:url>

                                                <div class="col-4 mt-2 mb-2" id="${event.id}">
                                                    <div class="card">
                                                        <a href="${exportLink}">
                                                            <div class="divider-h">
                                                                <span class="divider"></span>
                                                            </div>
                                                            <h3 class="ml-2 mr-2 mg-md text-lg-center">
                                                                    ${event.topic}
                                                            </h3>
                                                            <div class="divider-h">
                                                                <span class="divider"></span>
                                                            </div>
                                                            <h3 class="mg-md text-lg-center">
                                                                    ${event.date}
                                                            </h3>
                                                        </a>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </c:if>
                                        <c:if test="${fn:length(events) == 0}">
                                            <div class="text-center border border-2 rounded mt-5"
                                                 style="padding: 50px; font-family: 'Ubuntu Mono'; font-size: 50px; width: fit-content">
                                                <p>No Events to show</p>
                                            </div>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-29 END -->

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
