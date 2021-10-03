<%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:59 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.16/tailwind.min.css" integrity="sha512-5D0ofs3AsWoKsspH9kCWlY7qGxnHvdN/Yz2rTNwD9L271Mno85s+5ERo03qk9SUNtdgOZ4A9t8kRDexkvnWByA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Forbidden</title>
</head>
<body>

<div class="flex flex-col items-center justify-center py-24 lg:py-12 md:px-16 px-4">
    <h1 class="text-7xl font-bold text-indigo-700 pb-2">403</h1>
    <h2 class="lg:text-5xl md:text-4xl text-2xl font-bold text-gray-800 py-2">Prohibited and Restricted Content</h2>
    <p class="text-base text-gray-600 py-2 text-center">Sorry! You have not access to the page you are looking for. Please check URL in address bar and try again.</p>

    <div class="flex md:flex-row flex-col items-center justify-center md:gap-8 mt-4 mb-12 w-full">
        <a href="${pageContext.request.contextPath}/"><button class="p-4 text-base text-center text-white md:w-auto md:mb-0 mb-4 w-full bg-indigo-700 border rounded-md hover:bg-indigo-800">Get back to Homepage</button></a>
        <button class="p-4 text-base font-semibold text-center md:w-auto w-full bg-gray-100 text-indigo-700 border rounded-md hover:bg-gray-200">Contact Support</button>
    </div>

    <div class="hidden md:grid place-content-center lg:w-1/3 w-1/2">
        <img src="https://i.ibb.co/JjmY1tm/tuk-component.png" alt="girl in an underconstruction site" />
    </div>
    <div class="md:hidden grid place-content-center">
    </div>
</div>

</body>
</html>