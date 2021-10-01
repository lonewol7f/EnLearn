<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.15/tailwind.min.css"
          integrity="sha512-braXHF1tCeb8MzPktmUHhrjZBSZknHvjmkUdkAbeqtIrWwCchhcpUeAf2Sq3yIq1Q1x5PlroafjceOUbIE3Q5g=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <title>Browser</title>

</head>
<body>
<%@include file="header.jsp" %>

<div style="display: flex; justify-content: center">
  <c:if test="${fn:length(courseList) > 0}">
    <table class="table table-hover">


        <%-- Loop over and print courses --%>
      <c:forEach var="tempCourse" items="${courseList}">




        <tr>
          <td>${tempCourse.title}</td>
          <td>${tempCourse.type}</td>
          <td style="height:100px;width:30%">${tempCourse.description}</td>
          <td>Rs. ${tempCourse.price}.00</td>
          <td>${tempCourse.image}</td>
          <td>

          </td>
        </tr>
      </c:forEach>
    </table>
  </c:if>
  <c:if test="${fn:length(courseList) == 0}">
    <div class="text-center border border-2 rounded"
         style="padding: 50px; font-family: 'Ubuntu Mono'; font-size: 50px; width: fit-content">
      <p>No Courses Currently</p>
    </div>
  </c:if>
</div>


        <div class="bg-purple-200 mt-5 rounded-2xl mx-10 grid grid-cols-1 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 2 gap-8 p-2 6">
            <div class="bg-white rounded-2xl grid place-content-center hover:shadow-lg">
              <img src="${pageContext.request.contextPath}/resources/img/aae4217f-f6b0-4c3e-ae1f-f141fff1f68e.jpg" class="rounded-t-2xl" />
              <h1 class="p-3 font-bold text-lg">Course Name
                <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
                  New</span></h1>
              <p class="p-4 pt-0">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Reiciendis, deleniti.</p>
              <button type="button" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-indigo-700 bg-indigo-100 hover:bg-indigo-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 justify-center mx-3 mb-2">
                View Details</button>
            </div>
            <div class="bg-white rounded-2xl grid place-content-center hover:shadow-lg">
                <img src="${pageContext.request.contextPath}/resources/img/aae4217f-f6b0-4c3e-ae1f-f141fff1f68e.jpg" class="rounded-t-2xl" />
                <h1 class="p-3 font-bold text-lg">Course Name
                  <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
                    New</span></h1>
                <p class="p-4 pt-0">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Reiciendis, deleniti.</p>
                <button type="button" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-indigo-700 bg-indigo-100 hover:bg-indigo-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 justify-center mx-3 mb-2">
                  View Details</button>
              </div>
              <div class="bg-white rounded-2xl grid place-content-center hover:shadow-lg">
                <img src="${pageContext.request.contextPath}/resources/img/aae4217f-f6b0-4c3e-ae1f-f141fff1f68e.jpg" class="rounded-t-2xl" />
                <h1 class="p-3 font-bold text-lg">Course Name
                  <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
                    New</span></h1>
                <p class="p-4 pt-0">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Reiciendis, deleniti.</p>
                <button type="button" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-indigo-700 bg-indigo-100 hover:bg-indigo-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 justify-center mx-3 mb-2">
                  View Details</button>
              </div>
              <div class="bg-white rounded-2xl grid place-content-center hover:shadow-lg">
                <img src="${pageContext.request.contextPath}/resources/img/aae4217f-f6b0-4c3e-ae1f-f141fff1f68e.jpg" class="rounded-t-2xl" />
                <h1 class="p-3 font-bold text-lg">Course Name
                  <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
                    New</span></h1>
                <p class="p-4 pt-0">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Reiciendis, deleniti.</p>
                <button type="button" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-indigo-700 bg-indigo-100 hover:bg-indigo-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 justify-center mx-3 mb-2">
                  View Details</button>
              </div>
              <div class="bg-white rounded-2xl grid place-content-center hover:shadow-lg">
                <img src="${pageContext.request.contextPath}/resources/img/aae4217f-f6b0-4c3e-ae1f-f141fff1f68e.jpg" class="rounded-t-2xl" />
                <h1 class="p-3 font-bold text-lg">Course Name
                  <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
                    New</span></h1>
                <p class="p-4 pt-0">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Reiciendis, deleniti.</p>
                <button type="button" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-indigo-700 bg-indigo-100 hover:bg-indigo-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 justify-center mx-3 mb-2">
                  View Details</button>
              </div>
              <div class="bg-white rounded-2xl grid place-content-center hover:shadow-lg">
                <img src="${pageContext.request.contextPath}/resources/img/aae4217f-f6b0-4c3e-ae1f-f141fff1f68e.jpg" class="rounded-t-2xl" />
                <h1 class="p-3 font-bold text-lg">Course Name
                  <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
                    New</span></h1>
                <p class="p-4 pt-0">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Reiciendis, deleniti.</p>
                <button type="button" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-indigo-700 bg-indigo-100 hover:bg-indigo-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 justify-center mx-3 mb-2">
                  View Details</button>
              </div>
                  
          </div>
          
