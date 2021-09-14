<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:58 PM
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

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?9078">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?524">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?5388">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>register-student</title>



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

    <!-- bloc-8 -->
    <div class="bloc l-bloc" id="bloc-8">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <h3 class="mg-md">
                        Student Registration - School
                    </h3><img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/21-avatar-outline.gif" class="img-fluid img-bloc-8-style float-lg-none mg-md lazyload" alt="21 avatar-outline" />
                    <div class="row">
                        <div class="col-lg-8">
                            <form id="form_19919" data-form-type="blocs-form" action="/students/custom-action-url" enctype="multipart/form-data"  method="POST">
                                <div class="form-group">
                                    <label>
                                        Name
                                    </label>
                                    <input id="name7_10830_22096_19919" class="form-control" required name="name7" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        Email
                                    </label>
                                    <input id="email7_10830_22096_19919" class="form-control" type="email" data-error-validation-msg="Not a valid email address" required name="email" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        Password
                                    </label>
                                    <input class="form-control" id="input_782_10830_22096_19917" name="password" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        Address
                                    </label>
                                    <input class="form-control" id="input_782_10830_22096_19914" name="Address" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        Date of birth
                                    </label>
                                    <input class="form-control" id="input_782_10830_22096_19911" name="DOB" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        Phone Number
                                    </label>
                                    <input class="form-control" id="input_782_10830_22096_19913" name="Phone-Number" />
                                </div>


                                <div class="form-group">
                                    <label>
                                        Image
                                    </label>
                                    <input type="file" name="image" />
                                </div>

                                 <%-- <div class="form-group">
                                    <div class="form-group">
                                        <label>
                                            Profile Picture
                                        </label>
                                        <div class="row">
                                            <div class="col">
                                                <div class="text-center">
                                                    <a href="index.jsp" class="btn btn-lg btn-wire btn-26-style">Upload a photo</a>
                                                </div>
                                            </div>
                                            <div class="col no-margin">
                                                <h6 class="mg-md">
                                                    No picture Selected
                                                </h6>
                                            </div>
                                        </div>
                                    </div>--%>
                                    <div class="form-group">
                                        <label>
                                            School
                                        </label>
                                        <input class="form-control" id="input_782_10830_22096_19919" name="Sch" />
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            Grade&nbsp;<br>
                                        </label>
                                        <div class="form-group">
                                            <select class="form-control" id="select_2708" name="select_2708">
                                                <option value="1">
                                                    Grade 1
                                                </option>
                                                <option value="2">
                                                    Grade 2
                                                </option>
                                                <option value="3">
                                                    Grade 3
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="input_79_10830_22096_19919" name="input_79" data-placement="top" data-toggle="tooltip" title="Be Sure to Read" />
                                                <label class="form-check-label">
                                                    I Agree to These
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <a href="#" class="a-btn a-block" data-toggle="modal" data-target="#modal-27160">Terms and Conditions</a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div id="modal-27160" class="modal fade" tabindex="-1" role="dialog">
                                                <div class="modal-dialog  modal-dialog-centered" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h3 class="mg-clear">
                                                                Terms and Conditions
                                                            </h3>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="text-lg-center">
                                                                <img class="img-fluid img-13-style lazyload" src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/966-privacy-policy-outline.gif" alt="966 privacy-policy-outline" />
                                                            </div>
                                                            <p>
                                                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                                                            </p>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <a href="#" class="btn btn-d btn-lg" data-toggle="modal" data-target="#modal-27160">Agree and Close</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="divider-h">
                                    <span class="divider"></span>
                                </div>
                                <button class="bloc-button btn btn-d btn-lg btn-block" type="submit">
                                    Submit
                                </button>
                            </form>
                        </div>
                        <div class="col">
                            <img class="img-fluid lazyload" src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/reshot-illustration-students-at-the-library-3ESJPLQFHR.png" alt="reshot illustration-students-at-the-library-3ESJPLQFHR" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-8 END -->

    <%@include file="footer.jsp" %>

</div>
<!-- Main container END -->



<!-- Additional JS -->
<script src="../../resources/js/jquery.js?8669"></script>
<script src="../../resources/js/bootstrap.bundle.js?9765"></script>
<script src="../../resources/js/blocs.js?5117"></script>
<script src="../../resources/js/jqBootstrapValidation.js"></script>
<script src="../../resources/js/formHandler.js?3891"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>

