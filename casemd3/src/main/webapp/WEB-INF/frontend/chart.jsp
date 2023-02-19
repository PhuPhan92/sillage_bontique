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

  <!-- End Navigation Bar-->

  <!-- ============================================================== -->
  <!-- Start Page Content here -->
  <!-- ============================================================== -->
  <div class="col-lg-6">
    <div class="demo-box mt-5 mt-lg-0">
      <h4 class="header-title">Bar Chart</h4>
      <p class="sub-header">
        A bar chart is a way of showing data as bars. It is sometimes used to show trend data, and the comparison of multiple data sets side by side.
      </p>

      <canvas id="bar" height="300"></canvas>
    </div>
  </div>

  <!-- ============================================================== -->
  <!-- End Page content -->
  <!-- ============================================================== -->

</div>
<c:forEach items="${requestScope.chart}" var="c">
          <c:if test="${requestScope.ct == cType.getId()}">selected</c:if>
          value="${cType.getId()}">${cType.getName()}</option>
</c:forEach>
<script>
  var myLineChart = new Chart(document.getElementById("bar").getContext("2d")).Line(LineChart, {scaleFontSize: 14, scaleFontColor: "#ff8540"});
  var LineChart = {
    labels: ["Ruby", "jQuery", "Java", "ASP.Net", "PHP"],
    datasets: [{
      fillColor: "rgba(151,249,190,0.5)",
      strokeColor: "rgba(255,255,255,1)",
      pointColor: "rgba(220,220,220,1)",
      pointStrokeColor: "#fff",
      data: [10, 20, 30, 40, 50]
    } ]
  }
</script>
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
