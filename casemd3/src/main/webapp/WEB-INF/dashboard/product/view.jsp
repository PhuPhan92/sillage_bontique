<%--
  Created by IntelliJ IDEA.
  User: Hai Nguyen
  Date: 2/16/2023
  Time: 3:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>single product</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <!-- all css here -->
    <link rel="stylesheet" href="\frontend\assets\css\bootstrap.min.css">
    <link rel="stylesheet" href="\frontend\assets\css\plugin.css">
    <link rel="stylesheet" href="\frontend\assets\css\bundle.css">
    <link rel="stylesheet" href="\frontend\assets\css\style.css">
    <link rel="stylesheet" href="\frontend\assets\css\responsive.css">
    <script src="\frontend\assets\js\vendor\modernizr-2.8.3.min.js"></script>
</head>
<body>
<!-- Add your site or application content here -->

<!--pos page start-->
<div class="pos_page">
    <div class="container">
        <!--pos page inner-->
        <div class="pos_page_inner">
            <!--header area -->
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
                                    <a href="#"><i class="fa fa-dropbox" aria-hidden="true"></i> C?? g?? hot???? <i class="fa fa-angle-down"></i></a>

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
                                    <!--mini cart end-->
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
                                            <li class=""><a href="/">Trang ch???</a></li>
                                            <li><a href="#">N?????c Hoa</a>
                                                <div class="mega_menu jewelry">
                                                    <div class="mega_items jewelry">
                                                        <ul>
                                                            <li><a href="shop-list.html">N?????c Hoa Nam</a></li>
                                                            <li><a href="shop-fullwidth.html">N?????c Hoa N???</a></li>
                                                            <li><a href="shop-fullwidth-list.html">N?????c Hoa Unisex</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li><a href="#">Th????ng Hi???u</a>
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
                                        </ul>
                                    </nav>
                                </div>
                                <div class="mobile-menu d-lg-none">
                                    <nav>
                                        <ul>
                                            <li class="active"><a href="/">Trang ch???</a></li>
                                            <li><a href="#">N?????c Hoa</a>
                                                <div class="mega_menu jewelry">
                                                    <div class="mega_items jewelry">
                                                        <ul>
                                                            <li><a href="shop-list.html"></a>N?????c Hoa Nam</li>
                                                            <li><a href="shop-fullwidth.html">N?????c Hoa N???</a></li>
                                                            <li><a href="shop-fullwidth-list.html">N?????c Hoa Unisex</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li><a href="#">Th????ng Hi???u</a>
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
                                                            <li><a href="/BarChart">Th???ng k??</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>

                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--header end -->
            <!--breadcrumbs area start-->
            <div class="breadcrumbs_area">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="index.html">home</a></li>
                                <li><i class="fa fa-angle-right"></i></li>
                                <li>single product</li>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>
            <!--breadcrumbs area end-->


            <!--product wrapper start-->
            <div class="product_details">
                <div class="row">
                    <div class="col-lg-5 col-md-6">
                        <div class="product_tab fix">
                            <div class="tab-content produc_tab_c">
                                <div class="tab-pane fade show active" id="p_tab1" role="tabpanel">
                                    <div class="modal_img">
                                        <a href="#"><img src="/images/${requestScope["product"].getImage()}" alt=""></a>
                                        <div class="img_icone">
                                            <img src="assets\img\cart\span-new.png" alt="">
                                        </div>
                                        <div class="view_img">
                                            <a class="large_view" href="/images/${requestScope["product"].getImage()}"><i class="fa fa-search-plus"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="p_tab2" role="tabpanel">
                                    <div class="modal_img">
                                        <a href="#"><img src="assets\img\product\product14.jpg" alt=""></a>
                                        <div class="img_icone">
                                            <img src="assets\img\cart\span-new.png" alt="">
                                        </div>
                                        <div class="view_img">
                                            <a class="large_view" href="assets\img\product\product14.jpg"><i class="fa fa-search-plus"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="p_tab3" role="tabpanel">
                                    <div class="modal_img">
                                        <a href="#"><img src="assets\img\product\product15.jpg" alt=""></a>
                                        <div class="img_icone">
                                            <img src="assets\img\cart\span-new.png" alt="">
                                        </div>
                                        <div class="view_img">
                                            <a class="large_view" href="assets\img\product\product15.jpg"> <i class="fa fa-search-plus"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-7 col-md-6">
                        <div class="product_d_right">
                            <h1>${requestScope["product"].getName()}</h1>
                            <div class="product_desc">
                                <p>${requestScope["product"].getDescription()}</p>
                            </div>

                            <div class="content_price mb-15">
                                <span><fmt:formatNumber type="number" maxFractionDigits = "3" value="${requestScope['product'].getPrice()}" /> ??</span>
                            </div>
                            <div class="box_quantity mb-20">
                                <form action="#">
                                    <label>quantity</label>
                                    <input min="0" max="100" value="1" type="number">
                                </form>
                                <button type="button" ><a href="/cart?action=add&id=${requestScope['product'].getId()}" style="width: 100px; margin-left: 0px">add to cart</a></button>

                            </div>
