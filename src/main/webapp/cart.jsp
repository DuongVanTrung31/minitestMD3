<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/01/2022
  Time: 3:10 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart</title>
</head>
<body>
    <h1>Cart</h1>
    <c:if test="${requestScope['cart'].isEmpty()}">
        <h2 style="color: red">Không có sản phẩm nào</h2>
    </c:if>
    <c:if test="${requestScope['cart'].isEmpty() == false}">
        <table>
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>Price</td>
                <td>Quantity</td>
                <td>Description</td>
                <td></td>
            </tr>
            <c:forEach items="${requestScope.cart}" var="product">
                <tr>
                    <td>${product.getId()}</td>
                    <td>${product.getName()}</td>
                    <td>${product.getPrice()}</td>
                    <td>${product.getQuantity()}</td>
                    <td>${product.getDescription()}</td>
                    <td><a href="/index?action=delete&id=${product.getId()}">Remove</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</body>
</html>
