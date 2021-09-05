<%--
  Created by IntelliJ IDEA.
  User: Pehesara
  Date: 9/5/2021
  Time: 12:32 AM
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
    <title>Salaries</title>



    <!-- Analytics -->

    <!-- Analytics END -->

</head>
<body>

    <!-- Preloader -->
    <div id="page-loading-blocs-notifaction" class="page-preloader"></div>
    <!-- Preloader END -->

    <!-- bloc-0 -->
    <%@include file="header.jsp"%>
    <!-- bloc-0 END -->

    <!-- Main container -->
    <div class="page-container">

        <!-- bloc-8 -->
        <div class="bloc l-bloc" id="bloc-8">
            <div class="container bloc-lg">
                <div class="row">
                    <div class="col">
                        <h3 class="mg-md">
                            Salaries
                        </h3>
                        <div class="row">
                            <div class="col-lg-8">
                                <form id="form_19919" data-form-type="blocs-form" action="#" method="POST">
                                    <div class="form-group">
                                        <label>
                                            Enter Your ID
                                        </label>
                                        <input type="number" id="Sal-ID" class="form-control" required name="userid" />
                                    </div>
                                    <div class="form-group">
                                        <div class="form-group">
                                            <label>
                                                Select month
                                            </label>
                                            <select class="form-control" id="Sal_select_month" name="select_month" required>
                                                <option disabled selected value>
                                                    -- Select Month --
                                                </option>
                                                <option value="1">
                                                    January
                                                </option>
                                                <option value="2">
                                                    February
                                                </option>
                                                <option value="3">
                                                    March
                                                </option>
                                                <option value="4">
                                                    April
                                                </option>
                                                <option value="5">
                                                    May
                                                </option>
                                                <option value="6">
                                                    June
                                                </option>
                                                <option value="7">
                                                    July
                                                </option>
                                                <option value="8">
                                                    August
                                                </option>
                                                <option value="9">
                                                    September
                                                </option>
                                                <option value="10">
                                                    October
                                                </option>
                                                <option value="11">
                                                    November
                                                </option>
                                                <option value="12">
                                                    December
                                                </option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>
                                                Select your job type&nbsp;<br>
                                            </label>
                                            <div class="form-group">
                                                <select class="form-control" id="Sal_select_type" name="select_2708" required>
                                                    <option disabled selected value>
                                                        -- Select Type --
                                                    </option>
                                                    <option value="1">
                                                        Teacher
                                                    </option>
                                                    <option value="2">
                                                        Admin
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="divider-h">
                                        <span class="divider"></span>
                                    </div>
                                    <!--
                                    <button class="bloc-button btn btn-d btn-lg btn-block" type="submit">
                                        Submit
                                    </button>
                                    -->
                                    <button type="submit" class="bloc-button btn btn-d btn-lg btn-block" data-toggle="modal" data-target="#check-salary">Check Salary</button>
                                    <!--<a href="#" class="bloc-button btn btn-d btn-lg btn-block" data-toggle="modal" data-target="#check-salary">Check Salary</a>-->
                                </form>
                            </div>
                            <div class="col">
                                <img class="img-fluid lazyload" src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/reshot-illustration-Salary.png" alt="reshot illustration-Salary" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- bloc-8 END -->

    </div>
    <!-- Main container END -->



    <!--  Popup Message  -->
    <div id="check-salary" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog  modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="mg-clear">
                        Your Salary
                    </h3>
                </div>
                <div class="modal-body">
                    <form id="form_22767" data-form-type="blocs-form" action="teacher" method="POST">
                        <div class="form-group" style="text-align: center">
                            <div class="row">
                                <div class="col">
                                    <h5>Month</h5>
                                </div>
                                <div class="col">
                                    <h5>January</h5>
                                </div>
                            </div>
                            <h4>
                                100000/=
                            </h4>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn btn-d btn-lg btn-close-style" data-toggle="modal" data-target="#check-salary">Close</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Popup END -->


    <!-- Footer -->
    <%@include file="footer.jsp" %>

    <!-- Additional JS -->
    <script src="../../resources/js/jquery.js?8669"></script>
    <script src="../../resources/js/bootstrap.bundle.js?9765"></script>
    <script src="../../resources/js/blocs.js?5117"></script>
    <script src="../../resources/js/jqBootstrapValidation.js"></script>
    <script src="../../resources/js/formHandler.js?1725"></script>
    <script src="../../resources/js/lazysizes.min.js" defer></script>
    <script src="../../resources/js/formHandler.js"></script>
    <!-- Additional JS END -->

</body>
</html>
