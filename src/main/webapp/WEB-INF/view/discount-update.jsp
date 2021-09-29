<%--
  Created by IntelliJ IDEA.
  User: 94764
  Date: 9/29/2021
  Time: 12:55 PM
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



    <div class="container">
        <div class="col-md-offset-2 col-md-7">
            <h2 class="text-center">Update Customer</h2>
            <div class="panel panel-info">
                <%--<div class="panel-heading">
                    <div class="panel-title">Add Customer</div>
                </div>--%>
                <div class="panel-body">
                    <form id="form_23581" data-form-type="blocs-form" action="#" method="POST" >
                        <div class="form-group">
                            <label>
                                Admin ID
                            </label>
                            <input type="number" id="admin_id" class="form-control" required name="admin_id" value="" />
                        </div>
                        <div class="form-group">
                            <label>
                                Discount Amount
                            </label>
                            <input type="number" id="discount" class="form-control" required name="discount" value="" />
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
            </div>
        </div>
    </div>




    <!-- Footer -->
    <%@include file="footer.jsp" %>
    <!-- END Footer -->

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
