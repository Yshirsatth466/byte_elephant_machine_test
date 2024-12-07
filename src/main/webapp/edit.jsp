<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>edit page</h1>
<form  action="update" method="post">
id:<input type=number value="${product.id}" name=id placeholder="enter id"><br><br>
name:<input type=text value="${product.name}" name=name placeholder="enter name">
 price<input type=text value="${product.price}" name=price  placeholder="enetr price " id>
 price<input type=text value="${product.category}" name=category  placeholder="enetr category " id>
        <input type=submit value=submit>
</form>

</body>
</html>