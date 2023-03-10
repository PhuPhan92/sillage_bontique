<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Form Elements | Zircos - Responsive Bootstrap 4 Admin Dashboard</title>
        <jsp:include page="/WEB-INF/dashboard/layout/meta_head.jsp"></jsp:include>

    </head>

    <body data-layout="horizontal">

        <!-- Begin page -->
        <div id="wrapper">
            <nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-top" >
                <div class="container-fluid">
                    <a href="/">
                        <img src="<c:url value="/images/logo2.jpg"/>" alt="" style = " width: 100px; height: 100px;">
                    </a>

                </div>
            </nav>

            <!-- Navigation Bar-->


                <!-- End Navigation Bar-->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">

                    <!-- Start Content-->
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item active"><a href="/customers" class="btn btn-outline-purple">BACK TO CUSTOMER</a></li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Bảng đăng ký khách hàng mới</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <c:if test="${requestScope.message != null}">
                                <script>
                                    window.onload = ()=>{
                                        toastr.options = {
                                            "closeButton": true,
                                            "debug": false,
                                            "newestOnTop": false,
                                            "progressBar": true,
                                            "positionClass": "toast-bottom-right",
                                            "preventDuplicates": false,
                                            "onclick": null,
                                            "showDuration": "300",
                                            "hideDuration": "1000",
                                            "timeOut": "5000",
                                            "extendedTimeOut": "1000",
                                            "showEasing": "swing",
                                            "hideEasing": "linear",
                                            "showMethod": "fadeIn",
                                            "hideMethod": "fadeOut"
                                        }
                                        toastr["success"]("Đã thêm khách hàng thành công", "Thêm khách hàng")

                                    }
                                </script>
                            </c:if>
                            <c:if test="${requestScope.errors!=null && requestScope.errors.size()!=0}">
                                <div class="alert alert-danger offset-2">
                                    <ul>
                                        <c:forEach var="e" items="${requestScope.errors}">
                                            <li>${e}</li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </c:if>
                            <form class="form-horizontal col-6 offset-1" method="post" enctype="multipart/form-data">
                                <div class="form-group row">
                                    <label class="col-md-2 control-label">Name</label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control" name="name"  value="${requestScope.customer.getName()}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 control-label">Day of birth</label>
                                    <div class="col-md-10">
                                        <input type="date" class="form-control" name="createdAt" value="<fmt:formatDate pattern = "yyyy-MM-dd"
                                            value = "${requestScope.customer.getCreatedAt()}" />">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 control-label">Address</label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control" name="address"  value="${requestScope.customer.getAddress()}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 control-label">Phone</label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control" name="phone"  value="${requestScope.customer.getPhone()}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 control-label">Type customer</label>
                                    <div class="col-md-10">
                                        <select name="sCustomerType" class="col-9 form-control">
                                            <c:forEach items="${requestScope.customerTypes}" var="ct">
                                                <option value="${ct.getId()}">${ct.getName()}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 control-label">Image</label>
                                    <div class="col-md-10">
                                        <input type="file" class="form-control" name="image"  id="imgInput">
                                        <div>
                                            <img src="" id="idImage" style="width: 200px; height: auto"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-10 offset-2">
                                        <button class="btn btn-primary">Create</button>
                                        <button class="btn btn-warning">Cancel</button>
                                    </div>
                                </div>

                            </form>
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
                                2018 - 2020 &copy; Zircos theme by <a href="">Coderthemes</a>
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
            <jsp:param name="page" value="create"/>
        </jsp:include>

        <script>
            // Chọn ảnh ở thẻ input thì hiện thị preview (xem trước)
            let imgInput = document.getElementById("imgInput");
            let idImage = document.getElementById("idImage");
            imgInput.onchange = evt => {
                const [file] = imgInput.files
                if (file) {
                    idImage.src = URL.createObjectURL(file)
                }
            }
        </script>
    </body>

</html>