<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
    <title>add-special-quiz</title>


    <style>
        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            bottom: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-clip: padding-box;
            background-color: rgb(0, 0, 0); /* Fallback color */
            background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
        }

        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 10% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 50%; /* Could be more or less, depending on screen size */
            max-width: 60%;
            height: 75%;
            max-height: 80%;

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

    <!-- bloc-7 -->
    <div class="bloc background-photo l-bloc" id="bloc-7">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div class="row">

                        <c:url value="/courses/add-courses" var="backBtn">
                            <c:param name="courseId" value="${courseId}"/>
                            <c:param name="type" value="Recorded Video"/>
                        </c:url>

                        <div class="grid ">
                            <a href="${backBtn}"
                               class="btn btn-lg go-back-btn btn-wire">Go Back</a>

                            <c:if test="${specialQuiz == null}">
                                <button type="button" class="btn btn-success mb-3"
                                        style="position:relative; bottom: 16%"
                                        id="myBtn">Add More Special Quiz
                                </button>
                            </c:if>
                            <c:if test="${specialQuiz != null}">
                                <c:url var="addMarksLink" value="/teachers/marks-and-access">
                                    <c:param name="quizId" value="${specialQuiz.id}"/>
                                </c:url>
                                <button onclick="window.location.href='${addMarksLink}'" type="button" class="btn btn-success mb-3"
                                        style="position:relative; bottom: 16%"
                                        id="adMarksBtn">Add Marks
                                </button>
                            </c:if>

                            <img class="img-fluid lazyload test-img" style="position:relative; left: 60%"
                                 src="${pageContext.request.contextPath}/resources/img/lazyload-ph.png"
                                 data-src="${pageContext.request.contextPath}/resources/img/reshot-illustration-woman-thinking-quizzes.png"
                                 width="120px" height="120px" alt="reshot-illustration-woman-thinking-quizzes"/>
                        </div>

                    </div>
                    <c:if test="${specialQuiz != null}">
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
                                            <%-- construct an 'delete' link with free quiz id --%>
                                        <c:url var="deleteLink" value="/teachers/special-quiz/delete">
                                            <c:param name="specialQuizId" value="${specialQuiz.id}"/>
                                        </c:url>

                                        <div class="row">
                                            <div class="col-lg-8">
                                                <div class="blockquote container-div-style">
                                                    <label>
                                                            ${specialQuiz.mcqLink}
                                                    </label>
                                                </div>
                                            </div>

                                        </div>

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
                                        <%-- construct an 'delete' link with free quiz id --%>
                                    <c:url var="deleteLink" value="/teachers/special-quiz/delete">
                                        <c:param name="specialQuizId" value="${specialQuiz.id}"/>
                                    </c:url>

                                    <div class="row">
                                        <div class="col-lg-8">
                                            <div class="blockquote container-div-style">
                                                <label>
                                                        ${specialQuiz.eAndSLink}
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <a href="${deleteLink}"
                                               class="btn btn-d btn-lg float-lg-right remove-btn btn-clean">Remove</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <%--TODO: aaaaa --%>
                    <c:if test="${specialQuiz == null}">
                        <div class="text-center border border-2 rounded"
                             style="padding: 50px; font-family: 'Ubuntu Mono'; font-size: 40px; width: fit-content">
                            <p>No Quizzes Currently</p>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-7 END -->

    <div class="mx-5">
        <div id="myModal" class="modal">

            <!-- Modal content -->
            <div class="modal-content max-w-md border-2 border-indigo-500">
                <span class="close">&times;</span>
                <h3 style="text-align: center">Add Special Quiz Links In Here</h3>
                <div class="row">
                    <form:form action="/teachers/special-quiz-link/save" method="post" modelAttribute="specialQuizLink">
                        <input type="hidden" value="${param.recordedVideoId}" name="videoId">

                        <div class="form-group">
                            <form:label path="mcqLink">MCQ Link</form:label>
                            <form:input path="mcqLink" cssClass="form-control" type="url" required="required"/>
                        </div>
                        <div class="form-group">
                            <form:label path="eAndSLink">Structured Link</form:label>
                            <form:input path="eAndSLink" cssClass="form-control" type="url" required="required"/>
                        </div>
                        <div class="form-group">
                            <form:label path="marksLimit">Marks Limit</form:label>
                            <form:input path="marksLimit" cssClass="form-control" required="required"/>
                        </div>
                        <div class="form-group">
                            <form:label path="submitLink">Submit Marks Link</form:label>
                            <form:input path="submitLink" cssClass="form-control" type="url" required="required"/>
                        </div>


                        <button type="submit"
                                class="py-2 px-5 btn btn-primary btn-lg bg-indigo-600 hover:bg-indigo-700 focus:ring-indigo-500 focus:ring-offset-indigo-200 text-white w-full transition ease-in duration-200 text-center text-base font-semibold shadow-md focus:outline-none focus:ring-2 focus:ring-offset-2  rounded-lg ">
                            Add
                        </button>

                    </form:form>
                </div>
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
    btn.onclick = function () {
        modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
</body>
</html>