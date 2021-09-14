<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:59 PM
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

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?759">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?7076">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?9014">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>shop</title>



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

    <!-- bloc-11 -->
    <div class="bloc l-bloc" id="bloc-11">
        <div class="container bloc-lg bloc-no-padding-lg">
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col-lg-9">
                            <div class="divider-h">
                                <span class="divider"></span>
                            </div>
                        </div>
                        <div class="col">
                            <a href="#" data-toggle="modal" data-target="#reedeem"><img class="img-fluid lazyload" src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/298-coins-outline.gif" alt="298 coins-outline" data-placement="bottom" data-toggle="tooltip" title="Click to reddem code" /></a>
                        </div>
                        <div class="col">
                            <h3 class="mg-md text-lg-center btn-resize-mode h3-10-style">
                                <span>200</span>
                            </h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-11 END -->

    <!-- bloc-12 -->
    <div class="bloc l-bloc animDelay04" id="bloc-12">
        <div class="container bloc-lg bloc-no-padding-lg">
            <div class="row">
                <div class="col">
                    <div id="reedeem" class="modal fade" tabindex="-1" role="dialog">
                        <div class="modal-dialog  modal-dialog-centered" role="document">
                            <div class="reedeem-card modal-content">
                                <div class="card-header-style modal-header">
                                    <h3 class="mg-clear">
                                        Reedeem
                                    </h3>
                                </div>
                                <div class="modal-body">
                                    <form id="form_15" data-form-type="blocs-form" action="reedeem-action-url" method="POST">
                                        <div class="form-group">
                                            <input id="name15" class="form-control" required placeholder="Enter code in the paper lol" name="name15" />
                                        </div>
                                    </form>
                                    <div class="text-center w-100">
                                        <button class="bloc-button btn btn-d btn-lg btn-40-style" type="submit">
                                            Apply
                                        </button>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="text-center w-100">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="text-center text-lg-center w-100">
                                            <a href="#" class="btn btn-lg btn-wire btn-rd float-lg-none btn-block" data-toggle="modal" data-target="#reedeem">Close</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row shop-heading">
                <div class="col-lg-1">
                    <img class="img-fluid lazyload" src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/146-basket-trolley-shopping-card-outline.gif" alt="146 basket-trolley-shopping-card-outline" />
                </div>
                <div class="col-lg-2">
                    <h2 class="mg-md">
                        Shop
                    </h2>
                </div>
                <div class="col go-dissapear">
                    <div class="divider-h">
                        <span class="divider"></span>
                    </div>
                </div>
            </div>



            <div class="row">
                <c:forEach var="discountCard" items="${showCard}" varStatus="loop">

                    <div class="col">
                        <div class="col spacing-top">
                            <div class="card">
                                <h5 class="mg-md text-lg-center">
                                    <c:out value="${discountCard.title}" />
                                </h5>
                                <div>
                                    <img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/Discount_For_Card.png" class="img-fluid mx-auto d-block lazyload" alt="placeholder image" />
                                    <div class="divider-h">
                                        <span class="divider"></span>
                                        <div class="row">
                                            <div class="col">
                                                <h6 class="mg-md text-lg-center">
                                                    Discount : <c:out value="${discountCard.discount}" />
                                                </h6>
                                            </div>
                                            <div class="col">
                                                <h6 class="mg-md text-lg-center">
                                                    Category : <c:out value="${discountCard.course}" />
                                                </h6>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <h6 class="mg-md text-lg-center">
                                                    Teacher : <c:out value="${discountCard.teacher_name}" />
                                                </h6>
                                            </div>
                                            <div class="col">
                                                <h6 class="mg-md text-lg-center">
                                                    Grade : <c:out value="${discountCard.grade}" />
                                                </h6>
                                            </div>
                                        </div>
                                        <h6 class="mg-md text-lg-center">
                                            <c:out value="${discountCard.description}" />
                                        </h6>
                                    </div>
                                    <div class="text-center">
                                        <a href="#" class="btn btn-d btn-lg shop-card-btn btn-43-style btn-rd" data-toggle="modal" data-target="#shop-code">Get Discount</a>
                                    </div>
                                    <div class="divider-h">
                                        <span class="divider"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



                    <!--  Popup Message  -->
                    <div id="shop-code" class="modal fade" tabindex="-1" role="dialog">
                        <div class="modal-dialog  modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="mg-clear">
                                        Discount Code
                                    </h3>
                                </div>
                                <div class="modal-body">
                                    <form id="form_22767" data-form-type="blocs-form" action="teacher" method="POST">
                                        <div class="form-group" style="text-align: center">
                                            <h5>
                                                Use below code to get discount
                                            </h5>
                                            <h3>
                                                <c:out value="${discountCard.id}" />
                                            </h3>
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <a href="#" class="btn btn-d btn-lg btn-close-style" data-toggle="modal" data-target="#shop-code">Close</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Popup END -->
                </c:forEach>

            </div>



            <div class="row">
                <div class="col">
                    <div class="divider-h">
                        <span class="divider"></span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div id="carousel-2" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-2" data-slide-to="0" class="active">
                            </li>
                            <li data-target="#carousel-2" data-slide-to="1">
                            </li>
                            <li data-target="#carousel-2" data-slide-to="2">
                            </li>
                            <li data-target="#carousel-2" data-slide-to="3">
                            </li>
                            <li data-target="#carousel-2" data-slide-to="4">
                            </li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <img class="d-inline-block w-100" alt="slide 1" src="../../resources/img/placeholder-image-wide.png" />
                                <div class="carousel-caption caption-area-shop">
                                    <div class="blockquote">
                                        <p class="text-lg-left">
                                            This Area is for Advertising.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img alt="slide 2" class="d-inline-block w-100" src="../../resources/img/placeholder-image-wide.png" />
                                <div class="carousel-caption caption-area-shop">
                                    <div class="blockquote">
                                        <p class="text-lg-left">
                                            This Area is for Advertising.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-inline-block w-100" alt="slide 3" src="../../resources/img/placeholder-image-wide.png" />
                                <div class="carousel-caption caption-area-shop">
                                    <div class="blockquote">
                                        <p class="text-lg-left">
                                            This Area is for Advertising.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-inline-block w-100" alt="placeholder image-wide" src="../../resources/img/placeholder-image-wide.png" />
                                <div class="carousel-caption caption-area-shop">
                                    <div class="blockquote">
                                        <p class="text-lg-left">
                                            This Area is for Advertising.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-inline-block w-100" alt="placeholder image-wide" src="../../resources/img/placeholder-image-wide.png" />
                                <div class="carousel-caption caption-area-shop">
                                    <div class="blockquote text-lg-left">
                                        <p>
                                            This Area is for Advertising.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div><a class="carousel-nav-controls carousel-control-prev" href="#carousel-2" role="button" data-slide="prev"><svg width="26" height="26" viewBox="0 0 32 32"><path class="carousel-nav-icon carousel-prev-icon" d="M22,2L9,16,22,30"></path></svg><span class="sr-only">Previous</span></a><a class="carousel-nav-controls carousel-control-next" href="#carousel-2" role="button" data-slide="next"><svg width="26" height="26" viewBox="0 0 32 32"><path class="carousel-nav-icon carousel-next-icon" d="M10.344,2l13,14-13,14"></path></svg><span class="sr-only">Next</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-12 END -->

    <%@include file="footer.jsp" %>

</div>
<!-- Main container END -->



<!-- Additional JS -->
<script src="../../resources/js/jquery.js?8669"></script>
<script src="../../resources/js/bootstrap.bundle.js?9765"></script>
<script src="../../resources/js/blocs.js?5117"></script>
<script src="../../resources/js/jqBootstrapValidation.js"></script>
<script src="../../resources/js/formHandler.js?1725"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>
