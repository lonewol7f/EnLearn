<%--
  Created by IntelliJ IDEA.
  User: Flashminat0
  Date: 9/9/2021
  Time: 8:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" href="../../resources/img/logo.png">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../../resources/navbarUtilVendors/assets/css/vendor.min.css">
    <link rel="stylesheet" href="../../resources/fonts/bootstrap-icons/font/bootstrap-icons.css">
    <link rel="stylesheet" href="../../resources/navbarUtilVendors/assets/css/theme.min.css?v=1.0">

    <title>Heading</title>
</head>
<body>
<header id="header" class="navbar navbar-expand-lg navbar-end navbar-sticky-top navbar-light bg-white" style="position: relative">
    <div class="container">
        <nav class="js-mega-menu navbar-nav-wrap">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/" aria-label="Front">
                <img class="navbar-brand-logo" src="../../resources/img/logo.png" alt="Logo">
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                    aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-default">
            <i class="bi-list"></i>
          </span>
                <span class="navbar-toggler-toggled">
            <i class="bi-x"></i>
          </span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <div class="navbar-sticky-top-scroller">
                    <ul class="navbar-nav">
                        <li class="hs-has-sub-menu nav-item">
                            <a id="companyMegaMenu" class="hs-mega-menu-invoker nav-link   "
                               href="" role="button" data-bs-toggle="dropdown"
                               aria-expanded="false">
                                Courses
                            </a>
                            <div class="hs-sub-menu dropdown-menu" aria-labelledby="companyMegaMenu"
                                 style="min-width: 14rem;">
                                <a class="dropdown-item " href="${pageContext.request.contextPath}/shop">Shop</a>
                                <a class="dropdown-item " href="${pageContext.request.contextPath}/courses/">Single Course</a>
                                <a class="dropdown-item " href="${pageContext.request.contextPath}/courses/videos">Continue Video</a>
                            </div>
                        </li>


                        <li class="hs-has-sub-menu nav-item">
                            <a id="portfolioMegaMenu" class="hs-mega-menu-invoker nav-link   " href="#" role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">Stuff</a>
                            <div class="hs-sub-menu dropdown-menu" aria-labelledby="portfolioMegaMenu"
                                 style="min-width: 14rem;">
                                <a class="dropdown-item " href="${pageContext.request.contextPath}/courses/special-quizzes">Special Quiz</a>
                                <a class="dropdown-item " href="${pageContext.request.contextPath}/teachers/free-quiz-links">Free Quiz Links</a>
                            </div>
                        </li>


                        <li class="hs-has-sub-menu nav-item">
                            <a id="blogMegaMenu" class="hs-mega-menu-invoker nav-link   " href="#" role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">Profile</a>
                            <div class="hs-sub-menu dropdown-menu" aria-labelledby="blogMegaMenu"
                                 style="min-width: 14rem;">
                                <a class="dropdown-item " href="${pageContext.request.contextPath}/portal">Portal</a>
                                <a class="dropdown-item " href="${pageContext.request.contextPath}/students">User Profile</a>
                                <a class="dropdown-item"  href="${pageContext.request.contextPath}/advertisers">Advertiser Profile</a>
                                <a class="dropdown-item " href="${pageContext.request.contextPath}/teachers" >Teacher Profile Page</a>
                                <a class="dropdown-item " href="${pageContext.request.contextPath}/Salaries" >Salaries</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item " href="${pageContext.request.contextPath}/admins">Admin Panel</a>
                                <a class="dropdown-item " href="${pageContext.request.contextPath}/teachers/notifications">Notifications</a>
                            </div>
                        </li>


                        <li class="nav-item">
                            <a class="btn btn-primary btn-transition"
                               href="https://themes.getbootstrap.com/product/front-multipurpose-responsive-template/">
                                Login
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>

<a class="js-go-to go-to position-fixed" href="javascript:;" style="visibility: hidden;" data-hs-go-to-options='{
       "offsetTop": 700,
       "position": {
         "init": {
           "right": "2rem"
         },
         "show": {
           "bottom": "2rem"
         },
         "hide": {
           "bottom": "-2rem"
         }
       }
     }'>
    <i class="bi-chevron-up"></i>
</a>

<script src="../../resources/navbarUtilVendors/assets/js/vendor.min.js"></script>
<script src="../../resources/navbarUtilVendors/assets/js/theme.min.js"></script>
<script>
    (function () {
        new HSMegaMenu('.js-mega-menu', {
            desktop: {
                position: 'left'
            }
        })
    })()
</script>

</body>
</html>