<%--                            <div class="product_d_size mb-20">--%>
<%--                                <label for="group_1">size</label>--%>
<%--                                <select name="size" id="group_1">--%>
<%--                                    <option value="1">S</option>--%>
<%--                                    <option value="2">M</option>--%>
<%--                                    <option value="3">L</option>--%>
<%--                                </select>--%>
<%--                            </div>--%>
                            <div class="product_stock mb-20">
                                <p>${requestScope["product"].getQuantity()} items</p>
                                <span> In stock </span>
                            </div>
                            <div class="wishlist-share">
                                <h4>Share on:</h4>
                                <ul>
                                    <li><a href="#"><i class="fa fa-rss"></i></a></li>
                                    <li><a href="#"><i class="fa fa-vimeo"></i></a></li>
                                    <li><a href="#"><i class="fa fa-tumblr"></i></a></li>
                                    <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!--product details end-->


            <!--product info start-->
            <div class="product_d_info">
                <div class="row">
                    <div class="col-12">
                        <div class="product_d_inner">
                            <div class="product_info_button">
                                <ul class="nav" role="tablist">
                                    <li>
                                        <a class="active" data-toggle="tab" href="#info" role="tab" aria-controls="info" aria-selected="false">V??? ch??ng t??i</a>
                                    </li>
                                    <li>
                                        <a data-toggle="tab" href="#sheet" role="tab" aria-controls="sheet" aria-selected="false">Ch??nh s??ch</a>
                                    </li>
                                    <li>
                                        <a data-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">G??p ??</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="info" role="tabpanel">
                                    <div class="product_info_content">
                                        <p>??i ti??n phong v?? ra ?????i v??o ng??y xx/xx/2023 v???i showroom ?????u ti??n t???i ..... Hi???n nay ch??ng t??i l?? c??ng ty cung c???p n?????c hoa h??ng ?????u t???i th??? tr?????ng Tp. Hu??? v?? t???i VN. V???i 200 nh??n hi???u, h??ng ngh??n m???t h??ng ???????c c???p nh???t li??n t???c ????? kh??ch h??ng ???????c ??a d???ng l???a ch???n, gi?? lu??n T???T NH???T ?????ng th???i mang ?????n s??? y??n t??m v??? ch???t l?????ng s???n ph???m c??ng ?????i ng?? nh??n vi??n chuy??n nghi???p s??? mang l???i cho qu?? kh??ch tr???i nghi???m mua s???m n?????c hoa t???t nh???t.

                                            Ch??ng t??i t??? h??o l?? nh?? b??n l??? c?? gi?? t???t, phong c??ch d???ch v??? chuy??n nghi???p v?? ???????c nhi???u kh??ch h??ng ???ng h??? nh???t tr??n th??? tr?????ng. Kh??ch h??ng c???a ch??ng t??i l?? nh???ng ca s???, ng?????i n???i ti???ng, c??c doanh nh??n.</p>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="sheet" role="tabpanel">
                                    <div class="product_d_table">
                                        <form action="#">
                                            <table>
                                                <tbody>
                                                <tr>
                                                    <td class="first_child"> <h3>CAM K???T B???O H??NH</h3></td>
                                                    <td><h3>QUY ??INH&nbsp;B???O H??NH &amp; ?????I&nbsp;TR???</h3></td>
                                                </tr>
                                                <tr>
                                                    <td class="first_child">
                                                        <p>Orchard Perfumes &amp; Cosmetics cam k???t b???o h??nh s???n ph???m tr???n ?????i v??? m??i h????ng. Orchard s??? ho??n ti???n n???u h??ng ho?? g???p ch???t l?????ng k??m &amp; ?????n b?? 200% n???u kh??ch h??ng ch???ng minh ???????c l?? h??ng gi???.</p>
                                                        <p>T???t c??? c??c s???n ph???m n?????c hoa ???????c ?????i tr??? trong v??ng 30 ng??y kh??ng c???n l?? do(n???u ????p ???ng ?????y ????? c??c ??i???u ki???n b??n d?????i).</p>
                                                        <p><span lang="EN-US">T?? v???n v?? h??? tr??? gi???i quy???t t???n t??nh s??? c???.</span></p>
                                                    </td>
                                                    <td>
                                                        <ul>
                                                            <li>Qu?? kh??ch vui l??ng ki???m tra k??? s???n ph???m tr?????c khi mua h??ng.</li>
                                                            <li>S???n ph???m ph???i c?? ?????y ????? tem, h???p c???a nh?? s???n xu???t, tem b???o h??nh c???a Orchard d?????i ????y chai &amp;&nbsp;tr??n h???p.</li>
                                                            <li>Qu?? kh??ch ph???i gi??? ?????y ????? h??a ????n mua h??ng c???a Orchard c?? bao g???m ch??? k?? c???a ng?????i mua h??ng.</li>
                                                            <li>S???n ph???m ph???i ???????c gi??? nguy??n v???n nh?? hi???n tr???ng ?????i v???i ph???n n???p chai, v??i x???t.</li>
                                                            <li>Orchard s??? kh??ng b???o h??nh v???i c??c d??ng s???n ph???m c?? v??i x???t kh??ng g???n li???n v???i chai nh?? CK One, CK One Gold, CK Be, CK Shock...</li>
                                                            <li>S???n ph???m ???????c ?????i Tr??? l?? s???n ph???m n?????c hoa c?? n???p x???t (Kh??ng ?????i tr??? v???i s???n ph???m mini - kh??ng c?? n???p x???t)</li>
                                                            <li>Orchard.vn s??? kh??ng b???o h??nh v???i c??c s???n ph???m ???????c gi???m gi?? t??? 40% tr??? l??n.</li>
                                                            <li>Kh??ng ??p d???ng ch??nh s??ch b???o h??nh v???i c??c h??ng ho?? thu???c danh s??ch ??u ????i ?????c bi???t trong ch????ng tr??nh khuy???n m??i t???ng th???i ??i???m.</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </form>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="reviews" role="tabpanel">
                                    <div class="product_info_content">
                                        <p>Ch??ng t??i mong mu???n c?? ???????c nhi???u ?? ki???n ????ng g??p c???a qu?? kh??ch, ????? ch??ng t??i c?? th??? n??ng cao ch???t l?????ng ph???c v??? Xin c???m ??n!</p>
                                     </div>
                                    <div class="product_review_form">
                                        <form action="#">
                                            <h2>Review </h2>
                                            <p>C??ng t??i cam ??oan th??ng tin c???a kh??c h??ng s??? kh??ng ???????c s??? d???ng ??? n??i kh??c.Vui l??ng ??i???n c??c th??ng tin b???t bu???c</p>
                                            <div class="row">
                                                <div class="col-12">
                                                    <label for="review_comment">G??p ?? </label>
                                                    <textarea name="comment" id="review_comment"></textarea>
                                                </div>
                                                <div class="col-lg-6 col-md-6">
                                                    <label for="author">T??n qu?? kh??ch</label>
                                                    <input id="author" type="text">

                                                </div>
                                                <div class="col-lg-6 col-md-6">
                                                    <label for="email">Email </label>
                                                    <input id="email" type="text">
                                                </div>
                                            </div>
                                            <button type="submit">Submit</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--product info end-->

        </div>
        <!--pos page inner end-->
    </div>
</div>
<!--pos page end-->

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

<!-- all js here -->
<script src="\frontend\assets\js\vendor\jquery-1.12.0.min.js"></script>
<script src="\frontend\assets\js\popper.js"></script>
<script src="\frontend\assets\js\bootstrap.min.js"></script>
<script src="\frontend\assets\js\ajax-mail.js"></script>
<script src="\frontend\assets\js\plugins.js"></script>
<script src="\frontend\assets\js\main.js"></script>
</body>
</html>
