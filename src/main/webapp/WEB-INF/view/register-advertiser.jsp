<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:57 PM
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

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?4383">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?6026">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?3530">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>register-student-1</title>



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
    <%
        int id = Integer.parseInt(String.valueOf(request.getAttribute("advertiserId")));
        boolean update = (id!=-1);
    %>
    <div class="bloc l-bloc" id="bloc-8">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <h3 class="mg-md">
                        <%
                            if (update){
                                out.println("Update your profile");
                            }else {
                                out.println("Advertiser Registration");
                            }
                        %>

                    </h3><img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/21-avatar-outline.gif" class="img-fluid img-bloc-8-style float-lg-none mg-md lazyload" alt="21 avatar-outline" />
                    <div class="row">
                        <div class="col-lg-8">
                            <form id="form_22096" enctype="multipart/form-data" data-form-type="blocs-form" action="/advertisers/custom-action-url"  method="POST" >


                                <div class="form-group">
                                    <%
                                    String a = "<input type=\"hidden\" id=\"advertiserId\" name=\"advertiserId\" value=\""+id+"\">";
                                    out.println(a);

                                    %>

                                    <label>
                                        Company Name
                                    </label>
                                    <input id="name" class="form-control" required name="name" value="${advertiserCN}"/>
                                </div>

                                <div class="form-group">
                                    <label>
                                        Email
                                    </label>
                                    <input id="email" class="form-control" type="email" value="${advertisementEmail}" data-error-validation-msg="Not a valid email address" required name="email" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        Contact Number
                                    </label>
<%--                                    TODO type="Tel" --%>
                                    <input type="text" id="phone" placeholder="+9471-6467055" pattern="+[0-9]{4}-[0-9]{7}" class="form-control" name="phone" value="${advertisementContact}">
                                </div>

                                <div class="form-group">
                                    <label>
                                        Password
                                    </label>
                                    <input id="password" type="password" class="form-control" required name="password" />
                                </div>



                                <div class="form-group">
                                    <label>
                                        Upload Profile Picture
                                    </label>
                                    <div class="row">
                                        <div class="col">
                                            <div class="text-center">
                                                <input type="file" id="image"  class="btn btn-lg btn-wire btn-26-style" name="image" accept="image/png, image/jpeg" onchange="loadFile(event)" required/>
                                                <br>
                                                <p><img id="output" alt="expenses_image" width="300" height="300" /></p>
                                                <script>
                                                    var loadFile = function(event) {
                                                        var image = document.getElementById('output');
                                                        image.src = URL.createObjectURL(event.target.files[0]);
                                                    };
                                                </script>
                                            </div>
                                        </div>
                                        <div class="col no-margin">
                                            <h6 class="mg-md">
                                                No picture Selected
                                            </h6>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="input_79_10830_22096" name="input_79" data-placement="top" data-toggle="tooltip" title="Be Sure to Read" />
                                            <label class="form-check-label">
                                                I Agree to These
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <a href="#" class="a-btn a-block" data-toggle="modal" data-target="#modal-32499">Terms and Conditions</a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div id="modal-32499" class="modal fade" tabindex="-1" role="dialog">
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
                                                        <a href="#" class="btn btn-d btn-lg" data-toggle="modal" data-target="#modal-32499">Agree and Close</a>
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
                            <img class="img-fluid lazyload" src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/reshot-illustration-business-analysis-meeting-XY2QMK9AWJ%281%29.png" alt="reshot illustration-students-at-the-library-3ESJPLQFHR" />
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
<script src="../../resources/js/formHandler.js?6451"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>
