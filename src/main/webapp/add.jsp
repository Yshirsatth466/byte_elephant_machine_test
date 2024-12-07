<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
form{
border:2px solid black;
display:flex;
flex-direction:column;
justify-content:center;
align-items:center;
margin-left:30%;
margin-right:30%;
}

</style>

</head>
<body>
<h1>add product page</h1>
<form  action="save" method="post">
id:<input type=number name=id placeholder="enter id"><br><br>
name:<input type=text name=name placeholder="enter name"><br><br>
 price:<input type=text name=price placeholder="enter price.." id><br>
   category:<input type=text name="category" placeholder="enter category.." id><br>
   <input type=submit value=submit>
</form>



</body>
</html>