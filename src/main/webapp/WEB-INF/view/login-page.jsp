<%--
  
  User: lonewol7f
  Date: 10/09/2021
  Time: 11:25
  
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.15/tailwind.min.css"
          integrity="sha512-braXHF1tCeb8MzPktmUHhrjZBSZknHvjmkUdkAbeqtIrWwCchhcpUeAf2Sq3yIq1Q1x5PlroafjceOUbIE3Q5g=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <title>Title</title>
</head>
<body class="m-10">

<div class="p-5">
    <div class="bg-gradient-to-r from-green-400 to-blue-500 grid grid-rows-1 grid-cols-2 p-12">
        <h1 class="text-lg">Login</h1>
        <div class="bg-white mx-7 p-6 rounded-lg shadow-2xl ">
            <form action="" class="text-center">
                <div class="form-floating mb-3 w-50 relative ">
                    <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" required>
                    <label for="floatingInput">Email address</label>
                </div>
                <div class="form-floating w-50">
                    <input type="password" class="form-control" id="floatingPassword" placeholder="Password" required>
                    <label for="floatingPassword">Password</label>
                </div>
                <button type="submit"
                        class="btn btn-success   hover:bg-white hover:border-3 hover:border-green-400 hover:text-black w-50 mt-3">
                    Login
                </button>
            </form>
            <a href="#">Forgot password</a>
            <a href="#">Register</a>
            <hr>
            <button class="button btn-light">Login with google</button>
        </div>
    </div>
</div>

</body>
</html>
