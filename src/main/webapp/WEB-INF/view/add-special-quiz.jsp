<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:47 PM
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
    <meta name="robots" content="index, follow" />
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/favicon.png">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css?1588">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css?946">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.css?468">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>add-special-quiz</title>


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

    <!-- bloc-7 -->
    <div class="bloc background-photo l-bloc" id="bloc-7">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div class="row">

                            <div>
                                <a href="${pageContext.request.contextPath}/courses/add-videos" class="btn btn-lg go-back-btn btn-wire">Go Back</a>

                                <button type="button" class="btn btn-success" style="position:relative; bottom: 16%" id="myBtn">Add More Special Quiz</button>

                                <img class="img-fluid lazyload test-img" src="${pageContext.request.contextPath}/resources/img/lazyload-ph.png" data-src="${pageContext.request.contextPath}/resources/img/reshot-illustration-woman-thinking-quizzes.png" width="150rem" height="150rem" style="position: relative;left: 79%" alt="reshot-illustration-woman-thinking-quizzes" />
                            </div>

                    </div>
                    <div class="row">
                        <div class="col">
                            <div>
                                <h3 class="mg-md no-margin">
                                    MCQ
                                </h3>
                                <div class="divider-h">
                                    <span class="divider"></span>
                                </div>
                                <div class="row">
                                    <c:forEach var="specialQuizLink" items="${specialQuizList}">

                                        <%-- construct an 'delete' link with free quiz id --%>
                                        <c:url var="deleteLink" value="/teachers/special-quiz/delete">
                                            <c:param name="freeQuizId" value="${specialQuizLink.id}"/>
                                        </c:url>

                                    <div class="row">
                                        <div class="col-lg-8">
                                            <div class="blockquote container-div-style">
                                                <label>
                                                    ${specialQuizLink.mcqLink}
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
                        <div class="col">
                            <div>
                                <h3 class="mg-md no-margin">
                                    Essay + Structured
                                </h3>
                                <div class="divider-h">
                                    <span class="divider"></span>
                                </div>

                                <c:forEach var="specialQuizLink" items="${specialQuizList}">

                                    <%-- construct an 'delete' link with free quiz id --%>
                                    <c:url var="deleteLink" value="/teachers/special-quiz/delete">
                                        <c:param name="freeQuizId" value="${specialQuizLink.id}"/>
                                    </c:url>

                                <div class="row">
                                    <div class="col-lg-8">
                                        <div class="blockquote container-div-style">
                                            <label>
                                                ${specialQuizLink.eAndSLink}
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <a href="${deleteLink}" class="btn btn-d btn-lg float-lg-right remove-btn btn-clean">Remove</a>
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
    <!-- bloc-7 END -->

    <div id="myModal" class="modal" >

        <!-- Modal content -->
        <div class="modal-content max-w-md border-2 border-indigo-500">
            <span class="close">&times;</span>
            <h3 style="text-align: center">Add Special Quiz Links In Here</h3>
            <div class="row">
                <form:form action="/teachers/special-quiz-link/save" method="post" modelAttribute="specialQuizLink">

                    <div class="form-group">
                        <form:label path="mcqLink">MCQ Link</form:label>
                        <form:input path="mcqLink" cssClass="form-control"/>
                    </div>
                    <div class="form-group">
                        <form:label path="eAndSLink">Structured Link</form:label>
                        <form:input path="eAndSLink" cssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <form:label path="marksLimit">Marks Limit</form:label>
                        <form:input path="marksLimit" cssClass="form-control" />
                    </div>


                    <button type="submit" class="py-2 px-4  bg-indigo-600 hover:bg-indigo-700 focus:ring-indigo-500 focus:ring-offset-indigo-200 text-white w-full transition ease-in duration-200 text-center text-base font-semibold shadow-md focus:outline-none focus:ring-2 focus:ring-offset-2  rounded-lg ">
                        Add
                    </button>

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

