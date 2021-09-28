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

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?5589">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?283">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?5710">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/toast.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>Teacher registration</title>



    <!-- Analytics -->

    <!-- Analytics END -->

</head>
<%
    if (request.getAttribute("errors") !=""){
        out.println("<body onload=\"showToast()\">");
    }else {
        out.println("<body>");
    }
%>

<script>
    function showToast() {

        var x = document.getElementById("snackbar");
        x.className = "show";
        setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
    }


</script>
<div id="snackbar">${errors}</div>

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
                        Teacher Registration
                    </h3><img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/21-avatar-outline.gif" class="img-fluid img-bloc-8-style float-lg-none mg-md lazyload" alt="21 avatar-outline" />
                    <div class="row">
                        <div class="col-lg-8">
                            <form  enctype="multipart/form-data" id="form_10830" data-form-type="blocs-form" action="/teachers/register" method="POST">
                                <div class="form-group">
                                    <label>
                                        Frist Name
                                    </label>
                                    <input type="hidden" id="id" name="id" value="${id}">
                                    <input type="text" id="firstname" class="form-control" value="${teacherFirst}" required name="firstname" />
                                </div>

                                <div class="form-group">
                                    <label>
                                       Last Name
                                    </label>
                                    <input type="text" id="lastname" value="${teacherLast}" class="form-control" required name="lastname" />
                                </div>
                                <div class="form-group">
                                    <label>
                                       District
                                    </label>
                                    <input type="text" id="district" value="${teacherDistrict}" class="form-control" required name="district" />
                                </div>
                                <div class="form-group">
                                    <label>
                                       Address
                                    </label>
                                    <input type="text" id="Address" value="${teacherAddress}" class="form-control" required name="Address" />
                                </div>
                                <div class="form-group">
                                    <label>
                                       Gender
                                    </label>
                                    <select type="text" required class="form-control" id="gender" name="gender">
                                        <option disabled>
                                            Select Gender
                                        </option>
                                        <option value="2">
                                            Male
                                        </option>
                                        <option value="3">
                                            Female
                                        </option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>
                                       Date Of Birth
                                    </label>
                                    <input type="date" value="${teacherDOB}" id="DOB" class="form-control" required name="DOB" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        Email
                                    </label>
                                    <input id="email" value="${teacherEmail}" class="form-control" type="email" data-error-validation-msg="Not a valid email address" required name="email" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        Password
                                    </label>
                                    <input type="password" required class="form-control" id="password" name="password" />
                                </div>
                                <div class="form-group">
                                    <div class="form-group">
                                        <div class="form-row">
                                    <div class="col">
                                        <label>
                                            Profile Picture
                                        </label>
                                        <div class="row">
                                            <div class="col">
                                                <div class="text-center">
                                                    <input type="file" id="pf_image"  class="btn btn-lg btn-wire btn-26-style" name="pf_image" accept="image/png, image/jpeg" onchange="loadFile1(event)" required/>
                                                    <br>
                                                    <p><img id="output1" alt="No picture selected" width="150" height="150"  src="${teacherImg}"/></p>
                                                    <script>
                                                        var loadFile1 = function(event) {
                                                            var image = document.getElementById('output1');
                                                            image.src = URL.createObjectURL(event.target.files[0]);
                                                        };
                                                    </script>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col">
                                        <label>
                                            Photo of teacher license
                                        </label>
                                        <div class="row">
                                            <div class="col">
                                                <div class="text-center">
                                                    <input type="file" id="licence"  class="btn btn-lg btn-wire btn-26-style" name="licence" accept="image/png, image/jpeg" onchange="loadFile2(event)" required/>
                                                    <br>
                                                    <p><img id="output2" alt="No picture selected" width="150" height="150"  src="${teacherLic}"/></p>
                                                    <script>
                                                        var loadFile2 = function(event) {
                                                            var image = document.getElementById('output2');
                                                            image.src = URL.createObjectURL(event.target.files[0]);
                                                        };
                                                    </script>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label>
                                            Subject of Expertise<br>
                                        </label>
                                        <input type="text" required class="form-control" id="input_782_10830" name="subject" />
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="input_79_10830" name="input_79" data-placement="top" data-toggle="tooltip" title="Be Sure to Read" />
                                                <label class="form-check-label">
                                                    I Agree to These
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <a href="#" class="a-btn a-block" data-toggle="modal" data-target="#terms">Terms and Conditions</a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div id="terms" class="modal fade" tabindex="-1" role="dialog">
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
                                                            <a href="#" class="btn btn-d btn-lg" data-toggle="modal" data-target="#terms">Agree and Close</a>
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
                            <img class="img-fluid lazyload" src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/reshot-illustration-creative-teaching-G9LQ36V4RD%20%281%29.png" alt="reshot illustration-students-at-the-library-3ESJPLQFHR" />
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
<script src="../../resources/js/formHandler.js?7801"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>
