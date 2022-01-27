<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/01/2022
  Time: 1:31 CH
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Product</title>
</head>
<body>
<h1>All Product</h1>
<c:if test="${requestScope['products'].isEmpty()}">
    <h2 style="color: red">Không có sản phẩm nào</h2>
</c:if>
<c:if test="${requestScope['products'].isEmpty() == false}">
    <a href="/index?action=sort"><button>Sort Price Asc</button></a>
    <a href="/index?action=sort2"><button>Sort Price Desc</button></a>
    <table>
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>Price</td>
            <td>Quantity</td>
            <td>Description</td>
            <td></td>
        </tr>
        <c:forEach items="${requestScope.products}" var="product">
            <tr>
                <td>${product.getId()}</td>
                <td><a id="name" style="text-decoration: none" href="/index?action=detail&id=${product.getId()}">${product.getName()}</a></td>
                <td>${product.getPrice()}</td>
                <td>${product.getQuantity()}</td>
                <td>${product.getDescription()}</td>
                <td><a href="/index?action=add&id=${product.getId()}">Add to Cart</a></td>
            </tr>
        </c:forEach>
    </table>
    <a href="index?action=cart">Cart</a>
</c:if>
</body>
</html>