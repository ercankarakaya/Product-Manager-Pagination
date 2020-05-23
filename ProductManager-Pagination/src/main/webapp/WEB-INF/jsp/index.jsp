<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:h="http://java.sun.com/jsf/html"
	 xmlns:th="http://www.thymeleaf.org">
	 <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1" />
 <link rel="stylesheet"
 	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
 <script
 	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script
 	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 <script
 	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
 <title>Home</title>

</head>
<body>

<div class="container" style="background-color: white;">
		<div class="center">
			<table class="table">

				<thead class="thead-dark">
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Product Adı</th>
						<th scope="col">Marka</th>
						<th scope="col"> Ülke</th>
						<th scope="col">Price</th>
						<th scope="col">İşlem</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${productList}" var="product">

						<tr>
							<td>${product.id}</td>
							<td>${product.name}</td>
							<td>${product.brand}</td>
							<td>${product.madein}</td>
                            <td>${product.price}</td>
							<td></td>
						</tr>

					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>&nbsp;</div>
		<div>
		Total Items: ${totalItems} - Page ${currentPage} of ${totalPages}
		&nbsp;
		<span th:each="i: ${#numbers.sequence(1,totalPages}">
        	<span>${i}</span>
        	</span>
		</div>
	</div>

</body>
</html>