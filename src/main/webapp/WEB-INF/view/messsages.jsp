<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  
  User: lonewol7f
  Date: 22/09/2021
  Time: 20:20
  
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--add-code--%>
<c:if test="${error eq 'coup_01'}">
    <div class="rounded-md bg-red-50 p-4 absolute top-20" id="red-alert">
        <div class="flex">
            <div class="flex-shrink-0">
                <svg class="h-5 w-5 text-red-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
                     fill="currentColor" aria-hidden="true">
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
                        Coupon Already Inserted !
                    </p>
                </div>
                <div>
                    <button class="" onclick="hideRed()">Close</button>
                </div>
            </div>
        </div>
    </div>
</c:if>

<c:if test="${success eq 'coup_02'}">
    <div class="rounded-md bg-green-50 p-4 absolute top-20" id="green-alert">
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
                        Event Saved !
                    </p>
                </div>
                <div>
                    <button class="" onclick="hideGreen()">Close</button>
                </div>
            </div>
        </div>
    </div>
</c:if>

<c:if test="${success eq 'coup_03'}">
    <div class="rounded-md bg-green-50 p-4 absolute top-20" id="green-alert">
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
                        Removed Redeemed Coupons !
                    </p>
                </div>
                <div>
                    <button class="" onclick="hideGreen()">Close</button>
                </div>
            </div>
        </div>
    </div>
</c:if>

<%--event-list--%>
<c:if test="${success eq 'eve_01'}">
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
                        Event Saved !
                    </p>
                </div>
                <div>
                    <button class="" onclick="hideGreen()">Close</button>
                </div>
            </div>
        </div>
    </div>
</c:if>

<c:if test="${success eq 'eve_02'}">
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
                        Event deleted
                    </p>
                </div>
                <div>
                    <button class="" onclick="hideGreen()">Close</button>
                </div>
            </div>
        </div>
    </div>
</c:if>

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
