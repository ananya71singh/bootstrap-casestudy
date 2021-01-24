<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Menu Item</title>
<link rel="stylesheet" type="text/css" href="/style/style.css">
<!-- <script src="js/script.js"></script> -->
</head>
<body>
<header>
<div><div class="header-div1"><label class="header-label">truYum</label>
<img src="/images/truyumlogo.png" class="header-image"></div>
<div class="header-div2"><nav>
<ul class="header-nav">
<li><a href="/show-menu-list-admin" class="navlink">Menu</a></li>
</ul>
</nav></div></div>
</header>
<section>
<h2>Edit Menu Item</h2>
<sf:form action="edit-menu-item" modelAttribute="menuItem"
			method="POST">
<table class="edittable">
<tr><th class="tabledesign">
<label for="name">Name</label></th></tr>
<tr><td colspan="4" class="tabledesign"><sf:input path="name" id="name" name="name" /></td></tr>
<tr>
					<td><span><sf:errors path="name" id="error-msg"/> </span></td>
				</tr>
				<tr>
					<td><sf:hidden path="id" /></td>
				</tr>
<tr>
<th class="tabledesign"><label for="price">Price(Rs.)</label></th>
<th class="tabledesign2" colspan="2"><label for="inStock">Active</label></th>
<th class="tabledesign2"><label for="dateOfLaunch">Date Of Launch</label></th>
<th class="tabledesign2"><label for="category">Category</label></th>
</tr> 
<tr>
<td class="tabledesign"><sf:input path="price" value="0.0"/></td>
<td class=tabledesign2><sf:radiobutton path="active" name="inStock" id="active" value="Yes" />Yes </td><td class="tabledesign2"> <sf:radiobutton path="active" name="inStock" id="active" value="No" />No</td>
<td class="tabledesign2"><sf:input path="dateOfLaunch" name="date-of-launch" id="date-of-launch" vaue="2020-01-23"/></td>
<td class="tabledesign2"><sf:select path="category" id="category" items="${categoryList}" />
</tr>
<tr>
					<td>
					     <span><sf:errors path="price" id="error-msg"/></span>
					</td>
					<td></td>
					<td></td>
					<td><span><sf:errors path="dateOfLaunch" id="error-msg"/></span></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>

<tr><td class="tabledesign"><sf:checkbox path="freeDelivery" id="free-dev" value="Yes"/>
 <sf:label path="freeDelivery">Free Delivery</sf:label></td></tr>
<tr><th class="tabledesign"><input type="submit" id="submit" value="Save" /></th></tr>
 
</table>

</sf:form>
</section>
<footer>Copyright &copy; 2019</footer>
</body>
</html>