<br>
<hr>
<br>
<div class="bg-purple-200 mt-5 rounded-2xl mx-10 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-3 2 gap-8 p-2 6">
  <div class="bg-white rounded-2xl grid place-content-center hover:shadow-lg grid grid-cols-2 shadow-md">
    <img src="https://images.indianexpress.com/2020/04/books_1200.jpg" class="rounded-l-2xl" />
    <div>
    <h1 class="p-3 font-bold text-lg">Free Quiz Name
      <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
        New</span></h1>
    <button type="button" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-indigo-700 bg-indigo-100 hover:bg-indigo-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 justify-center mx-3 mb-2 mt-3">
      Try out</button>
    </div>
  </div>
    <div class="bg-white rounded-2xl grid place-content-center hover:shadow-lg grid grid-cols-2 shadow-md">
    <img src="https://images.indianexpress.com/2020/04/books_1200.jpg" class="rounded-l-2xl" />
    <div>
    <h1 class="p-3 font-bold text-lg">Free Quiz Name
      <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
        New</span></h1>
    <button type="button" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-indigo-700 bg-indigo-100 hover:bg-indigo-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 justify-center mx-3 mb-2 mt-3">
      Try out</button>
    </div>
  </div>
    <div class="bg-white rounded-2xl grid place-content-center hover:shadow-lg grid grid-cols-2 shadow-md">
    <img src="https://images.indianexpress.com/2020/04/books_1200.jpg" class="rounded-l-2xl" />
    <div>
    <h1 class="p-3 font-bold text-lg">Free Quiz Name
      <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
        New</span></h1>
    <button type="button" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-indigo-700 bg-indigo-100 hover:bg-indigo-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 justify-center mx-3 mb-2 mt-3">
      Try out</button>
    </div>
  </div>
    <div class="bg-white rounded-2xl grid place-content-center hover:shadow-lg grid grid-cols-2 shadow-md">
    <img src="https://images.indianexpress.com/2020/04/books_1200.jpg" class="rounded-l-2xl" />
    <div>
    <h1 class="p-3 font-bold text-lg">Free Quiz Name
      <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
        New</span></h1>
    <button type="button" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-indigo-700 bg-indigo-100 hover:bg-indigo-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 justify-center mx-3 mb-2 mt-3">
      Try out</button>
    </div>
  </div>
    <div class="bg-white rounded-2xl grid place-content-center hover:shadow-lg grid grid-cols-2 shadow-md">
    <img src="https://images.indianexpress.com/2020/04/books_1200.jpg" class="rounded-l-2xl" />
    <div>
    <h1 class="p-3 font-bold text-lg">Free Quiz Name
      <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
        New</span></h1>
    <button type="button" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-indigo-700 bg-indigo-100 hover:bg-indigo-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 justify-center mx-3 mb-2 mt-3">
      Try out</button>
    </div>
  </div>
    <div class="bg-white rounded-2xl grid place-content-center hover:shadow-lg grid grid-cols-2 shadow-md">
    <img src="https://images.indianexpress.com/2020/04/books_1200.jpg" class="rounded-l-2xl" />
    <div>
    <h1 class="p-3 font-bold text-lg">Free Quiz Name
      <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800">
        New</span></h1>
    <button type="button" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-indigo-700 bg-indigo-100 hover:bg-indigo-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 justify-center mx-3 mb-2 mt-3">
      Try out</button>
    </div>
  </div>
  
</div>

</body>
</html>

