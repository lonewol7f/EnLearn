<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Flashminat0
  Date: 8/26/2021
  Time: 8:10 PM
  To change this template use File | Settings | File Templates.
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
    <meta name="robots" content="index, follow"/>
    <link rel="shortcut icon" type="image/png" href="../../resources/img/favicon.png">

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?3942">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?1901">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?3351">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext'
          rel='stylesheet' type='text/css'>
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <title>Add Code</title>

    <style>
        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0, 0, 0); /* Fallback color */
            background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
        }
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 80%; /* Could be more or less, depending on screen size */
        }
        /* The Close Button */
        .close {
            float: right;
        }
        .close:hover,
        .close:focus {
            cursor: pointer;
        }
    </style>
    <!-- Analytics -->

    <!-- Analytics END -->

</head>
<body>
<%@include file="header.jsp"%>
<%--Notifications--%>
<%@include file="messsages.jsp"%>
<%--Notifications END--%>
<div class="grid grid-cols-2 grid-rows-2 gap-5">

    <div class="grid grid-cols-3 place-items-center pt-3">
        <div class=""></div>
        <div class="shadow-lg rounded-2xl w-64 p-4 bg-white relative overflow-hidden">
            <form:form action="/admins/save-coupon" modelAttribute="code" method="post">
                <form:label path="code"> Code
                    <form:input type="text" path="code"
                                class="rounded-lg border-transparent flex-1 appearance-none border border-gray-300 w-full py-2 px-4 bg-white text-gray-700 placeholder-gray-400 shadow-sm text-base focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent"/>
                </form:label><br>
                <form:label path="coins"> Coins
                    <form:input type="text" path="coins"
                                class="rounded-lg border-transparent flex-1 appearance-none border border-gray-300 w-full py-2 px-4 bg-white text-gray-700 placeholder-gray-400 shadow-sm text-base focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent"/>
                </form:label><br><br>
                <button type="submit"
                        class="py-2 px-4 flex justify-center items-center  bg-green-500 hover:bg-green-700 focus:ring-green-500 focus:ring-offset-green-200 text-white w-full transition ease-in duration-200 text-center text-base font-semibold shadow-md focus:outline-none focus:ring-2 focus:ring-offset-2  rounded-full">
                    Submit Code !
                </button>
            </form:form>
            <hr>
            <div class="inline-grid ">
                <a href="${pageContext.request.contextPath}/reports/available-codes"
                   class="inline-flex items-center px-4 py-2 border border-transparent text-base font-medium rounded-md text-indigo-700 bg-indigo-100 hover:bg-indigo-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 ml-5">
                    Report
                </a>
            </div>
        </div>
        <div class=""></div>
    </div>


    <div class="container mx-auto px-4 sm:px-8 max-w-4 xl">
        <div class="py-8">
            <div class="-mx-4 sm:-mx-8 px-4 sm:px-8 py-4 overflow-x-auto">
                <div class="inline-block min-w-full shadow rounded-lg overflow-hidden">
                    <table class="min-w-full leading-normal">
                        <thead>
                        <tr>
                            <th scope="col"
                                class="px-5 py-3 bg-white  border-b border-gray-200 text-gray-800  text-left text-sm uppercase font-normal">
                                Code ID
                            </th>
                            <th scope="col"
                                class="px-5 py-3 bg-white  border-b border-gray-200 text-gray-800  text-left text-sm uppercase font-normal">
                                CODE
                            </th>
                            <th scope="col"
                                class="px-5 py-3 bg-white  border-b border-gray-200 text-gray-800  text-left text-sm uppercase font-normal">
                                Coins
                            </th>
                            <th scope="col"
                                class="px-5 py-3 bg-white  border-b border-gray-200 text-gray-800  text-left text-sm uppercase font-normal">
                                status
                            </th>
                            <th scope="col"
                                class="px-5 py-3 bg-white  border-b border-gray-200 text-gray-800  text-left text-sm uppercase font-normal">
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="code" items="${codeList}">
                            <%-- construct an 'delete' link with code id --%>
                            <c:url var="deleteLink" value="/admins/codes/delete">
                                <c:param name="codeId" value="${code.id}"/>
                            </c:url>
                            <tr>
                                <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                    <p class="text-gray-900 whitespace-no-wrap">
                                            ${code.id}
                                    </p>
                                </td>
                                <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                    <p class="text-gray-900 whitespace-no-wrap ">
                                    <span class="codex">
                                            ${code.code}
                                    </span>
                                    </p>
                                </td>
                                <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                    <p class="text-gray-900 whitespace-no-wrap">
                                            ${code.coins}
                                    </p>
                                </td>
                                <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                    <c:if test="${!code.redeemed}">
                                        <span class="relative inline-block px-3 py-1 font-semibold text-green-900 leading-tight">
                                            <span aria-hidden="true"
                                                  class="absolute inset-0 bg-green-200 opacity-50 rounded-full">
                                            </span>
                                            <span class="relative">
                                                active
                                            </span>
                                        </span>
                                    </c:if>
                                    <c:if test="${code.redeemed}">
                                    <span class="relative inline-block px-3 py-1 font-semibold text-green-900 leading-tight">
                                        <span aria-hidden="true"
                                              class="absolute inset-0 bg-red-200 opacity-50 rounded-full">
                                        </span>
                                        <span class="relative">
                                            redeemed
                                        </span>
                                    </span>
                                    </c:if>
                                </td>
                                <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                    <button href="${deleteLink}" id="myBtn"
                                            class="text-indigo-600 hover:text-indigo-900 modal-open">Remove
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


    <div class="shadow-lg rounded-2xl bg-white dark:bg-gray-800 p-4 max-w-md m-auto">
        <div class="flex-row gap-4 flex justify-center items-center">
            <div class=" flex flex-col">
            <span class="text-gray-600 dark:text-white text-lg font-medium">
                Clear All Redeemed Recordings
            </span>
                <br>
                <form:form method="get" action="/admins/remove-used-coupons">
                    <button type="submit"
                            class="py-2 px-4  bg-indigo-600 hover:bg-indigo-700 focus:ring-indigo-500 focus:ring-offset-indigo-200 text-white w-full transition ease-in duration-200 text-center text-base font-semibold shadow-md focus:outline-none focus:ring-2 focus:ring-offset-2  rounded-lg ">
                        Clear
                    </button>
                </form:form>
            </div>
        </div>

        <div class="container mx-auto px-4 sm:px-8 max-w-4 xl">
            <div class="py-8">
                <div class="-mx-4 sm:-mx-8 px-4 sm:px-8 py-4 overflow-x-auto">
                    <div class="inline-block min-w-full shadow rounded-lg overflow-hidden">
                        <table class="min-w-full leading-normal">
                            <thead>
                            <tr>
                                <th scope="col"
                                    class="px-5 py-3 bg-white  border-b border-gray-200 text-gray-800  text-left text-sm uppercase font-normal">
                                    Code ID
                                </th>
                                <th scope="col"
                                    class="px-5 py-3 bg-white  border-b border-gray-200 text-gray-800  text-left text-sm uppercase font-normal">
                                    Student ID
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="usedCode" items="${usedCodes}">
                                <tr>
                                    <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                        <p class="text-gray-900 whitespace-no-wrap">
                                                ${usedCode.id}
                                        </p>
                                    </td>
                                    <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                        <p class="text-gray-900 whitespace-no-wrap">
                                                ${usedCode.user.id}
                                        </p>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div id="myModal" class="modal grid grid-cols-3 grid-rows-3">
            <div class="col-span-3">
                <br><br><br><br> <br><br><br><br> <br><br><br><br>
            </div>
            <div class="modal-content max-w-md shadow-lg rounded-2xl p-4 bg-white dark:bg-gray-800 w-64 m-auto col-start-2 row-start-2">
                <div class="w-full h-full text-center">
                    <div class="flex h-full flex-col justify-between">
                        <svg width="40" height="40" class="mt-4 w-12 h-12 m-auto text-indigo-500" fill="currentColor"
                             viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg">
                            <path d="M704 1376v-704q0-14-9-23t-23-9h-64q-14 0-23 9t-9 23v704q0 14 9 23t23 9h64q14 0 23-9t9-23zm256 0v-704q0-14-9-23t-23-9h-64q-14 0-23 9t-9 23v704q0 14 9 23t23 9h64q14 0 23-9t9-23zm256 0v-704q0-14-9-23t-23-9h-64q-14 0-23 9t-9 23v704q0 14 9 23t23 9h64q14 0 23-9t9-23zm-544-992h448l-48-117q-7-9-17-11h-317q-10 2-17 11zm928 32v64q0 14-9 23t-23 9h-96v948q0 83-47 143.5t-113 60.5h-832q-66 0-113-58.5t-47-141.5v-952h-96q-14 0-23-9t-9-23v-64q0-14 9-23t23-9h309l70-167q15-37 54-63t79-26h320q40 0 79 26t54 63l70 167h309q14 0 23 9t9 23z">
                            </path>
                        </svg>
                        <p class="text-gray-800 dark:text-gray-200 text-xl font-bold mt-4">
                            Remove Code
                            <span id="codey"></span>
                        </p>
                        <p class="text-gray-600 dark:text-gray-400 text-xs py-2 px-6">
                            Are you sure you want to delete this Code ?
                        </p>
                        <div class="flex items-center justify-between gap-4 w-full mt-8">
                            <button type="button"
                                    id="del-code"
                                    onclick="goto()"
                                    class="del-code py-2 px-4 bg-red-600 hover:bg-red-700 focus:ring-red-500 focus:ring-offset-red-200 text-white w-full transition ease-in duration-200 text-center text-base font-semibold shadow-md focus:outline-none focus:ring-2 focus:ring-offset-2  rounded-lg">
                                Delete
                            </button>
                            <button class="close px-4 py-2  text-base rounded-full text-indigo-500 border border-indigo-500 undefined px-5">
                                Close
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-span-3"></div>
        </div>
    </div>
</div>


<script>
    var modal = document.getElementById("myModal");
    var btns = document.querySelectorAll(".modal-open");
    var span = document.getElementsByClassName("close")[0];
    var delbtn = document.getElementById("del-code");
    var codeName;
    btns.forEach(function (btn, index) {
        btn.onclick = function () {
            //methana index eka enawa
            console.log(index);
            modal.style.display = "block";
            document.getElementById("codey").innerHTML = document.querySelectorAll(".codex")[index].innerHTML;
            codeName = document.getElementById("codey").innerText;
        }
    })
    function goto() {
        location.href = "/admins/codes/delete?coupon=" + codeName;
    }
    span.onclick = function () {
        modal.style.display = "none";
    }
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
</body>
</html>