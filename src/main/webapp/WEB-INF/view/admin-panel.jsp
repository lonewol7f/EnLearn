<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:49 PM
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
    <link rel="shortcut icon" type="image/png" href="../../resources/img/favicon.png">

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?3942">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?1901">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?3351">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>admin-panel</title>



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

    <!-- bloc-30 -->
    <div class="bloc l-bloc" id="bloc-30">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <h3 class="mg-md">
                        Welcome to admin panel<br>
                    </h3>
                    <div class="divider-h">
                        <span class="divider"></span>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="text-center">
                                <a href="#" class="btn btn-d btn-lg btn-block" data-toggle="modal" data-target="#approve-teacher">Teacher approves</a>
                                <a href="${pageContext.request.contextPath}/admins/confirm-advertisement" class="btn btn-d btn-lg btn-block" >Banner Approves</a>
                                <a href="${pageContext.request.contextPath}/Add-Discount" class="btn btn-d btn-lg btn-block" >Add Discount</a>
                            </div>
                        </div>
                        <div class="col">
                            <div class="text-center">
                                <a href="${pageContext.request.contextPath}/report" class="btn btn-d btn-lg btn-block" >Reports</a><br>
                                <div class="text-center" id="expenses-small">
                                    <a href="#" class="btn btn-d btn-lg btn-block" data-toggle-visibility="expenses-long,expenses-small">Expenses</a>
                                </div>
                                <div class="object-hidden" id="expenses-long">
                                    <a href="${pageContext.request.contextPath}/Add-expenses" class="btn btn-d btn-lg btn-block" >Send Expense</a>
                                    <a href="${pageContext.request.contextPath}/Confirm-expenses" class="btn btn-d btn-lg btn-block">Confirm Expense</a>
                                    <div class="divider-h">
                                        <span class="divider"></span>
                                    </div>
                                    <div class="text-center">
                                        <a href="#" class="btn btn-lg btn-wire btn-87-style" data-toggle-visibility="expenses-long,expenses-small">???</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="text-center">
                                <div id="create-less">
                                    <a href="#" class="btn btn-d btn-lg btn-block" data-toggle-visibility="create-less,create-more">Create</a>
                                </div>
                                <div class="object-hidden" id="create-more">
                                    <a href="${pageContext.request.contextPath}/courses/add-courses" class="btn btn-d btn-lg btn-block">Course</a>
                                    <a href="${pageContext.request.contextPath}/admins/codes" class="btn btn-d btn-lg btn-block">Code</a>
                                    <a href="${pageContext.request.contextPath}/admins/events/list" class="btn btn-d btn-lg btn-block">Event</a>
                                    <div class="divider-h">
                                        <span class="divider"></span>
                                    </div><a href="#" class="btn btn-lg btn-rd btn-wire btn-???-style" data-toggle-visibility="create-less,create-more">???</a>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="text-center">
                                <a href="${pageContext.request.contextPath}/teachers/Teacher-confirm" class="btn btn-d btn-lg btn-block" >Confirm Teacher</a>
                                <a href="#" class="btn btn-d btn-lg btn-block" data-toggle="modal" data-target="#message">Send A Message</a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">

                            <div id="approve-teacher" class="modal fade" tabindex="-1" role="dialog">
                                <div class="modal-dialog  modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h3 class="mg-clear">
                                                Teacher
                                            </h3>
                                        </div>
                                        <div class="modal-body">
                                            <form id="form_22767" data-form-type="blocs-form" action="teacher" method="POST">
                                                <div class="form-group">
                                                    <select class="form-control" id="select_587" name="select_587">
                                                        <option value="0">
                                                            Option 1
                                                        </option>
                                                        <option value="1">
                                                            Option 2
                                                        </option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="text-center w-100">
                                                                <a href="index.jsp" class="btn btn-d btn-lg btn-95-style">Approve</a>
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <div class="text-center w-100">
                                                                <a href="index.jsp" class="btn btn-d btn-lg btn-96-style">Disapprove</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <a href="#" class="btn btn-d btn-lg btn-close-style" data-toggle="modal" data-target="#approve-teacher">Close</a>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div id="message" class="modal fade" tabindex="-1" role="dialog">
                                <div class="modal-dialog  modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h3 class="mg-clear">
                                                Message
                                            </h3>
                                        </div>
                                        <div class="modal-body">
                                            <form id="form_23581" data-form-type="blocs-form" action="message" method="POST">
                                                <div class="form-group">
                                                    <label>
                                                        Message
                                                    </label>
                                                    <input id="name16_22767_28850_23581" class="form-control" required name="name16_22767_28850_23581" />
                                                </div>
                                                <button class="bloc-button btn btn-d btn-lg btn-block" type="submit">
                                                    Send
                                                </button>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <a href="#" class="btn btn-d btn-lg btn-close-style" data-toggle="modal" data-target="#message">Close</a>
                                        </div>
                                    </div>
                                </div>
                            </div>





                    <!--
                            <div id="send-expense" class="modal fade" tabindex="-1" role="dialog">
                                <div class="modal-dialog  modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h3 class="mg-clear">
                                                Expense
                                            </h3>
                                        </div>
                                        <div class="modal-body">
                                            <form id="form_10445" data-form-type="blocs-form" action="message" method="POST">
                                                <div class="form-group">
                                                    <label>
                                                        Admin Name
                                                    </label>
                                                    <input id="name16_22767_28850_23581_10445" class="form-control" required name="name16_22767_28850_23581" />
                                                </div>
                                                <div class="form-group">
                                                    <label>
                                                        Admin ID
                                                    </label>
                                                    <input id="adminID" class="form-control" required name="name16_22767_28850_23581" />
                                                </div>
                    -->
                                                <!--
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-lg-7">
                                                            <div class="form-group">
                                                                <label>
                                                                    Price
                                                                </label>
                                                                <input class="form-control" id="input_413" name="input_413" />
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <div class="text-center w-100">
                                                                <div class="row">
                                                                    <div class="col-lg-7">    -->
                                                                        <!--<a href="index.jsp" class="btn btn-lg btn-wire btn-103-style">Select</a>-->
                                        <!--                                <input type="file" required name="expense_image">Image</input>
                                                                    </div>
                                                                    <div class="col">
                                                                        <h5 class="mg-md">
                                                                            Select pic
                                                                        </h5>
                                                                    </div>
                                                                </div>--><!--<a href="index.jsp" class="btn btn-d btn-lg btn-block">Send</a>-->
                                                <!--            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                -->
                    <!--
                                                <div class="form-group">
                                                    <label>
                                                        Price
                                                    </label>
                                                    <input class="form-control" id="input_413" name="input_413" required />
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <label>
                                                            Description
                                                        </label>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group mb-3">
                                                            <div class="form-group mb-3">
                                                                <textarea type="text" required id="description" class="form-control text-area-style" rows="4" cols="50"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="text-center w-100">
                                                    <div class="row">
                                                        <div class="col-lg-7">

                                                            <input type="file" required name="expense_image" />
                                                        </div>
                                                    </div><br>
                                                </div>



                                                <button class="bloc-button btn btn-d btn-lg btn-block" type="submit">
                                                    Submit
                                                </button>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <a href="#" class="btn btn-d btn-lg btn-close-style" data-toggle="modal" data-target="#send-expense">Close</a>
                                        </div>
                                    </div>
                                </div>
                            </div>


                    -->

                            <!--
                            <div id="confirm-expense" class="modal fade" tabindex="-1" role="dialog">
                                <div class="modal-dialog  modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h3 class="mg-clear">
                                                Confirm Expense
                                            </h3>
                                        </div>
                                        <div class="modal-body">
                                            <form id="form_26770" data-form-type="blocs-form" action="teacher" method="POST">
                                                <div class="form-group">
                                                    <select class="form-control" id="select_296" name="select_296">
                                                        <option value="0">
                                                            Option 1
                                                        </option>
                                                        <option value="1">
                                                            Option 2
                                                        </option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="text-center w-100">
                                                                <a href="index.jsp" class="btn btn-d btn-lg btn-95-style">Approve</a>
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <div class="text-center w-100">
                                                                <a href="index.jsp" class="btn btn-d btn-lg btn-96-style">Disapprove</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <a href="#" class="btn btn-d btn-lg btn-close-style" data-toggle="modal" data-target="#confirm-expense">Close</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            -->



                            <!--
                            <br>
                            <div class="row">
                                <div class="col">
                                    <div class="text-center">
                                        <a href="${pageContext.request.contextPath}/Add-Discount" class="btn btn-d btn-lg btn-block" >Add Discount</a>
                                    </div>
                                </div>
                            </div>
                            -->

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-30 END -->

    <%@include file="footer.jsp" %>

</div>
<!-- Main container END -->



<!-- Additional JS -->
<script src="../../resources/js/jquery.js?8669"></script>
<script src="../../resources/js/bootstrap.bundle.js?9765"></script>
<script src="../../resources/js/blocs.js?5117"></script>
<script src="../../resources/js/jqBootstrapValidation.js"></script>
<script src="../../resources/js/formHandler.js?512"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>

