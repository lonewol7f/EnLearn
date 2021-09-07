<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  
  User: lonewol7f
  Date: 07/09/2021
  Time: 19:36
  
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

    <div class="container">
        <div class="mt-5 mb-5">
            <input type="button" value="Go Back" onclick="window.location.href='/admins'; return false;"
                   class="btn btn-info"/>
        </div>
        <h3 class="h3 text-center">Save/Update Event</h3>
        <%--TODO: replace form action with saveLink, after login created--%>
<%--        <c:url var="saveLink" value="/admins/events/save">--%>
<%--            <c:param name="adminId" value="${}"/>--%>
<%--        </c:url>--%>
        <div class="container border border-2 rounded-1 mt-5" style="width: 60%; margin-top: 20px">
            <form:form id="form_16" data-form-type="blocs-form" action="/admins/events/save" method="POST"
                       modelAttribute="event" cssClass="mt-5 mb-5 ml-5 mr-5">

                <form:hidden path="id"/>

                <div class="form-group">
                    <form:label path="topic">Topic</form:label>
                    <form:input path="topic" id="name16" class="form-control" required="required"/>
                </div>
                <div class="form-group">
                    <form:label path="message">Message</form:label>
                    <form:textarea path="message" id="name16" class="form-control" rows="3" cols="20"
                                   style="resize: none;" required="required"/>
                </div>
                <div class="form-group">
                    <form:label path="date">Date</form:label>
                    <form:input path="date" type="date" id="name16" class="form-control" required="required"/>
                </div>
                <div class="form-group">
                    <form:label path="time">Time</form:label>
                    <form:input path="time" type="time" min="09:00" max="20:00" id="name16" class="form-control"
                                required="required"/>
                </div>
                <button class="bloc-button btn btn-d btn-lg btn-block" type="submit">Submit</button>
            </form:form>
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
