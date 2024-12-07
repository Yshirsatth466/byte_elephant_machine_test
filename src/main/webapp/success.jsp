<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function deleteuser(){
	document.fn.action="delete";
	document.fn.submit();
}
function Edituser(){
	document.fn.action="edit";
	document.fn.submit();
}

</script>
<style>
.th-head{
width:100px;
padding:8px;
}
.td-data{
width:100px;
padding:8px;

}
body{
display:flex;
justify-content:center;
align-item:center;
}

</style>

</head>

<body>

<form name=fn><table border=2>
<h1>success</h1>
<tr>
<td class="th-head">select</td>
<th class="th-head">id</th>
<th class="th-head">name</th>
<th class="th-head">price</th>
<th class="th-head">category</th>
<th  class="th-head"colspan="2">Action</th>
</tr>
<c:forEach var="p" items="${products}">
<tr>
<td class="td-data"><input type=radio name=id  value="${p.id}">
<td class="td-data">${p.id}</td>
<td class="td-data">${p.name}</td>
<td class="td-data">${p.price}</td>
<td class="td-data">${p.category}</td>
<td>
<button onclick="deleteuser()">delete</button>
</td>
<td><button onclick="Edituser()">Edit</button></td>
</tr>
</c:forEach>
</table>
</form>
</body>
</html>