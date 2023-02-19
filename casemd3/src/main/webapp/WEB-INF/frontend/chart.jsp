<%--
  Created by IntelliJ IDEA.
  User: Hai Nguyen
  Date: 2/19/2023
  Time: 11:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
  <meta charset="utf-8">
  <title>Chart</title>
  <jsp:include page="/WEB-INF/dashboard/layout/meta_head.jsp"></jsp:include>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.1.2/Chart.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body data-layout="horizontal">
<!-- Begin page -->
<div id="wrapper">
  <!-- Navigation Bar-->
  <nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-top" >
    <div class="container-fluid">
      <a href="/">
        <img src="<c:url value="/images/logo2.jpg"/>" alt="" style = " width: 100px; height: 100px;">
      </a>
    </div>
  </nav>
  <div style="padding-top: 130px" class="container">
    <h3>Số Lượng Sản Phẩm Đã Bán Được</h3>
    <table class="table table-striped" style="padding-top: 130px">
      <thead>
      <tr>
        <th>Tên sản phẩm</th>
        <th>Số lượng bán ra</th>
        <th>Tổng tiền</th>

      </tr>
      </thead>
      <tbody>
      <c:set scope="request" var="temp" value="${0}"></c:set>
      <c:forEach var="c" items="${requestScope.chart }" >
        <tr>
          <td>${c.getName()}</td>
          <td>${c.getQuantity()}</td>
          <td>   <fmt:formatNumber type="number" maxFractionDigits = "3" value="${c.getSum()}" /> đ</td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>


</div>
<!-- Vendor js -->
<script src="assets\js\vendor.min.js"></script>

<!-- Chart JS -->
<script src="assets\libs\chart-js\Chart.bundle.min.js"></script>

<script src="assets\js\pages\chartjs.init.js"></script>

<!-- App js -->
<script src="assets\js\app.min.js"></script>
<!-- END wrapper -->


<jsp:include page="/WEB-INF/dashboard/layout/js_footer.jsp">
  <jsp:param name="page" value="customer"/>
</jsp:include>

</body>
</html>
