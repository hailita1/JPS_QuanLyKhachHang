<%@ page import="java.util.ArrayList" %>
<%@ page import="Customer.Customer" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 18/07/2019
  Time: 14:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Quản Lí Nhân Viên</title>
</head>
<body>
<%
    ArrayList<Customer> listCustomer = new ArrayList<>();
    listCustomer.add(new Customer("Đinh Huyền Trang", "20-12-1999","Thái Nguyên","trang.jpg"));
    listCustomer.add(new Customer("Trần Thanh Hải", "10-01-1999", "Thái Nguyên", "hai.jpg"));
    listCustomer.add(new Customer("Nguyễn Văn Nam", "23-11-1999", "Hà Nội", "vannam.jpg"));
    listCustomer.add(new Customer("Vũ Quang Minh", "15-02-1999", "Hưng Yên", "minh.jpg"));
    listCustomer.add(new Customer("Phạm Nhật Nam", "01-01-1998", "Hà Nội", "nhatnam.jpg"));
    pageContext.setAttribute("list", listCustomer);
%>
<center><h1>Danh sách khách hàng</h1>
    <table border="2px">
        <tr style="height: 50px;border-inline: solid">
            <th width="250px">Họ và tên</th>
            <th width="200px">Ngày sinh</th>
            <th width="200px">Địa chỉ</th>
            <th width="200px">Ảnh</th>
        </tr>
        <c:forEach var="customer" items="#{list}">
            <tr style="height: 50px">
                <th><c:out value="${customer.name}"/></th>
                <th><c:out value="${customer.birthday}"/></th>
                <th><c:out value="${customer.address}"/></th>
                <th>
                    <img src="<c:out value="${customer.image}"/>" height="100px" width="100px">
                </th>
            </tr>
        </c:forEach>
    </table>
</center>
</body>
</html>
