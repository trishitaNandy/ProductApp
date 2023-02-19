<html>
<head>
<%@include file="./base.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body style="background:linear-gradient(to right, hsl(36, 66%, 67%), hsl(314, 72%, 70%));">
	
	<!--  background: linear-gradient(to right, hsl(181, 66%, 67%), hsl(314, 72%, 70%));-->
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-5">Welcome to Product App</h1>
				<table class="table" style="background-color:powderblue;">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					
					<c:forEach items="${product }" var="p">
						<tr>
							<th scope="row">TECHONLY${p.id }</th>
							<td>${p.name }</td>
							<td>${p.description }</td>
							<td class="font-weight-bold">&#8377; ${p.price }</td>
							<td>
								<a href="delete/${p.id }"><i class="fas fa-trash text-danger" style="font-size:30px"></i></a>
								<a href="update/${p.id }"><i class="fas fa-pen-nib text-primary" style="font-size:30px"></i></a>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				
				<div class="container text-center">
					<a href="add-product" class="btn btn-success" ><b>Add Product</b></a>
					<!-- class="btn btn-outline-success" -->
				</div>
			</div>
		</div>

	</div>
</body>
</html>
