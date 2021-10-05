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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.16/tailwind.min.css"
          integrity="sha512-5D0ofs3AsWoKsspH9kCWlY7qGxnHvdN/Yz2rTNwD9L271Mno85s+5ERo03qk9SUNtdgOZ4A9t8kRDexkvnWByA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <title>notification-view</title>

    <style>
        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0, 0, 0); /* Fallback color */
            background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
        }

        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 5% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 80%; /* Could be more or less, depending on screen size */
        }

        /* The Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
    </style>
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
                                    <%--TODO Scroll div--%>

                                    <div>
                                        <c:if test="${fn:length(notifications) > 0}">
                                            <c:forEach var="notification" items="${notifications}">
                                                <c:url var="videoLink" value="/courses/videos">
                                                    <c:param name="videoId" value="${notification.comment.video.id}"/>
                                                </c:url>
                                                <div class="row">
                                                    <div class="col">
                                                        <div>

                                                            <button class="modalPopupBtn">
                                                                <p class="ml-5">
                                                                    <strong>${notification.comment.user.firstName}&nbsp;${notification.comment.user.lastName}</strong>
                                                                    commented on your
                                                                    video: ${notification.comment.video.title}
                                                                <div style="display:none;">
                                                                    <span class="commentIdSingle">${notification.comment.id}</span>
                                                                    <span class="commentSingle">${notification.comment.comment}</span>
                                                                    <span class="videoLinkSingle">${notification.comment.video.videoLink}</span>
                                                                </div>
                                                                </p>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </c:if>
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


<div id="myModal" class="modal min-h-screen">

    <!-- Modal content -->
    <div class="modal-content bg-red-100 max-w-min border shadow-lg">
        <iframe width="560" height="315" title="YouTube video player"
                frameborder="0" id="singleLinkVideo"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        <hr>
        <p class="text-base" id="singleComment"></p>

        <div class="grid grid-cols-1 min-w-full mb-3">
            <input type="hidden" style="display:none" value="" id="commentIdVal"/>
            <textarea id="reply" class="col-span-full border border-blue-100 mb-3"></textarea>
            <button id="sendReply" onclick="addNotificationReply()" class="bg-blue-100 p-2 w-2/3 mx-auto rounded-sm border border-blue-200">Reply</button>
        </div>

        <button class=" bg-red-100 p-2 w-2/3 mx-auto rounded-sm border border-red-200" id="closeModal">Close</button>
    </div>

</div>

<!-- Additional JS -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.js?8669"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.js?9765"></script>
<script src="${pageContext.request.contextPath}/resources/js/blocs.js?5117"></script>
<script src="${pageContext.request.contextPath}/resources/js/lazysizes.min.js" defer></script>
<script src="${pageContext.request.contextPath}/resources/js/notificationReplyHandler.js"></script><!-- Additional JS END -->
<script>
    var modal = document.getElementById("myModal");
    var btns = document.querySelectorAll(".modalPopupBtn");
    var span = document.getElementById("closeModal");

    btns.forEach(function (btn, index) {
        btn.onclick = function () {
            modal.style.display = "block";

            document.getElementById("singleComment").innerHTML = document.querySelectorAll(".commentSingle")[index].innerHTML;
            document.getElementById("commentIdVal").value = document.querySelectorAll(".commentIdSingle")[index].innerHTML;
            document.getElementById("singleLinkVideo").setAttribute('src', document.querySelectorAll(".videoLinkSingle")[index].innerText)
        }
    })

    span.onclick = function () {
        modal.style.display = "none";
    }
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>

</body>
</html>
