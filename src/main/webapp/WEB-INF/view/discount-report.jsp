<%--
  Created by IntelliJ IDEA.
  User: 94764
  Date: 9/5/2021
  Time: 3:24 PM
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

    <!-- Back Button START -->
    <div class="container mt-lg-5">
      <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/report" role="button">Back</a>
    </div>
    <!-- Back Button END -->

    <div class="bloc l-bloc" id="bloc-8">
      <div class="container bloc-lg">
        <div class="row">
          <div class="col">
            <h3 class="mg-md" style="text-align: center">
              Discount Rate Report
            </h3>
            <img class="img-fluid lazyload test-img" src="${pageContext.request.contextPath}/resources/img/discount.png" data-src="${pageContext.request.contextPath}/resources/img/discount.png" width="450rem" height="450rem"  style="position: relative;left: 32%; padding-bottom: 30px;" alt="Discount Image" />
            <div class="row">
              <table  class="table">
                <tr>
                  <th>Grade</th>
                  <th>Discount No</th>
                  <th>Course</th>
                  <th>Initial Rate</th>
                  <th>Discount Rate</th>
                  <th>New Course Fee</th>
                  <th>Teacher</th>
                </tr>
                <tr>
                  <td>10</td>
                  <td>100</td>
                  <td>MAthematics</td>
                  <td>500</td>
                  <td>100</td>
                  <td>400</td>
                  <td>Kamala</td>
                </tr>
                <tr>
                  <td>10</td>
                  <td>100</td>
                  <td>MAthematics</td>
                  <td>500</td>
                  <td>100</td>
                  <td>400</td>
                  <td>Kamala</td>
                </tr>
                <tr>
                  <td>10</td>
                  <td>100</td>
                  <td>MAthematics</td>
                  <td>500</td>
                  <td>100</td>
                  <td>400</td>
                  <td>Kamala</td>
                </tr>
                <tr>
                  <td>10</td>
                  <td>100</td>
                  <td>MAthematics</td>
                  <td>500</td>
                  <td>100</td>
                  <td>400</td>
                  <td>Kamala</td>
                </tr>
                <tr>
                  <td>10</td>
                  <td>100</td>
                  <td>MAthematics</td>
                  <td>500</td>
                  <td>100</td>
                  <td>400</td>
                  <td>Kamala</td>
                </tr>
                <tr>
                  <td>10</td>
                  <td>100</td>
                  <td>MAthematics</td>
                  <td>500</td>
                  <td>100</td>
                  <td>400</td>
                  <td>Kamala</td>
                </tr>
              </table>
            </div>
            <br>

            <hr style="color: #8e2e48; height: 3px;">

            <div class="row">
              <button class="bloc-button btn btn-d btn-lg btn-block">Print</button>
            </div>

            <hr style="color: #8e2e48; height: 3px;">
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
