<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: osini
  Date: 8/25/21
  Time: 8:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<!--Created by Osini on 25/08/2021-->
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <meta name="robots" content="index, follow"/>
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/favicon.png">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css?1588">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css?946">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.css?468">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <title>free-quiz-links</title>


    <!-- Analytics -->

    <!-- Analytics END -->
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
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    }

    /* Modal Content/Box */
    .modal-content {
        background-color: #fefefe;
        margin: 15% auto; /* 15% from the top and centered */
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



    <!-- bloc-7 -->
    <div class="bloc l-bloc" id="bloc-7">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col">
                            <div>
                                <a href="${pageContext.request.contextPath}/teachers/"
                                   class="btn btn-lg go-back-btn btn-wire">Go Back</a>
                            </div>
                        </div>
                        <div class="col">
                            <a
                               class="btn btn-d btn-lg float-lg-right remove-btn btn-clean"
                               id="myBtn">Add More Free Quiz</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="divider-h">
                                <span class="divider"></span>
                            </div>
                            <div>
                                <img class="img-fluid lazyload"
                                     src="${pageContext.request.contextPath}/resources/img/lazyload-ph.png"
                                     data-src="${pageContext.request.contextPath}/resources/img/reshot-illustration-teacher-std-free-quiz-pic.png"
                                     alt="reshot-illustration-teacher-std-free-quiz-pic" width="85%" height="75%"/>
                            </div>
                        </div>
                        <div class="col">
                            <div>
                                <h3 class="mg-md no-margin">
                                    Free Quiz Topics
                                </h3>
                                <div class="divider-h">
                                    <span class="divider"></span>
                                </div>
                                <c:forEach var="freeQuiz" items="${freeQuizList}">

                                    <%-- construct an 'delete' link with free quiz id --%>
                                    <c:url var="deleteLink" value="/teachers/free-quiz/delete">
                                        <c:param name="freeQuizId" value="${freeQuiz.id}"/>
                                    </c:url>

                                    <div class="row">
                                        <div class="col-lg-8">
                                            <div class="blockquote container-div-style">
                                                <label>
                                                    ${freeQuiz.topic}
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <a href="${deleteLink}"
                                               class="btn btn-d btn-lg float-lg-right remove-btn btn-clean">Remove</a>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div id="myModal" class="modal" style=":mx-9">

        <!-- Modal content -->
        <div class="modal-content" style="margin-left: auto;margin-right: auto">
            <span class="close">&times;</span>
                  <h3 style="text-align: center">Add Free Quiz Links In Here</h3>
            <div class="row">
                <form:form action="/teachers/free-quiz-link/save" method="post" modelAttribute="freeQuizLink">

                    <div class="form-group">
                        <form:label path="topic">Topic</form:label>
                        <form:input path="topic" cssClass="form-control"/>
                    </div>
                    <div class="form-group">
                        <form:label path="grade">Grade</form:label>
                        <form:input path="grade" cssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <form:label path="quizLink">Free Quiz Link</form:label>
                        <form:input path="quizLink" cssClass="form-control" />
                    </div>

<%--                <div class="col">--%>
<%--                    <a href="index.jsp" class="btn btn-lg btn-block btn-d btn-clean btn-padding add-btn">Add</a>--%>
<%--                </div>--%>
                    <button class="btn btn-lg btn-block btn-d btn-clean btn-padding add-btn" type="submit">Add</button>
                </form:form>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>

</div>
<!-- Main container END -->


<!-- Additional JS -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.js?8669"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.js?9765"></script>
<script src="${pageContext.request.contextPath}/resources/js/blocs.js?5117"></script>
<script src="${pageContext.request.contextPath}/resources/js/jqBootstrapValidation.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/formHandler.js?4737"></script>
<script src="${pageContext.request.contextPath}/resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->
<script>
    // Get the modal
    var modal = document.getElementById("myModal");

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks on the button, open the modal
    btn.onclick = function() {
        modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
        modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>

</body>
</html>
