<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Maneesha
  Date: 9/5/2021
  Time: 3:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <meta name="robots" content="index, follow" />
    <link rel="shortcut icon" type="image/png" href="../../resources/img/favicon.png">


    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?759">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?7076">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?9014">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>Discount Rate Report</title>
</head>
<body>
<!-- Main container -->
<div class="page-container">

    <!-- bloc-0 -->
    <%@include file="header.jsp"%>
    <!-- bloc-0 END -->


    <div class="container mt-lg-5">
        <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/discounts/Add-Discount" role="button">Back</a>
    </div>


    <div class="bloc l-bloc" id="bloc-8">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <h1 class="mg-md" style="text-align: center">
                        Added Discounts
                    </h1>
                    <img class="img-fluid lazyload test-img" src="${pageContext.request.contextPath}/resources/img/discount.png" data-src="${pageContext.request.contextPath}/resources/img/discount.png" width="450rem" height="450rem"  style="position: relative;left: 32%; padding-bottom: 30px;" alt="Discount Image" />
                    <div class="row">
                        <table  class="table">
                            <thead class="thead-dark">
                                <tr>
                                    <!--<th>Discount ID</th>-->
                                    <th>Admin Id</th>
                                    <th>Discount</th>
                                    <th>Teacher</th>
                                    <th>Course</th>
                                    <th>Image</th>
                                    <th>Description</th>
                                    <th>Grade</th>
                                    <th>Title</th>
                                    <th>Operations</th>
                                </tr>
                            </thead>
                            <c:forEach var="discount" items="${alldiscount}">

                                <c:url var="deleteDiscountLink" value="/discounts/deleteDiscount">
                                    <c:param name="AddedDiscountID" value="${discount.id}" />
                                </c:url>
                                <c:url var="updateDiscountLink" value="/discounts/updateDiscount">
                                    <c:param name="AddedDiscountID" value="${discount.id}" />
                                </c:url>
                                <tr>
                                    <!--<td><<%--c:out value="${discount.id}" />--%></td>-->
                                    <td><c:out value="${discount.admin_id}" /></td>
                                    <td><c:out value="${discount.discount}" /></td>
                                    <td><c:out value="${discount.teacher_name}" /></td>
                                    <td><c:out value="${discount.course}" /></td>
                                    <td><c:out value="${discount.image}" /></td>
                                    <td><c:out value="${discount.description}" /></td>
                                    <td><c:out value="${discount.grade}" /></td>
                                    <td><c:out value="${discount.title}" /></td>
                                    <td>
                                        <a href="${deleteDiscountLink}" class="btn btn-danger" onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
                                        <a href="${updateDiscountLink}" class="btn btn-success">Update</a>
                                        <%--<button class="btn btn-danger" style="margin:0 5px;" data-toggle="modal" data-target="#delete">Delete</button>--%>
                                        <%--<button class="btn btn-success" style="margin:0px 0px 0px 5px ;" data-toggle="modal" data-target="#update">Update</button>--%>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
                <hr style="color: #b21f2d; height: 5px;">
                <h2 style="color: #141e37; text-align: center; margin: 20px auto 0px;">End of Discounts</h2>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <%@include file="footer.jsp" %>
    <!-- END Footer -->



    <!-- Update Popup START -->
    <div id="update" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog  modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="mg-clear">
                        Update Discount
                    </h3>
                </div>
                <div class="modal-body">
                    <form id="form_23581" data-form-type="blocs-form" action="/discounts/updateDiscount" method="POST" >
                        <div class="form-group">
                            <label>
                                Admin ID
                            </label>
                            <input type="number" id="admin_id" class="form-control" required name="admin_id" value="${showDiscountForUpdate.admin_id}" />
                        </div>
                        <div class="form-group">
                            <label>
                                Discount Amount
                            </label>
                            <input type="number" id="discount" class="form-control" required name="discount" value="${showDiscountForUpdate.admin_id}" />
                        </div>
                        <div class="form-group">
                            <label>
                                Teacher Name
                            </label>
                            <input id="teacher_name" class="form-control" required name="teacher_name" />
                        </div>
                        <div class="form-group">
                            <label>
                                Subject Category
                            </label>
                            <select name="course" required>
                                <option disabled selected value>-- Select Subject Category</option>
                                <option value="Course">Course</option>
                                <option value="Module">Module</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>
                                Image
                            </label>
                            <input type="file" id="image" class="form-control" name="image" />
                        </div>
                        <div class="form-group">
                            <label>
                                Description
                            </label>
                            <input id="description" class="form-control" name="description" />
                        </div>
                        <div class="form-group">
                            <label>
                                Grade
                            </label>
                            <input type="number" id="grade" class="form-control" required name="grade" />
                        </div>
                        <div class="form-group">
                            <label>
                                Discount Title
                            </label>
                            <input id="title" class="form-control" required name="title" />
                        </div>
                        <button class="btn btn-success" type="submit">
                            Update Discount
                        </button>
                    </form>
                </div>
                <div class="modal-footer">
                    <a href="#" class="bloc-button btn btn-d btn-lg btn-block" data-toggle="modal" data-target="#update">Close</a>
                </div>
            </div>
        </div>
    </div>
    <!-- END Update Popup -->




</div>
<!-- Main container END -->




<!-- Additional JS -->
<script src="../../resources/js/jquery.js?8669"></script>
<script src="../../resources/js/bootstrap.bundle.js?9765"></script>
<script src="../../resources/js/blocs.js?5117"></script>
<script src="../../resources/js/jqBootstrapValidation.js"></script>
<script src="../../resources/js/formHandler.js?1725"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script>
<!-- Additional JS END -->

</body>
</html>
