<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Coron-cart</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="/frontend/assets\img\favicon.png">
		
		<!-- all css here -->
       <link rel="stylesheet" href="/frontend/assets\css\bootstrap.min.css">
        <link rel="stylesheet" href="/frontend/assets\css\plugin.css">
        <link rel="stylesheet" href="/frontend/assets\css\bundle.css">
        <link rel="stylesheet" href="/frontend/assets\css\style.css">
        <link rel="stylesheet" href="/frontend/assets\css\responsive.css">
        <script src="/frontend/assets\js\vendor\modernizr-2.8.3.min.js"></script>
    </head>
    <body>
            <!-- Add your site or application content here -->
            <!--pos page start-->
            <div class="pos_page">
                <div class="container">  
                   <!--pos page inner-->
                    <div class="pos_page_inner">  
                       <!--header area -->
                        <%--Head Star--%>
                        <div class="header_area">
                            <!--header middel-->
                            <div class="header_middel">
                                <div class="row align-items-center">
                                    <!--logo start-->
                                    <div class="col-lg-3 col-md-3">
                                        <div class="logo">
                                            <a href="/"><img src="<c:url value="/images/logo2.jpg"/>" alt="logo" style = " width: 80px; height: 80px;"></a>
                                        </div>
                                    </div>
                                    <!--logo end-->
                                    <div class="col-lg-9 col-md-9">
                                        <div class="header_right_info">
                                            <div class="search_bar">
                                                <form action="#">
                                                    <input placeholder="Search..." type="text">
                                                    <button type="submit"><i class="fa fa-search"></i></button>
                                                </form>
                                            </div>
                                            <div class="shopping_cart">
                                                <a href="#"><i class="fa fa-dropbox" aria-hidden="true"></i> Có gì hot???? <i class="fa fa-angle-down"></i></a>

                                                <!--mini cart-->
                                                <div class="mini_cart">
                                                    <div class="cart_item">
                                                        <div class="cart_img">
                                                            <a href="#"><img src="/images/mystery_box.jpg" alt="box"></a>
                                                        </div>
                                                        <div class="cart_info">
                                                            <a href="#">Mystery Box</a>
                                                            <span class="cart_price">Comming Soon</span>
                                                            <span class="quantity">Jun-2023</span>
                                                        </div>
                                                        <div class="cart_remove">
                                                            <a title="Remove this item" href="#"><i class="fa fa-times-circle"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="cart_item">
                                                        <div class="cart_img">
                                                            <a href="#"><img src="/images/event.png" alt=""></a>
                                                        </div>
                                                        <div class="cart_info">
                                                            <a href="#"> New Event</a>
                                                            <span class="cart_price">Comming Soon</span>
                                                            <span class="quantity">July-2023</span>
                                                        </div>
                                                        <div class="cart_remove">
                                                            <a title="Remove this item" href="#"><i class="fa fa-times-circle"></i></a>
                                                        </div>
                                                    </div>
                                                </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--header middel end-->
                            <div class="header_bottom">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="main_menu_inner">
                                            <div class="main_menu d-none d-lg-block">
                                                <nav>
                                                    <ul>
                                                        <li class="active"><a href="/">Trang chủ</a></li>
                                                        <li><a href="#">Nước Hoa</a>
                                                            <div class="mega_menu jewelry">
                                                                <div class="mega_items jewelry">
                                                                    <ul>
                                                                        <li><a href="shop-list.html">Nước Hoa Nam</a></li>
                                                                        <li><a href="shop-fullwidth.html">Nước Hoa Nử</a></li>
                                                                        <li><a href="shop-fullwidth-list.html">Nước Hoa Unisex</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li><a href="#">Thương Hiệu</a>
                                                            <div class="mega_menu">
                                                                <div class="mega_top fix">
                                                                    <div class="mega_items">
                                                                        <ul>
                                                                            <li><a href="#">Dior</a></li>
                                                                            <li><a href="#">Chanel</a></li>
                                                                            <li><a href="#">Roja Dove</a></li>
                                                                            <li><a href="#">Lancome</a></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="mega_items">
                                                                        <ul>
                                                                            <li><a href="#">Nautica</a></li>
                                                                            <li><a href="#">Versace </a></li>
                                                                            <li><a href="#">Moschino</a></li>
                                                                            <li><a href="#"></a></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="mega_items">
                                                                        <ul>
                                                                            <li><a href="#">Creed</a></li>
                                                                            <li><a href="#">YSL</a></li>
                                                                            <li><a href="#">Victoria's Screat</a></li>
                                                                            <li><a href="#"></a></li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li><a href="/cart">Cart</a></li>
                                                        <li class="active"><a href="index.jsp">Manager</a>
                                                            <div class="mega_menu jewelry">
                                                                <div class="mega_items jewelry">
                                                                    <ul>
                                                                        <li><a href="/customers">Customer</a></li>
                                                                        <li><a href="/products">Product</a></li>
                                                                        <li><a href="/BarChart">Thống kê</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>

                                                    </ul>
                                                </nav>
                                            </div>
                                            <div class="mobile-menu d-lg-none">
                                                <nav>
                                                    <ul>
                                                        <li class=""><a href="/">Trang chủ</a></li>
                                                        <li><a href="#">Nước Hoa</a>
                                                            <div class="mega_menu jewelry">
                                                                <div class="mega_items jewelry">
                                                                    <ul>
                                                                        <li><a href="shop-list.html"></a>Nước Hoa Nam</li>
                                                                        <li><a href="shop-fullwidth.html">Nước Hoa Nử</a></li>
                                                                        <li><a href="shop-fullwidth-list.html">Nước Hoa Unisex</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li><a href="#">Thương Hiệu</a>
                                                            <div class="mega_menu">
                                                                <div class="mega_top fix">
                                                                    <div class="mega_items">
                                                                        <ul>
                                                                            <li><a href="#">Dior</a></li>
                                                                            <li><a href="#">Chanel</a></li>
                                                                            <li><a href="#">Roja Dove</a></li>
                                                                            <li><a href="#">Lancome</a></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="mega_items">
                                                                        <ul>
                                                                            <li><a href="#">Nautica</a></li>
                                                                            <li><a href="#">Versace </a></li>
                                                                            <li><a href="#">Moschino</a></li>
                                                                            <li><a href="#"></a></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="mega_items">
                                                                        <ul>
                                                                            <li><a href="#">Creed</a></li>
                                                                            <li><a href="#">YSL</a></li>
                                                                            <li><a href="#">Victoria's Screat</a></li>
                                                                            <li><a href="#"></a></li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li><a href="/cart">Cart</a></li>
                                                        <li class=""><a href="index.jsp">Manager</a>
                                                            <div class="mega_menu jewelry">
                                                                <div class="mega_items jewelry">
                                                                    <ul>
                                                                        <li><a href="/customers">Customer</a></li>
                                                                        <li><a href="/products">Product</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li><a href="contact.html">contact us</a></li>
                                                    </ul>
                                                </nav>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--header end -->

                        <!--header end -->
                         <!--breadcrumbs area start-->
                        <div class="breadcrumbs_area">
                            <div class="row">
                                <div class="col-12">
                                    <div class="breadcrumb_content">
                                        <ul>
                                            <li><a href="index.html">home</a></li>
                                            <li><i class="fa fa-angle-right"></i></li>
                                            <li>Shopping Cart</li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--breadcrumbs area end-->



                         <!--shopping cart area start -->
                        <div class="shopping_cart_area">
                            <form action="#"> 
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="table_desc">
                                                <div class="cart_page table-responsive">
                                                    <table>
                                                        <thead>
                                                            <tr>
                                                                <th class="product_remove">Delete</th>
                                                                <th class="product_thumb">Image</th>
                                                                <th class="product_name">Product</th>
                                                                <th class="product-price">Price</th>
                                                                <th class="product_quantity">Quantity</th>
                                                                <th class="product_total">Total</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach items="${requestScope.orderDTO.getOderItemDTOS()}" var="oderItemDTO" >
                                                                <tr>
                                                                    <td class="product_remove"><a href="#"><i class="fa fa-trash-o"></i></a></td>
                                                                    <td class="product_thumb"><a href="#"><img src="/images/${oderItemDTO.getProduct().getImage()}" alt=""></a></td>
                                                                    <td class="product_name"><a href="#">${oderItemDTO.getProduct().getName()}</a></td>
                                                                    <td class="product-price"> <fmt:formatNumber type="number" maxFractionDigits = "3" value="${oderItemDTO.getProduct().getPrice()}" /> đ </td>
                                                                    <td class="product_quantity"><input min="0" max="100" value="${oderItemDTO.getQuantity()}" type="number" onchange="handleInputchange(${oderItemDTO.getProduct().getId()}, this)"></td>
                                                                    <td class="product_total"> <fmt:formatNumber type="number" maxFractionDigits = "3" value="${oderItemDTO.getProduct().getPrice()*oderItemDTO.getQuantity()}" /> đ </td>
                                                                </tr>
                                                            </c:forEach>

                                                        </tbody>
                                                    </table>

                                                </div>  
                                                <div class="cart_submit">
                                                    <button type="button"><a href="/"> Thêm Sản Phẩm Khác</a></button>
                                                    <button type="submit"><a href="/cart?action=checkout"> Thanh Toán</a></button>
                                                </div>      
                                            </div>
                                         </div>
                                     </div>

                                </form> 
                         </div>
                         <!--shopping cart area end -->

                    </div>
                    <!--pos page inner end-->
                </div>
            </div>
            <!--pos page end-->

            <form id="frmCartEdit" action="/cart?action=edit" method="post">
                <input id="txtIdProduct" name="idproduct" value="" type="hidden">
                <input id="txtQuantityProduct" name="quantity" value="" type="hidden">
            </form>
                <!--footer area start-->
                <div class="footer_area">
                    <div class="footer_bottom">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-lg-6 col-md-6">
                                    <div class="copyright_area">
                                        <ul>
                                            <li><a href="#"> about us </a></li>
                                            <li><a href="#">  Customer Service  </a></li>
                                            <li><a href="#">  Privacy Policy  </a></li>
                                        </ul>
                                        <p>Copyright &copy; 2018 <a href="#">Pos Coron</a>. All rights reserved. </p>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="footer_social text-right">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                            <li><a class="pinterest" href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>

                                            <li><a href="#"><i class="fa fa-wifi" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--footer area end-->
            
            
            
            
        <script>
            function handleInputchange(id, element) {
                console.log(id);
                let value = element.value;
                console.log(value)
                document.getElementById("txtIdProduct").value = id;
                document.getElementById("txtQuantityProduct").value = value;

                document.getElementById("frmCartEdit").submit();
            }
        </script>
		
		<!-- all js here -->
        <script src="/frontend/assets\js\vendor\jquery-1.12.0.min.js"></script>
        <script src="/frontend/assets\js\popper.js"></script>
        <script src="/frontend/assets\js\bootstrap.min.js"></script>
        <script src="/frontend/assets\js\ajax-mail.js"></script>
        <script src="/frontend/assets\js\plugins.js"></script>
        <script src="/frontend/assets\js\main.js"></script>
    </body>
</html>
