<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  
  User: lonewol7f
  Date: 07/09/2021
  Time: 18:13
  
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <meta name="robots" content="index, follow"/>
    <link rel="shortcut icon" type="image/png" href="../../resources/img/favicon.png">

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?8780">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?7409">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?5164">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <title>Title</title>
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
    <%--Notifications--%>
    <%@include file="messsages.jsp"%>
    <%--Notifications END--%>

    <div class="container">
        <div class="mt-5 mb-5">
            <%-- put new button: add event --%>
            <input type="button" value="New Event" onclick="window.location.href='add'; return false;"
                   class="btn btn-success"/>
        </div>
        <div style="display: flex; justify-content: center">
            <c:if test="${fn:length(eventList) > 0}">
                <table class="table table-hover">
                    <thead class="table-primary">
                    <th>Topic</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th></th>
                    </thead>


                        <%-- Loop over and print events --%>
                    <c:forEach var="event" items="${eventList}">

                        <%-- construct an 'delete' link with event id --%>
                        <c:url var="deleteLink" value="/admins/events/delete">
                            <c:param name="eventId" value="${event.id}"/>
                        </c:url>

                        <%-- construct an 'update' link with event id --%>
                        <c:url var="updateLink" value="/admins/events/update">
                            <c:param name="eventId" value="${event.id}"/>
                        </c:url>

                        <%-- construct an 'export to PDF' link with event id --%>
                        <c:url var="exportLink" value="/reports/single-event">
                            <c:param name="eventId" value="${event.id}"/>
                        </c:url>

                        <tr>
                            <td>${event.topic}</td>
                            <td>${event.date}</td>
                            <td>${event.time}</td>
                            <td class="text-center">
                                <a href="${updateLink}">Update</a>
                                |
                                <a href="${deleteLink}"
                                   onclick="if (!(confirm('Are you sure, You want to delete this event?'))) return false">Delete</a>
                                |
                                <a href="${exportLink}">PDF</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
            <c:if test="${fn:length(eventList) == 0}">
                <div class="text-center border border-2 rounded"
                     style="padding: 50px; font-family: 'Ubuntu Mono'; font-size: 50px; width: fit-content">
                    <p>Nothing to show</p>
                </div>
            </c:if>
        </div>
    </div>

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
