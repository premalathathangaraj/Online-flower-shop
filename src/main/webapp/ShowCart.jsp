<%@page import="java.util.List" import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     import ="com.onlineflowershop.dao.impl.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table,th,td{
 border: 1px solid white;
  border-collapse: collapse;
  padding: 20px;
}

body{
background-image:url(home1.jpeg.jpg);
background-repeat:no-repeat;
background-size:cover;
}


</style>
<meta charset="ISO-8859-1">
<title>ShowUser page</title>
</head>
<body>

<form>
<%
CartDAOImpl cartDao=new CartDAOImpl();
ResultSet rs=cartDao.ShowCart();
%>

<table>

<tr>
<th style=color:white>Cart Id</th>
<th style=color:white>Flower Id</th>
<th style=color:white>User Id</th>
<th style=color:white>Order Quantity</th>
<th style=color:white>Total Price</th>
<th style=color:white>Order Date</th>


</tr>

<% while(rs.next()) {%>

<tr>
<td style=color:white><%= rs.getInt(1) %></td>
<td style=color:white><%= rs.getInt(2) %></td>
<td style=color:white><%= rs.getInt(3) %></td>
<td style=color:white ><%= rs.getInt(4) %></td>
<td style=color:white><%= rs.getDouble(5) %></td>
<td style=color:white><%= rs.getDate(6) %>

</tr>

<%} %>

</table>

</form>

</body>
</html>