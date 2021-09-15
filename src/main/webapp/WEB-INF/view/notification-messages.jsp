<%--
  
  User: lonewol7f
  Date: 9/15/2021
  Time: 9:53 AM
  
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<%--Notifications--%>
<%--Yellow--%>
<div class="rounded-md bg-yellow-50 p-4 absolute top-8" id="yellow-alert">
    <div class="flex">
        <div class="flex-shrink-0">
            <svg class="h-5 w-5 text-yellow-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
                 fill="currentColor" aria-hidden="true">
                <path fill-rule="evenodd"
                      d="M8.257 3.099c.765-1.36 2.722-1.36 3.486 0l5.58 9.92c.75 1.334-.213 2.98-1.742 2.98H4.42c-1.53 0-2.493-1.646-1.743-2.98l5.58-9.92zM11 13a1 1 0 11-2 0 1 1 0 012 0zm-1-8a1 1 0 00-1 1v3a1 1 0 002 0V6a1 1 0 00-1-1z"
                      clip-rule="evenodd"/>
            </svg>
        </div>
        <div class="ml-3">
            <h3 class="text-sm font-medium text-yellow-800">
                Problem
            </h3>
            <div class="mt-2 text-sm text-yellow-700">
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid pariatur, ipsum similique veniam
                    quo totam eius aperiam dolorum.
                </p>
            </div>
            <div>
                <button class="" onclick="hideYellow()">Close</button>
            </div>
        </div>
    </div>
</div>

<%--Red--%>
<div class="rounded-md bg-red-50 p-4 absolute top-8" id="red-alert">
    <div class="flex">
        <div class="flex-shrink-0">
            <svg class="h-5 w-5 text-red-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor"
                 aria-hidden="true">
                <path fill-rule="evenodd"
                      d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z"
                      clip-rule="evenodd"/>
            </svg>
        </div>
        <div class="ml-3">
            <h3 class="text-sm font-medium text-yellow-800">
                Error
            </h3>
            <div class="mt-2 text-sm text-yellow-700">
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid pariatur, ipsum similique veniam
                    quo totam eius aperiam dolorum.
                </p>
            </div>
            <div>
                <button class="" onclick="hideRed()">Close</button>
            </div>
        </div>
    </div>
</div>

<%--Green--%>
<div class="rounded-md bg-green-50 p-4 absolute top-8" id="green-alert">
    <div class="flex">
        <div class="flex-shrink-0">
            <svg class="h-5 w-5 text-green-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
                 fill="currentColor" aria-hidden="true">
                <path fill-rule="evenodd"
                      d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
                      clip-rule="evenodd"/>
            </svg>
        </div>
        <div class="ml-3">
            <h3 class="text-sm font-medium text-yellow-800">
                OK
            </h3>
            <div class="mt-2 text-sm text-yellow-700">
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid pariatur, ipsum similique veniam
                    quo totam eius aperiam dolorum.
                </p>
            </div>
            <div>
                <button class="" onclick="hideGreen()">Close</button>
            </div>
        </div>
    </div>
</div>
<%--Notifications END--%>

<script>
    function hideYellow() {
        var yellow_box = document.getElementById("yellow-alert");
        yellow_box.style.display = "none";
    }

    function hideRed() {
        var red_box = document.getElementById("red-alert");
        red_box.style.display = "none";
    }

    function hideGreen() {
        var green_box = document.getElementById("green-alert");
        green_box.style.display = "none";
    }
</script>


</body>
</html>
