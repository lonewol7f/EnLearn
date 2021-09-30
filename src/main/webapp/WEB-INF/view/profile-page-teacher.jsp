<%@ page import="net.enLearn.entity.User" %>
<%@ page import="net.enLearn.entity.Course" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
    <link rel="shortcut icon" type="image/png" href="../../resources/img/favicon.png">
    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?286">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?9809">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?245">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>profile-page-teacher</title>
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
    <!-- bloc-19 -->
    <div class="bloc l-bloc" id="bloc-19">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col-lg-8" >


                            <style>
                                table, th, td {
                                    border:#999999 1px solid; padding-left: 1%; padding-top: 0.5%;

                                }
                            </style>

                            <table style="width: 100%">
                                <tr>
                                    <th>Name</th>
                                    <td>${user.firstName} ${user.lastname}</td>
                                </tr>
                                <tr>
                                    <th>Email</th>
                                    <td>${user.email}</td>
                                </tr>
                                <tr>
                                    <th>Gender</th>
                                    <%
                                        User user = (User) request.getAttribute("user");
                                        if (Integer.parseInt(user.getGender())==2){
                                            out.println("<td>Male</td>");
                                        }else {
                                            out.println("<td>Female</td>");
                                        }
                                    %>
                                </tr>
                                <tr>
                                    <th>Birthday</th>
                                    <td>${user.DOB}</td>
                                </tr>
                                <tr>
                                    <th>District</th>
                                    <td>${user.district}</td>
                                </tr>
                                <tr>
                                    <th>Address</th>
                                    <td>${user.address}</td>
                                </tr>

                            </table>

<%--
                            <h2 class="mg-md no-margin">
                               ${user.firstName}
                            </h2>
                            <h2 class="mg-md no-margin">
                                ${user.lastname}
                            </h2>

                            <h2 class="mg-md no-margin">
                                ${user.email}
                            </h2>
                            <h2 class="mg-md no-margin">
                                ${user.district}
                            </h2>

                            <h2 class="mg-md no-margin">
                                ${user.DOB}
                            </h2>
                            <h2 class="mg-md no-margin">
                                ${user.grade}
                            </h2>
                            <h2 class="mg-md no-margin">
                                ${user.address}
                            </h2>

                            <h2 class="mg-md no-margin">
                                ${user.firstName}
                            </h2>
                            <h2 class="mg-md no-margin">
                                ${user.lastname}
                            </h2>
--%>

                            <%-- construct an 'delete' link with event id --%>
                            <c:url var="deleteLink" value="/teachers/delete">
                                <c:param name="teachers" value="${user.id}"/>
                            </c:url>

                            <%-- construct an 'update' link with event id --%>
                            <c:url var="updateLink" value="/teachers/update">
                                <c:param name="teachers" value="${user.id}"/>
                            </c:url>

                            <br>

                            <div class="row">
                                <div class="col">
                                    <div class="text-center">

                                <a href="${deleteLink}" onclick="if (!(confirm('Are you sure, You want to Delete your profile?'))) return false" class="btn btn-danger">Delete</a>
                                </div></div>

                                <div class="col">
                                    <div class="text-center">
                                <a href="${updateLink}" onclick="if (!(confirm('Are you sure, You want to Edit your profile?'))) return false"   class="btn btn-success">Update</a>
                                </div></div>

                            </div>
<%--                            <h4 class="mg-md no-margin">--%>
<%--                                Expertiese level--%>
<%--                            </h4>--%>
<%--                            <h5 class="mg-md no-margin">--%>
<%--                                Expertiese level--%>
<%--                            </h5>--%>
                            <div class="divider-h">
                                <span class="divider"></span>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div>
                                        <div class="text-center">
                                            <a href="${pageContext.request.contextPath}/courses/create-courses" class="btn btn-d btn-lg btn-block">Create a course</a>
                                            <a href="${pageContext.request.contextPath}/teachers/marks-and-access" class="btn btn-d btn-lg btn-block">Students Marks</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div>
                                        <div class="text-center">
                                            <a href="${pageContext.request.contextPath}/teachers/free-quiz-links" class="btn btn-d btn-lg btn-block">Add Free Quiz</a>
                                            <a href="${pageContext.request.contextPath}/teachers/notifications" class="btn btn-d btn-lg btn-block">Notifications</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col offset-lg-1">
                            <img src="${user.image_path}" data-src="${user.image_path}" height="250px" width="250px" />
                        </div>

                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="divider-h">
                                <span class="divider"></span>
                            </div>


                            <%
                                List<Course> courses = (List<Course>) request.getAttribute("courses");
                                if (courses==null || courses.size()==0){
                                    out.println("<h4 class=\"mg-md no-margin text-lg-center\">\n" +
                                                "No courses were created yet\n" +
                                                "</h4>");
                                }else {
                                    out.println("<h4 class=\"mg-md no-margin text-lg-center\">\n" +
                                                "created Courses\n" +
                                                "</h4>\n" +
                                                "\n" +
                                                "<div><div class=\"text-center\">\n" +
                                                "    <svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 500 50\" stroke-width=\"1\" stroke=\"#000000\" fill=\"none\" stroke-linecap=\"butt\" style=\"max-width:500px\"><path d=\"M2,25H498\"></path></svg>\n" +
                                                "</div>\n" +
                                                "</div>\n");
                                }

                            %>


                            <div style="display: flex; justify-content: center">
                                <c:if test="${fn:length(courses) > 0}">
                                    <table class="table table-hover">


                                            <%-- Loop over and print teachers --%>
                                        <c:forEach var="tempCourse" items="${courses}">

                                            <%-- construct an 'update' link with course id --%>
                                            <c:url var="updateLink" value="/courses/update">
                                                <c:param name="courseId" value="${tempCourse.id}"/>
                                            </c:url>

                                            <%-- construct an 'delete' link with course id --%>
                                            <c:url var="deleteLink" value="/courses/delete">
                                                <c:param name="courseId" value="${tempCourse.id}"/>
                                            </c:url>

                                            <c:url var="coursesLink" value="/courses/add-courses">
                                                <c:param name="courseId" value="${tempCourse.id}"/>
                                            </c:url>


                                            <tr>
                                                <td>${tempCourse.title}</td>
                                                <td>${tempCourse.type}</td>
                                                <td style="height:100px;width:30%">${tempCourse.description}</td>
                                                <td>Rs. ${tempCourse.price}.00</td>
                                                <td>${tempCourse.image}</td>
                                                <td><a href="${coursesLink}">Course Content</a></td>
                                                <td>
                                                        <%-- display the update link --%>
                                                    <a href="${updateLink}" onclick="if (!(confirm('Are you sure, You want to Edit this course?'))) return false" class="btn btn-success" >Update</a>
                                                    <a href="${deleteLink}" onclick="if (!(confirm('Are you sure, You want to Delete this course?'))) return false" class="btn btn-danger" >Delete</a>

                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </table>
                                </c:if>
                                <c:if test="${fn:length(courses) == 0}">
                                    <div class="text-center border border-2 rounded" style="padding: 50px; font-family: 'Ubuntu Mono'; font-size: 50px; width: fit-content">
                                        <p>No Courses Currently</p>
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
    <!-- bloc-19 END -->
    <!-- bloc-22 -->




</div>


    <!-- bloc-22 END -->
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

