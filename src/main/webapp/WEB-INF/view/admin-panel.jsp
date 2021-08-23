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
                                <a href="#" class="btn btn-d btn-lg btn-block" data-toggle="modal" data-target="#approve-teacher">Teacher approves</a><a href="#" class="btn btn-d btn-lg btn-block" data-toggle="modal" data-target="#approve-banner">Banner Approves</a>
                            </div>
                        </div>
                        <div class="col">
                            <div class="text-center">
                                <div class="text-center" id="expenses-small">
                                    <a href="#" class="btn btn-d btn-lg btn-block" data-toggle-visibility="expenses-long,expenses-small">Expenses</a>
                                </div>
                                <div class="object-hidden" id="expenses-long">
                                    <a href="#" class="btn btn-d btn-lg btn-block" data-toggle="modal" data-target="#send-expense">Send Expense</a><a href="#" class="btn btn-d btn-lg btn-block" data-toggle="modal" data-target="#confirm-expense">Confirm Expense</a>
                                    <div class="divider-h">
                                        <span class="divider"></span>
                                    </div>
                                    <div class="text-center">
                                        <a href="#" class="btn btn-lg btn-wire btn-87-style" data-toggle-visibility="expenses-long,expenses-small">△</a>
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
                                    <a href="add-course.jsp" class="btn btn-d btn-lg btn-block">Course</a><a href="#" class="btn btn-d btn-lg btn-block" data-toggle="modal" data-target="#add-event">Event</a>
                                    <div class="divider-h">
                                        <span class="divider"></span>
                                    </div><a href="#" class="btn btn-lg btn-rd btn-wire btn-△-style" data-toggle-visibility="create-less,create-more">△</a>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="text-center">
                                <a href="#" class="btn btn-d btn-lg btn-block" data-toggle="modal" data-target="#message">Send A Message</a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div id="add-event" class="modal fade" tabindex="-1" role="dialog">
                                <div class="modal-dialog  modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h3 class="mg-clear">
                                                Event
                                            </h3>
                                        </div>
                                        <div class="modal-body">
                                            <form id="form_16" data-form-type="blocs-form" action="event" method="POST">
                                                <div class="form-group">
                                                    <label>
                                                        Name
                                                    </label>
                                                    <input id="name16" class="form-control" required name="name16" />
                                                </div>
                                                <div class="form-group">
                                                    <label>
                                                        Date
                                                    </label>
                                                    <input id="name16" class="form-control" required name="name16" />
                                                </div>
                                                <button class="bloc-button btn btn-d btn-lg btn-block" type="submit">
                                                    Submit
                                                </button>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <a href="#" class="btn btn-d btn-lg btn-close-style" data-toggle="modal" data-target="#add-event">Close</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                            <div id="approve-banner" class="modal fade" tabindex="-1" role="dialog">
                                <div class="modal-dialog  modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h3 class="mg-clear">
                                                Banner
                                            </h3>
                                        </div>
                                        <div class="modal-body">
                                            <form id="form_27299" data-form-type="blocs-form" action="teacher" method="POST">
                                                <div class="form-group">
                                                    <select class="form-control" id="select_2861" name="select_2861">
                                                        <option value="0">
                                                            Option 1
                                                        </option>
                                                        <option value="1">
                                                            Option 2
                                                        </option>
                                                    </select>
                                                    <div class="form-group">
                                                        <label>
                                                            Price
                                                        </label>
                                                        <input class="form-control" id="input_719" name="input_719" />
                                                    </div>
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
                                            <a href="#" class="btn btn-d btn-lg btn-close-style" data-toggle="modal" data-target="#approve-banner">Close</a>
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
                                                        Name
                                                    </label>
                                                    <input id="name16_22767_28850_23581_10445" class="form-control" required name="name16_22767_28850_23581" />
                                                </div>
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
                                                                    <div class="col-lg-7">
                                                                        <a href="index.jsp" class="btn btn-lg btn-wire btn-103-style">Select</a>
                                                                    </div>
                                                                    <div class="col">
                                                                        <h5 class="mg-md">
                                                                            Select pic
                                                                        </h5>
                                                                    </div>
                                                                </div><a href="index.jsp" class="btn btn-d btn-lg btn-block">Send</a>
                                                            </div>
                                                        </div>
                                                    </div>
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-30 END -->

    <!-- ScrollToTop Button -->
    <a class="bloc-button btn btn-d scrollToTop" onclick="scrollToTarget('1',this)"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 32 32"><path class="scroll-to-top-btn-icon" d="M30,22.656l-14-13-14,13"/></svg></a>
    <!-- ScrollToTop Button END-->


    <!-- bloc-27 -->
    <div class="bloc l-bloc" id="bloc-27">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <h4 class="mg-md text-sm-left text-center">
                        About
                    </h4><a href="index.jsp" class="a-btn a-block footer-link">The Team</a><a href="index.jsp" class="a-btn a-block footer-link">Contact Us</a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <h4 class="mg-md text-sm-left text-center">
                        Get the app
                    </h4><a href="index.jsp" class="a-btn a-block footer-link">Android</a><a href="index.jsp" class="a-btn a-block footer-link">iOS</a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <h4 class="mg-md text-sm-left text-center">
                        Follow Us
                    </h4><a href="index.jsp" class="a-btn a-block footer-link">Twitter</a><a href="index.jsp" class="a-btn a-block footer-link">Facebook</a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <h4 class="mg-md text-sm-left text-center">
                        Connect
                    </h4>
                    <div class="row">
                        <div class="col-6 col-sm-2 col offset-sm-0">
                            <div class="text-center">
                                <a href="facebook.com"><span class="fab fa-facebook-f icon-md"></span></a>
                            </div>
                        </div>
                        <div class="col-6 col-sm-2">
                            <div class="text-center">
                                <a><span class="fab fa-twitter icon-md"></span></a>
                            </div>
                        </div>
                        <div class="col-6 col-sm-2">
                            <div class="text-center">
                                <a><span class="fab fa-instagram icon-md"></span></a>
                            </div>
                        </div>
                        <div class="col-6 col-sm-2">
                            <div class="text-center">
                                <a><span class="far fa-envelope icon-md"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-27 END -->

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

