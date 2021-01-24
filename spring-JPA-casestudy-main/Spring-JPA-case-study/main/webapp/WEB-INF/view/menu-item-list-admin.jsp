<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Menu Item List</title>
<link rel="stylesheet" type="text/css" href="/style/style.css">
</head>
<body>
<header>
<div><div class="header-div1"><label class="header-label">truYum</label>
<img src="/images/truyumlogo.png" class="header-image"></div>
<div class="header-div2"><nav>
<ul class="header-nav">
<li><a href="show-menu-list-admin" class="navlink">Menu</a></li>
</ul>
</nav></div></div>
</header>
<section>
<h2>Menu Items</h2>
<table>
<tr><th><label>Name</label></th>
<th><label>Price</label></th>
<th><label>Active</label></th>
<th><label>Date of Launch</label></th>
<th><label>Category</label></th>
<th><label>Free Delivery</label></th>
<th><label>Action</label></th></tr>
<c:forEach var="menuItem" items="${menuItemList}">
<tr><td>${menuItem.name}</td>
<td>Rs. ${menuItem.price}</td>
<td><c:if test="${menuItem.active=='Yes'}">Yes</c:if>
						<c:if test="${menuItem.active=='No'}">No</c:if></td>
<td><fmt:formatDate value="${menuItem.dateOfLaunch}" pattern="dd/MM/yyyy"/></td>
<td>${menuItem.category}</td>
<td><c:if test="${menuItem.freeDelivery=='Yes'}">Yes</c:if> 
<c:if test="${menuItem.freeDelivery=='No'}">No</c:if></td>
<td><a href="/show-edit-menu-item?menuItemId=${menuItem.id}">Edit</a></td></tr>
</c:forEach>

</table>

</section>
<footer>Copyright &copy; 2019</footer>
</body>
</html>