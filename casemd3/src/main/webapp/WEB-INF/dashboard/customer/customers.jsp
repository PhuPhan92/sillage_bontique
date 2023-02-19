<%--
  Created by IntelliJ IDEA.
  User: Hai Nguyen
  Date: 2/15/2023
  Time: 1:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Basic Tables | Zircos - Responsive Bootstrap 4 Admin Dashboard</title>
    <jsp:include page="/WEB-INF/dashboard/layout/meta_head.jsp"></jsp:include>

    <style>
        body{
            font-size: 16px;
        }
    </style>
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
            <div class="d-flex" id="mynavbar">
                <form method="get" action="/customers">
                    <input class="form-control" style="width: 200px; display: inline-block" value="${requestScope.kw}" name="kw" type="text" placeholder="search..." />
                    <select name="ct" class="form-control" style="width: 200px; display: inline-block" >
                        <option value="-1">ALL</option>
                        <c:forEach items="${requestScope.customerTypes}" var="cType">
                            <option
                                    <c:if test="${requestScope.ct == cType.getId()}">selected</c:if>
                                    value="${cType.getId()}">${cType.getName()}</option>
                        </c:forEach>
                    </select>
                    <button class="btn btn-primary btn-lg" type="submit" style="width: 100px;height: 40px; border-radius: 4px;  display: inline-block">Search</button>
                </form>
            </div>
        </div>
    </nav>

    <!-- End Navigation Bar-->

    <!-- ============================================================== -->
    <!-- Start Page Content here -->
    <!-- ============================================================== -->

    <div class="content-page" style="margin-top: 130px">
        <div class="content">

            <!-- Start Content-->
            <div class="container-fluid">

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="/" class="btn btn-outline-warning">Home</a></li>
                                    <li class="breadcrumb-item active"><a href="/customers?action=create" class="btn btn-outline-info"> Create New Customer</a></li>
                                </ol>
                            </div>
                            <h4 class="page-title">DANH SÁCH KHÁCH HÀNG</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->

                <div class="row">
                    <c:if test="${requestScope.message == 'delete'}">
                        <script>
                            window.onload = ()=>{
                                Swal.fire(
                                    'Deleted!',
                                    'Your file has been deleted.',
                                    'success'
                                )
                            }
                        </script>
                    </c:if>
                    <c:if test="${requestScope.message == 'edit'}">
                        <script>
                            window.onload = ()=>{
                                Swal.fire(
                                    'Edit!',
                                    'Thông tin không hợp lệ.',
                                    'success'
                                )
                            }
                        </script>
                    </c:if>
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>Tên</th>
                            <th>Ngày Sinh</th>
                            <th>Địa chỉ</th>
                            <th>Phone</th>
                            <th>Hình Ảnh</th>
                            <th>Loại khách hàng</th>
                            <th>Hành động</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:set scope="request" var="temp" value="${0}"></c:set>
                        <c:forEach var="c" items="${requestScope.customers}" >
                            <tr>
                                <td>${c.name}</td>
                                <td><fmt:formatDate pattern = "dd-MM-yyyy hh:mm"
                                                    value = "${c.getCreatedAt()}" /></td>
                                <td>${c.getAddress()}</td>
                                <td>${c.getPhone()}</td>
                                <td>
                                    <img src="/images/${c.getImage()}" style="width: 100px; height: auto" >
                                </td>
                                <td>
                                    <c:forEach var="cType" items="${requestScope.customerTypes}">
                                        <c:if test="${cType.getId()==c.getIdType()}">
                                            ${cType.getName()}
                                        </c:if>
                                    </c:forEach>
                                </td>
                                <td>
                                    <a href="/customers?action=edit&id=${c.getId()}"><i class="far fa-edit"></i></a>
                                    <a  onclick="handleDeleteClick(${c.getId()})"><i class="far fa-trash-alt"></i></a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>


                    </table>

                    <form id="frmDelete" method="post" action="/customers?action=delete">
                        <input type="hidden" name="idDelete" value="" id="idDelete">
                    </form>
                </div>
                <div class="row justify-content-end">
                    <ul class="pagination pagination-split float-right mb-0">
                        <c:if test="${currentPage != 1}">
                            <li class="page-item">
                                <a href="/customers?kw=${requestScope.kw}&ct=${requestScope.ct}&page=${currentPage-1}" class="page-link"><i class="fa fa-angle-left"></i></a>
                            </li>
                        </c:if>
                        <c:forEach begin="1" end="${noOfPages}" var="i">
                            <c:choose>
                                <c:when test="${currentPage eq i}">
                                    <li class="page-item active">
                                        <a href="/customers?kw=${requestScope.kw}&ct=${requestScope.ct}&page=${i}" class="page-link">${i}</a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item">
                                        <a href="/customers?kw=${requestScope.kw}&ct=${requestScope.ct}&page=${i}" class="page-link">${i}</a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                        <c:if test="${currentPage lt noOfPages}">
                            <li class="page-item">
                                <a href="/customers?kw=${requestScope.kw}&ct=${requestScope.ct}&page=${currentPage+1}" class="page-link"><i class="fa fa-angle-right"></i></a>
                            </li>
                        </c:if>
                    </ul>
                </div>
                <!-- end row -->

            </div>
            <!-- end container-fluid -->

        </div>
        <!-- end content -->



        <!-- Footer Start -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        2022 - 2023 &copy; design by <a href="https://codegym.vn/trung-tam-codegym-hue/">CodeGym</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end Footer -->

    </div>

    <!-- ============================================================== -->
    <!-- End Page content -->
    <!-- ============================================================== -->

</div>
<!-- END wrapper -->


<jsp:include page="/WEB-INF/dashboard/layout/js_footer.jsp">
    <jsp:param name="page" value="customer"/>
</jsp:include>

</body>
<script>
    function handleDeleteClick(idCustomer) {
        document.getElementById("idDelete").value = idCustomer;
        Swal.fire({
            title: 'Are you sure?',
            // text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                document.getElementById("frmDelete").submit();
                // Swal.fire(
                //     'Deleted!',
                //     'Your file has been deleted.',
                //     'success'
                // )
            }
        })
        return false;
    }
</script>
</html>