<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
function addUser(){
	var form=document.forms[0];
	form.action="/ssh1/user/saveUser";
	form.method="get";
	form.submit();
	
}

</script>
</head>
<body>
	<form name="userForm" action="">
		name:<input type="text" name="userName"> 
		password:<input type="text" name="password">
		email:<input type="text" name="email">
		<input type="button" value="add" onclick="addUser()">
	</form>
	<h2>add User</h2>


</body>
</html>