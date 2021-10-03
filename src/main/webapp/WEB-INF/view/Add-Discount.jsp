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
  <link href='https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' rel='stylesheet'> <!-- For toast msg css -->

  <title>Add Discount</title>


  <style>
    #toast{
      position: absolute;
      top: 20px;
      outline: #0b2e13 medium;
      right: 20px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    .DiscountToast{
      background: rgba(112, 229, 112, 0.6);
      padding: 10px 30px;
      border-radius: 5px;
      margin-bottom: 10px;
      color: #235c15;
      user-select: none;
    }
  </style>



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
        <div id="toast"></div>  <!-- Toast -->


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
                <br><br>
                <div class="text-center">
                  <button class="bloc-button btn btn-d btn-lg btn-submit-style" id="AddDiscountBTN" type="submit">
                    Submit
                  </button>
                  <button class="bloc-button btn btn-d btn-lg btn-submit-style" >
                    Demo
                  </button>
                  <br>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>




  <script>
    const button = document.querySelector('#AddDiscountBTN')
    const toastCont = document.querySelector('#toast')

    const randomMSG = ['Discount Not Added']
    const colours = ['green','red']

    button.addEventListener('click', ()=> createToast())
    function createToast(){
      let toastElement = document.createElement('div')
      toastElement.classList.add('DiscountToast')
      toastElement.innerText = getRandomMSG()
      toastCont.appendChild(toastElement)

      setTimeout( ()=> { toastElement.remove()}, 3000)
    }

    function getRandomMSG(){
      return randomMSG[Math.floor(Math.random() * randomMSG.length)]
    }

  </script>




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
<script src="../../resources/js/lazysizes.min.js" defer></script>
<script src="../../resources/js/https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script> <!-- For toast msg js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" ></script>  <!-- jQuery for toastr -->
<!-- Additional JS END -->


</body>
</html>

