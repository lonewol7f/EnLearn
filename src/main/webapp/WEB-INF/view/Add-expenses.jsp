<%@ page import="net.enLearn.entity.Expense" %><%--
  Created by IntelliJ IDEA.
  User: Pehesara
  Date: 9/4/2021
  Time: 12:43 AM
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
    <title>Add Expense</title>



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


    <div class="bloc l-bloc" id="bloc-a">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col">
                    <div>
                        <h4 class="mg-md mx-auto d-block text-lg-center">
                            Add Expenses
                        </h4>



                        <div class="discount-box">

                            <form id="form_10445" data-form-type="blocs-form" action="/admins/add/expenses" method="POST" modelAttribute="expenses_data" enctype="multipart/form-data">
                                <div class="form-group">

                                    <label>
                                        Admin Name
                                    </label>
                                    <input type="text" id="name16_22767_28850_23581_10445" class="form-control" required name="name" value="${expensesu.name}" />

                                </div>
                                <div class="form-group">
                                    <label>
                                        Admin ID
                                    </label>
                                    <input type="number" name="adminid" id="adminID" class="form-control" required value="${expensesu.admin_id}"/>
                                </div>

                                <div class="form-group">

                                    <%  Expense expense = (Expense) request.getAttribute("expensesu");
                                        String data;
                                        if (expense==null){
                                            data = "<input type=\"hidden\" name=\"expensesIdhidden\" class=\"form-control\" value=\"-1\"/>";

                                        }
                                        else{
                                            data = "<input type=\"hidden\" name=\"expensesIdhidden\" class=\"form-control\" value=\""+expense.getId()+"\"/>";
                                        }
                                        out.println(data);
                                    %>



                                </div>
                                <div class="form-group">
                                    <label>
                                        Price
                                    </label>
                                    <input type="number" class="form-control" id="input_413" name="price" required value="${expensesu.price}"/>
                                </div>
                                <div class="form-group">
                                    <label>
                                        Description
                                    </label>
                                    <textarea type="text" name="description" required id="description" class="form-control text-area-style" rows="4" cols="50">${expensesu.description}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>
                                        Upload Image
                                    </label><br>
                                    <input type="file" value="${expensesu.filename}" required id="file" name="file_image" accept="image/*"  onchange="loadFile(event) " />

                                    <br>
                                    <p><img id="output" src="${expensesu.image_path}" alt="expenses_image" width="300" height="300"/></p>
                                    <p id="size"></p>

                                    <script>
                                        var loadFile = function(event) {
                                            var image = document.getElementById('output');
                                            image.src = URL.createObjectURL(event.target.files[0])
                                            const fi = document.getElementById('file');
                                            // Check if any file is selected.
                                            if (fi.files.length > 0) {
                                                for (const i = 0; i <= fi.files.length - 1; i++) {

                                                    const fsize = fi.files.item(i).size;
                                                    const file = Math.round((fsize / 1024));
                                                    // The size of the file.
                                                    if (file >= 10240) {
                                                        alert(
                                                            "File too Big, please select a file less than 10mb");
                                                    } else if (file < 50) {
                                                        alert(
                                                            "File too small, please select a file greater than 50kb");
                                                    } else {
                                                        document.getElementById('size').innerHTML = '<b>'
                                                            + file + '</b> KB';
                                                    }
                                                }
                                            }
                                        };
                                    </script>

                                </div>
                                <br>
                                <%--                                <input type="hidden" class="form-control" id="expensesId" name="expensesId" value="${expensesu.id}"/>--%>
                                <button class="bloc-button btn btn-d btn-lg btn-block" type="submit">
                                    Submit
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


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
