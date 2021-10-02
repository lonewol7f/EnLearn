<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Maneesha
  Date: 8/22/2021
  Time: 11:17 PM
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

  <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?1465">
  <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?3550">
  <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?6417">
  <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
  <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
  <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
  <title>Add Discount</title>



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

  <div class="container mt-lg-5">
    <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/admins" role="button">Back</a>
    <a class="btn btn-info" href="${pageContext.request.contextPath}/discounts/showDiscounts" role="button">Added Discounts</a>
    <a class="btn btn-info" href="${pageContext.request.contextPath}/discounts/Test-Shop" role="button">Test Shop</a>
  </div>

  <!--Add Discount START -->
  <div class="bloc l-bloc" id="bloc-a">
    <div class="container bloc-lg">
      <div class="row">


        <div class="col">
          <img class="img-fluid lazyload" style="margin-top: 0px" src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/Update_Discount.png" alt="reshot illustration-Salary" />
          <img class="img-fluid lazyload" style="margin-top: 250px" src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/S2_Couple-removebg-preview.png" alt="reshot illustration-Salary" />
        </div>


        <div class="col">
          <div>
            <div class="discount-box" style="background-color: #7ca2d5; padding: 20px;">
              <form id="adddiscount" data-form-type="blocs-form" enctype="multipart/form-data" action="/discounts/addDiscount" method="POST">
                <h1 class="text-center" style="color: #ffffff">
                  Add Discount
                </h1>
                <div class="row">
                  <div class="form-group">
                    <label for="admin_id">
                      Admin ID
                    </label>
                    <input type="number" id="admin_id" name="admin_id" class="form-control field-style" required/>
                  </div>
                  <div class="form-group">
                    <label for="lable">
                      Discount title name
                    </label>
                    <input type="text" id="lable" name="title" class="form-control field-style" required/>
                  </div>
                  <div class="form-group">
                    <label>
                      Discount Amount
                    </label>
                    <input type="number" id="amount" name="discount" class="form-control field-style" required/>
                  </div>
                  <div class="form-group">
                    <label>
                      Teacher Name
                    </label>
                    <input type="text" required id="teacher" name="teacher_name" class="form-control field-style" />
                  </div>
                  <div class="form-group">
                    <label>
                      Course/Module Code
                    </label>
                    <select class="form-select" name="course" required>
                      <option disabled selected value>
                        -- Select Course/Module --
                      </option>
                      <option value="Mathematics">
                        Mathematics
                      </option>
                      <option value="Science">
                        Science
                      </option>
                      <option value="History">
                        History
                      </option>
                      <option value="English">
                        English
                      </option>
                      <option value="ICT">
                        ICT
                      </option>
                      <option value="Sinhala">
                        Sinhala
                      </option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>
                      Grade
                    </label>
                    <select class="form-select" name="grade" required>
                      <option disabled selected value>
                        -- Grade --
                      </option>
                      <option value="6">
                        6
                      </option>
                      <option value="7">
                        7
                      </option>
                      <option value="8">
                        8
                      </option>
                      <option value="9">
                        9
                      </option>
                      <option value="10">
                        10
                      </option>
                      <option value="11">
                        11
                      </option>
                      <option value="12">
                        12
                      </option>
                      <option value="13">
                        13
                      </option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>
                      Discount Description
                    </label>
                    <textarea type="text" name="description" id="description" class="form-control text-area-style" rows="4" cols="50"></textarea>
                  </div>
                  <div class="form-group">
                    <label>
                      Upload Image
                    </label>
                    <input type="file" class="form-control" name="image" id="image" accept="image/*" />
                  </div>
                </div>

                <%--<div class="row">
                  <div class="col-lg-4">
                    <h5 class="form-label text-lg-center h5-style mx-auto d-block mg-clear btn-resize-mode">
                      Discount title name
                    </h5>
                  </div>
                  <div class="col">
                    <div class="form-group mb-3">
                      <input type="text" id="lable" name="title" class="form-control field-style" required/>
                    </div>
                  </div>
                </div>--%>
                <%--<div class="row">
                  <div class="col-lg-4">
                    <h5 class="form-label text-lg-center h5-style mx-auto d-block mg-clear btn-resize-mode">
                      Discount Amount
                    </h5>
                  </div>
                  <div class="col">
                    <div class="form-group mb-3">
                      <input type="number" id="amount" name="discount" class="form-control field-style" required/>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-lg-4">
                    <h5 class="form-label text-lg-center h5-style mx-auto d-block mg-clear btn-resize-mode">
                      Teacher Name
                    </h5>
                  </div>
                  <div class="col">
                    <div class="form-group mb-3">
                      <input type="text" required id="teacher" name="teacher_name" class="form-control field-style" />
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-lg-4">
                    <h5 class="form-label text-lg-center h5-style mx-auto d-block mg-clear btn-resize-mode">
                      Course/Module Code
                    </h5>
                  </div>
                  <div class="col">
                    <div class="form-group mb-3">
                      <div class="form-group mb-3 container-div-style">
                        <select class="form-control" name="course" required>
                          <option disabled selected value>
                            -- Select Course/Module --
                          </option>
                          <option value="Mathematics">
                            Mathematics
                          </option>
                          <option value="Science">
                            Science
                          </option>
                          <option value="History">
                            History
                          </option>
                          <option value="English">
                          English
                        </option>
                          <option value="ICT">
                          ICT
                        </option>
                          <option value="Sinhala">
                          Sinhala
                        </option>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-lg-4">
                    <h5 class="form-label text-lg-center h5-style mx-auto d-block mg-clear btn-resize-mode">
                      Grade
                    </h5>
                  </div>
                  <div class="col">
                    <div class="form-group mb-3">
                      <div class="form-group mb-3 container-div-style">
                        <select class="form-control" name="grade" required>
                          <option disabled selected value>
                            -- Grade --
                          </option>
                          <option value="6">
                            6
                          </option>
                          <option value="7">
                            7
                          </option>
                          <option value="8">
                            8
                          </option>
                          <option value="9">
                            9
                          </option>
                          <option value="10">
                            10
                          </option>
                          <option value="11">
                            11
                          </option>
                          <option value="12">
                            12
                          </option>
                          <option value="13">
                            13
                          </option>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-lg-4">
                    <h5 class="form-label text-lg-center h5-style mx-auto d-block mg-clear btn-resize-mode">
                      Discount Description
                    </h5>
                  </div>
                  <div class="col">
                    <div class="form-group mb-3">
                      <div class="form-group mb-3">
                        <textarea type="text" name="description" id="description" class="form-control text-area-style" rows="4" cols="50"></textarea>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-lg-4">
                    <h5 class="form-label text-lg-center h5-style mx-auto d-block mg-clear btn-resize-mode">
                      Upload Image
                    </h5>
                  </div>
                  <div class="col">
                    <div class="form-group mb-3">
                      <div class="row">
                        <div class="col-lg-3">

                          <input type="file" name="image" id="image"  />
                        </div>
                      </div>
                    </div>
                  </div>
                </div>--%>
                <br><br>
                <div class="text-center">
                  <button class="bloc-button btn btn-d btn-lg btn-submit-style" type="submit">
                    Submit
                  </button>
                  <button class="bloc-button btn btn-d btn-lg btn-submit-style" type="submit">
                    Demo
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- ADD Discount END -->



  <!--Slide show-->
  <!--
  <div class="bloc l-bloc animDelay04" id="bloc-12">
    <div class="container bloc-lg bloc-no-padding-lg">
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
                    <a href="index.html" class="btn btn-danger" >Delete</a>
                    <a href="index.html" class="btn btn-success">Update</a>
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <img alt="slide 2" class="d-inline-block w-100" src="../../resources/img/placeholder-image-wide.png" />
                <div class="carousel-caption caption-area-shop">
                  <div class="blockquote">
                    <a href="index.html" class="btn btn-danger" >Delete</a>
                    <a href="index.html" class="btn btn-success">Update</a>
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-inline-block w-100" alt="slide 3" src="../../resources/img/placeholder-image-wide.png" />
                <div class="carousel-caption caption-area-shop">
                  <div class="blockquote">
                    <a href="index.html" class="btn btn-danger" >Delete</a>
                    <a href="index.html" class="btn btn-success">Update</a>
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-inline-block w-100" alt="placeholder image-wide" src="../../resources/img/placeholder-image-wide.png" />
                <div class="carousel-caption caption-area-shop">
                  <div class="blockquote">
                    <a href="index.html" class="btn btn-danger" >Delete</a>
                    <a href="index.html" class="btn btn-success">Update</a>
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-inline-block w-100" alt="placeholder image-wide" src="../../resources/img/placeholder-image-wide.png" />
                <div class="carousel-caption caption-area-shop">
                  <div class="blockquote">
                    <a href="index.html" class="btn btn-danger" >Delete</a>
                    <a href="index.html" class="btn btn-success">Update</a>
                  </div>
                </div>
              </div>
            </div><a class="carousel-nav-controls carousel-control-prev" href="#carousel-2" role="button" data-slide="prev"><svg width="26" height="26" viewBox="0 0 32 32"><path class="carousel-nav-icon carousel-prev-icon" d="M22,2L9,16,22,30"></path></svg><span class="sr-only">Previous</span></a><a class="carousel-nav-controls carousel-control-next" href="#carousel-2" role="button" data-slide="next"><svg width="26" height="26" viewBox="0 0 32 32"><path class="carousel-nav-icon carousel-next-icon" d="M10.344,2l13,14-13,14"></path></svg><span class="sr-only">Next</span></a>
          </div>
        </div>
      </div>
    </div>
  </div>
  -->
  <!-- End of Slide show -->




  <!-- ScrollToTop Button -->
  <a class="bloc-button btn btn-d scrollToTop" onclick="scrollToTarget('1',this)"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 32 32"><path class="scroll-to-top-btn-icon" d="M30,22.656l-14-13-14,13"/></svg></a>
  <!-- ScrollToTop Button END-->


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

