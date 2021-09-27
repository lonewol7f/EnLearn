<%@ page import="net.enLearn.entity.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="net.enLearn.entity.Course" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:53 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?7005">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?2593">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?6168">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>profile-page-student</title>



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
                        <div class="col-lg-8">

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
                                <tr>
                                    <th>Grade</th>
                                    <td>${user.grade}</td>
                                </tr>

                            </table>
<%--                            <h2 class="mg-md no-margin">
                                ${user.firstName}
                            </h2>
                            <h2 class="mg-md no-margin">
                                ${user.address}
                            </h2>
                            <h2 class="mg-md no-margin">
                                ${user.DOB}
                            </h2>
                            <h2 class="mg-md no-margin">
                                ${user.gender}
                            </h2>
                            <h2 class="mg-md no-margin">
                                ${user.grade}
                            </h2>
                            <h2 class="mg-md no-margin">
                                ${user.district}
                            </h2>--%>

                            <br>
                            <%-- construct an 'delete' link with event id --%>
                            <c:url var="deleteLink" value="/students/delete">
                                <c:param name="studentId" value="${user.id}"/>
                            </c:url>

                            <%-- construct an 'update' link with event id --%>
                            <c:url var="updateLink" value="/students/update">
                                <c:param name="studentId" value="${user.id}"/>
                            </c:url>

                            <div class="row">
                                <div class="col">
                                <a href="${deleteLink}" onclick="if (!(confirm('Are you sure, You want to Delete your profile?'))) return false" class="btn btn-danger">Delete</a>
                                </div>
                                <div class="col">
                                    <a href="${updateLink}" onclick="if (!(confirm('Are you sure, You want to Edit your profile?'))) return false"   class="btn btn-success">Update</a>
                                </div>

                            </div>

                            <br>
                            <h4 class="mg-md no-margin">
                                2021
                            </h4>
                            <div class="divider-h">
                                <span class="divider"></span>
                            </div>
                            <div class="divider-h">
                                <span class="divider"></span>
                            </div>
                            <div class="no-margin"><div class="progress mb-3">
                                <div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">50%</div>
                            </div>
                            </div>
                            <h5 class="mg-md no-margin text-lg-center">
                                Completed courses&nbsp;
                            </h5>
                        </div>
                        <div class="col offset-lg-1">
                            <img src="${user.image_path}" data-src="${user.image_path}" class="img-fluid rounded-circle mx-auto d-block lazyload" alt="b8d67043 5e4a-48ad-ad45-92f0a1352dc7" width="250px" height="250px" />
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
                                               "No courses were bought yet\n" +
                                               "</h4>");
                                }else {
                                    out.println("<h4 class=\"mg-md no-margin text-lg-center\">\n" +
                                                "Bought Courses\n" +
                                                "</h4>\n" +
                                                "\n" +
                                                "<div><div class=\"text-center\">\n" +
                                                "    <svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 500 50\" stroke-width=\"1\" stroke=\"#000000\" fill=\"none\" stroke-linecap=\"butt\" style=\"max-width:500px\"><path d=\"M2,25H498\"></path></svg>\n" +
                                                "</div>\n" +
                                                "</div>\n");
                                }

                                for (int i=0; i<courses.size(); i+=4){
                                    out.println("<div class=\"row\">");
                                    for (int j=0; j<4 && i+j < courses.size();j++){

                                        out.println("<div class=\"col card-box\">\n" +
                                                    "    <div class=\"card\">\n" +
                                                    "        <div class=\"divider-h\">\n" +
                                                    "            <span class=\"divider\"></span>\n" +
                                                    "        </div><img src=\"../../resources/img/lazyload-ph.png\" data-src=\"../../resources/img/placeholder-image.png\" class=\"img-fluid mx-auto d-block lazyload\" alt=\"placeholder image\" />\n" +
                                                    "        <h5 class=\"mg-md text-lg-center\">\n" + courses.get(i + j).getTitle() + "</h5>\n" +
                                                    "<h6 class=\"mg-md text-lg-center\">\n" +
                                                    "    By: " + courses.get(i + j).getTeacher().getFirstName() + "        </h6>\n" +
                                                    "\n" +
                                                    "    </div>\n" +
                                                    "</div>\n" +
                                                    "\n");


                                    }
                                    out.println("</div>");
                                }


                            %>



                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--<div class="text-center">--%>
<%--    <!--<a href="index.jsp" class="btn btn-d btn-lg shop-card-btn btn-43-style btn-rd">Get Discount</a>-->--%>
<%--    <div class="row">--%>
<%--        <div class="col">--%>
<%--            <a href="#" class="btn btn-success" data-toggle="modal" data-target="#ad">Confirm</a><br>--%>
<%--        </div>--%>
<%--        <div class="col">--%>
<%--            <a href="#" class="btn btn-danger" data-toggle="modal" data-target="#delete-ad">Delete</a>--%>
<%--        </div>--%>
<%--    </div>--%>

    <!-- bloc-19 END -->

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
