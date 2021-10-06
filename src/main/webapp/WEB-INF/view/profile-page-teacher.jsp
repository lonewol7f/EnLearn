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
    <meta name="robots" content="index, follow"/>
    <link rel="shortcut icon" type="image/png" href="../../resources/img/favicon.png">
    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?286">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?9809">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?245">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.16/tailwind.min.css"
          integrity="sha512-5D0ofs3AsWoKsspH9kCWlY7qGxnHvdN/Yz2rTNwD9L271Mno85s+5ERo03qk9SUNtdgOZ4A9t8kRDexkvnWByA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <title>profile-page-teacher</title>
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
                                Name of Teacher
                            </h2>
                            <h4 class="mg-md no-margin">
                                Expertiese level
                            </h4>
                            <div class="divider-h">
                                <span class="divider"></span>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div>
                                        <div class="text-center">
                                            <a href="${pageContext.request.contextPath}/teachers/create-courses"
                                               class="btn btn-d btn-lg btn-block">Create a course</a>
                                            <%--TODO--%>
                                            <a id="openModal"
                                               class="btn btn-d btn-lg btn-block">Students Marks</a>
                                        </div>

                                    </div>
                                </div>
                                <div class="col">
                                    <div>
                                        <div class="text-center">
                                            <a href="${pageContext.request.contextPath}/teachers/free-quiz-links"
                                               class="btn btn-d btn-lg btn-block">Add Free Quiz</a>
                                            <a href="${pageContext.request.contextPath}/teachers/notifications"
                                               class="btn btn-d btn-lg btn-block">Notifications</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col offset-lg-1">
                            <img src="../../resources/img/lazyload-ph.png"
                                 data-src="../../resources/img/e91b91aa-c033-4f41-b5aa-585a81bf4cd4.jpg"
                                 class="img-fluid rounded-circle mx-auto d-block lazyload"
                                 alt="b8d67043 5e4a-48ad-ad45-92f0a1352dc7">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class=" divider-h ">
                                <span class="divider"></span>
                            </div>
                            <h4 class="mg-md no-margin text-lg-center">
                                Created Courses
                            </h4>
                            <hr>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-19 END -->
    <!-- bloc-22 -->
    <div style="display: flex; justify-content: center">
        <c:if test="${fn:length(courseList) > 0}">
            <table class="table table-hover">


                    <%-- Loop over and print courses --%>
                <c:forEach var="tempCourse" items="${courseList}">

                    <%-- construct an 'update' link with course id --%>
                    <c:url var="updateLink" value="/teachers/courses/update">
                        <c:param name="courseId" value="${tempCourse.id}"/>
                    </c:url>

                    <%-- construct an 'delete' link with course id --%>
                    <c:url var="deleteLink" value="/teachers/courses/delete">
                        <c:param name="courseId" value="${tempCourse.id}"/>
                    </c:url>

                    <c:url var="coursesLink" value="/courses/add-courses">
                        <c:param name="courseId" value="${tempCourse.id}"/>
                        <c:param name="type" value="${tempCourse.type}"/>
                    </c:url>


                    <tr>
                        <td>${tempCourse.title}</td>
                        <td>${tempCourse.type}</td>
                        <td style="height:100px;width:30%">${tempCourse.description}</td>
                        <td>Rs. ${tempCourse.price}.00</td>
                        <td>${tempCourse.image}</td>
                        <td><a href="${coursesLink}" class="btn btn-info">Course Content</a></td>
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
        <c:if test="${fn:length(courseList) == 0}">
            <div class="text-center border border-2 rounded"
                 style="padding: 50px; font-family: 'Ubuntu Mono'; font-size: 50px; width: fit-content">
                <p>No Courses Currently</p>
            </div>
        </c:if>
    </div>
    <!-- bloc-22 END -->
    <%@include file="footer.jsp" %>
</div>
<!-- Main container END -->
<div id="twobtnmodal" class="modal">

    <!-- Modal content -->
    <div class="modal-content max-w-min">
        <div class="grid grid-rows-2 place-items-center gap-3">

            <div class="grid grid-cols-2 w-96 gap-3">
                <button class="px-4 py-2 font-medium tracking-wide text-white capitalize transition-colors duration-200 transform bg-indigo-600 rounded-md hover:bg-indigo-500 focus:outline-none focus:ring focus:ring-indigo-300 focus:ring-opacity-80">
                    Option 1
                </button>
                <button class="px-4 py-2 font-medium tracking-wide text-white capitalize transition-colors duration-200 transform bg-indigo-600 rounded-md hover:bg-indigo-500 focus:outline-none focus:ring focus:ring-indigo-300 focus:ring-opacity-80">
                    Option 2
                </button>
            </div>
            <button class="px-4 py-2 font-medium tracking-wide text-white capitalize transition-colors duration-200 transform bg-red-600 rounded-md hover:bg-red-500 focus:outline-none focus:ring focus:ring-red-300 focus:ring-opacity-80 closemodal ">Close</button>
        </div>
    </div>

</div>
<script>
    var modal = document.getElementById("twobtnmodal");
    var btn = document.getElementById("openModal");
    var span = document.getElementsByClassName("closemodal")[0];

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

<!-- Additional JS -->
<script src="../../resources/js/jquery.js?8669"></script>
<script src="../../resources/js/bootstrap.bundle.js?9765"></script>
<script src="../../resources/js/blocs.js?5117"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->
</body>
</html>

