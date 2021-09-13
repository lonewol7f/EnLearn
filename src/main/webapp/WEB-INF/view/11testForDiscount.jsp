<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 94764
  Date: 9/13/2021
  Time: 6:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <h2>${discount.title}</h2>

    <br><br>




    <%--<c:forEach var="discount" items="${alldiscount.get()}">

        <h4><c:out value="${discount.title}" /><h4>

        <c:out value="${discount.admin_id}" />

        <c:out value="${discount.course}" />

    </c:forEach>--%>



            <div align="center">
                <table border="1" cellpadding="5">
                    <caption><h2>List of Discounts</h2></caption>
                    <tr>
                        <th>title</th>
                        <th>Admin_id</th>
                        <th>course</th>

                    </tr>
                    <c:forEach var="user" items="${alldiscount}">
                        <tr>
                            <td><c:out value="${user.title}" /></td>
                            <td><c:out value="${user.admin_id}" /></td>
                            <td><c:out value="${user.course}" /></td>

                        </tr>
                    </c:forEach>
                </table>
            </div>





</body>
</html>
