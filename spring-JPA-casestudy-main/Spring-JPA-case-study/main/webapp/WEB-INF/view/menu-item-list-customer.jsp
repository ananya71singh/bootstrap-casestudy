<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
<link rel="stylesheet" type="text/css" href="/style/style.css">
</head>
<body>
<header>
<div><div class="header-div1"><label class="header-label">truYum</label>
<img src="/images/truyumlogo.png" class="header-image"></div>
<div class="header-div2"><nav>
<ul class="header-nav">
<li><a href="/show-menu-list-customer" class="navlink">Menu</a></li>
<li><a href="/show-cart?userId=1" class="navlink">Cart</a></li>
</ul>
</nav></div></div>
</header>
<section>
<h2>Cart</h2>

<p class="msgdisplay"><c:if test="${removeCartItemStatus}">Item removed from Cart successfully</c:if></p>
<table>
<tr><th><label>Name</label></th>
<th><label>Free Delivery</label></th>
<th><label>Price</label></th>
</tr>
<c:forEach var="usercart" items="${cart}">
				<tr>
					<td>${usercart.menuItem.name}</td>
					<td><c:if
							test="${usercart.menuItem.freeDelivery=='Yes'}">Yes</c:if> <c:if
							test="${usercart.menuItem.freeDelivery=='No'}">No</c:if></td>
					<td>Rs. ${usercart.menuItem.price}</td>
					<td>${usercart.menuItem.category}</td>
					<td><a href="/remove-cart?menuItemId=${usercart.menuItem.id}&userId=1">Delete</a></td>
				</tr>

			</c:forEach>
<th><label>Total</label></th>
<th><label>Rs. ${total}</label></th>
<th></th></tr>
</table>

</section>
<footer>Copyright &copy; 2019</footer>
</body>
</html>