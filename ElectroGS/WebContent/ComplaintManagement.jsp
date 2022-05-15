<%@page import="com.ComplaintManagement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complaint Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/ComplaintManagement.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Complaint Management</h1>

				<form id="formComplaintManagement" name="formComplaintManagement" method="post" action="ComplaintManagement.jsp">


					Type: <input id="type" name="type" type="text"
						class="form-control form-control-sm"> 
						
						<br>Complaint: <input id="complaint" name="complaint" type="text"
						class="form-control form-control-sm"> 
						
						<br> Date: <input id="date" name="date" type="date"
						class="form-control form-control-sm"> 
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProjectGrid">
					<%
					ComplaintManagement projectObj = new ComplaintManagement();
						out.print(projectObj.readProject());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
