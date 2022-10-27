<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

</head>
<body>
	<div class="container-fuld">
		<div class="col-md-offset-4 col-md-4 text-center">
			<div class="card shadow p-2">
				<div class="panel-heading">
					<div class="panel-title"><h3><b>Login</b></h3></div>
				</div>
				<div class="panel-body">
					<form:form action="checkSignInForm" cssClass="form-horizontal"
						method="post" modelAttribute="signInForm">
						<div class="form-group pt-5">
							<label for="icode" class="col-md-3 control-label">User
								Name </label>
							<div class="col-md-12">
								<form:input path="userName" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="col-md-3 control-label">Password</label>
							<div class="col-md-12">
								<form:password path="password" cssClass="form-control" />
							</div>
						</div>
						<h3	style="color: red;">${message}</h3>
						<div class="form-group">
							<!-- Button -->
							<div class="col-md-12">
								<form:button cssClass="btn btn-primary">Đăng nhập</form:button>
							</div>
						</div>

					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>