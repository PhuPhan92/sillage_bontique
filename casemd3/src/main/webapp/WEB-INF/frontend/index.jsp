﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Coron - Fashion eCommerce Bootstrap4 Template</title>
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


        <style>
            h1{
                color: red;
            }
        </style>
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
                                                <a href="/"><img src="<c:url value="/images/logo2.jpg"/>" alt="" style = " width: 80px; height: 80px;"></a>
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
                                                            <li class=""><a href="/">Trang chủ</a></li>
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
                                                            <li class=""><a href="#">Manager</a>
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
                                                            <li class="active"><a href="/">Trang chủ</a></li>
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
                                                            <li class="active"><a href="index.jsp">Manager</a>
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
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
                        <!--header end -->

                        <!--pos home section-->
                        <div class=" pos_home_section">
                            <div class="row pos_home">
                                <div class="col-lg-3 col-md-8 col-12">
                                   <!--sidebar banner-->
                                    <div class="sidebar_widget banner mb-35">
                                        <div class="banner_img mb-35">
                                            <a href="#"><img src="/frontend/assets\img\banner\banner5.jpg" alt=""></a>
                                        </div>
                                        <div class="banner_img">
                                            <a href="#"><img src="/frontend/assets\img\banner\banner6.jpg" alt=""></a>
                                        </div>
                                    </div>
                                    <!--sidebar banner end-->


                                    <!--popular tags area-->
                                    <div class="sidebar_widget tags mb-35">
                                        <div class="block_title">
                                            <h3>Tìm phổ biến</h3>
                                        </div>
                                        <div class="block_tags">
                                            <a href="#">Nam</a>
                                            <a href="#">Creed</a>
                                            <a href="#">Dior</a>
                                            <a href="#">Unisex</a>
                                            <a href="#">Chanel</a>
                                            <a href="#">Versace</a>
                                            <a href="#">Roja Dove</a>
                                            <a href="#">Nử</a>
                                            <a href="#">Victoria's Screat</a>
                                        </div>
                                    </div>
                                    <!--popular tags end-->

                                    <!--newsletter block start-->
                                    <div class="sidebar_widget newsletter mb-35">
                                        <div class="block_title">
                                            <h3>newsletter</h3>
                                        </div> 
                                        <form action="#">
                                            <p>Sign up for your newsletter</p>
                                            <input placeholder="Your email address" type="text">
                                            <button type="submit">Subscribe</button>
                                        </form>   
                                    </div>
                                    <!--newsletter block end-->

                                    <!--sidebar banner-->
                                    <div class="sidebar_widget bottom ">
                                        <div class="banner_img">
                                            <a href="#"><img src="<c:url value="/images/banner.jpg"/>" alt="banner"></a>
                                        </div>
                                    </div>
                                    <!--sidebar banner end-->



                                </div>
                                <div class="col-lg-9 col-md-12">
                                    <!--banner slider start-->
                                    <div class="banner_slider slider_1">
                                        <div class="slider_active owl-carousel">
                                            <div class="single_slider" style="background-image: url(/images/slide1.jpg)">
                                                <div class="slider_content">
                                                    <div class="slider_content_inner">  
                                                        <h1>Women's Fashion</h1>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
                                                        <a href="#">shop now</a>
                                                    </div>     
                                                </div>    
                                            </div>
                                            <div class="single_slider" style="background-image: url(/images/slide2.jpg)">
                                                <div class="slider_content">
                                                    <div class="slider_content_inner">  
                                                        <h1>New Collection</h1>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
                                                        <a href="#">shop now</a>
                                                    </div>         
                                                </div>         
                                            </div>
                                            <div class="single_slider" style="background-image: url(/images/slide3.jpg)">
                                                <div class="slider_content">  
                                                    <div class="slider_content_inner">  
                                                        <h1>Best Collection</h1>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
                                                        <a href="#">shop now</a>
                                                    </div> 
                                                </div> 
                                            </div>
                                        </div>
                                    </div> 
                                    <!--banner slider start-->

                                    <!--new product area start-->
                                    <div class="new_product_area">
                                        <div class="block_title">
                                            <h3>Nước Hoa Nam </h3>
                                        </div>
                                        <div class="row">
                                            <div class="product_active owl-carousel">
                                                <c:forEach var="phone" items="${requestScope.productListMale}">
                                                    <div class="col-lg-3">
                                                        <div class="single_product">
                                                            <div class="product_thumb">
                                                                <a href="/products?action=view&id=${phone.getId()}"><img src="/images/${phone.getImage()}" alt="" style="width: 250px;height: auto; max-height: 250px"></a>
                                                                <div class="img_icone">
                                                                    <img src="/frontend/assets\img\cart\span-new.png" alt="">
                                                                </div>
                                                                <div class="product_action">
                                                                    <a href="/cart?action=add&id=${phone.getId()}"> <i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                                </div>
                                                            </div>
                                                            <div class="product_content">
                                                                <span class="product_price"><fmt:formatNumber type="number" maxFractionDigits = "3" value="${phone.getPrice()}" /> đ </span>
                                                                <h3 class="product_title"><a href="/products?action=view&id=${phone.getId()}">${phone.getName()}</a></h3>
                                                            </div>
                                                            <div class="product_info">
                                                                <ul>
                                                                    <li><a href="/products?action=view&id=${phone.getId()}" data-toggle="modal" data-target="#modal_box" title="Quick view">View Detail</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>

                                            </div> 
                                        </div>       
                                    </div> 
                                    <!--new product area start-->  

                                    <!--featured product start--> 
                                    <div class="featured_product">
                                        <div class="block_title">
                                            <h3>Nước Hoa Nữ</h3>
                                        </div>
                                        <div class="row">
                                            <div class="product_active owl-carousel">
                                                <c:forEach var="phone" items="${requestScope.productListFemale}">
                                                    <div class="col-lg-3">
                                                        <div class="single_product">
                                                            <div class="product_thumb">
                                                                <a href="/products?action=view&id=${phone.getId()}"><img src="/images/${phone.getImage()}" alt="" style="width: 250px;height: auto; max-height: 250px"></a>
                                                                <div class="img_icone">
                                                                    <img src="/frontend/assets\img\cart\span-new.png" alt="">
                                                                </div>
                                                                <div class="product_action">
                                                                    <a href="/cart?action=add&id=${phone.getId()}"> <i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                                </div>
                                                            </div>
                                                            <div class="product_content">
                                                                <span class="product_price"><fmt:formatNumber type="number" maxFractionDigits = "3" value="${phone.getPrice()}" /> đ </span>
                                                                <h3 class="product_title"><a href="/products?action=view&id=${phone.getId()}">${phone.getName()}</a></h3>
                                                            </div>
                                                            <div class="product_info">
                                                                <ul>
                                                                    <li><a href="/products?action=view&id=${phone.getId()}" data-toggle="modal" data-target="#modal_box" title="Quick view">View Detail</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div> 
                                        </div> 
                                    </div>     
                                    <!--featured product end-->
                                    <!--featured product start-->
                                    <div class="featured_product">
                                        <div class="block_title">
                                            <h3>Nước Hoa Unisex</h3>
                                        </div>
                                        <div class="row">
                                            <div class="product_active owl-carousel">
                                                <c:forEach var="phone" items="${requestScope.productListUnisex}">
                                                    <div class="col-lg-3">
                                                        <div class="single_product">
                                                            <div class="product_thumb">
                                                                <a href="/products?action=view&id=${phone.getId()}"><img src="/images/${phone.getImage()}" alt="" style="width: 250px;height: auto; max-height: 250px"></a>
                                                                <div class="img_icone">
                                                                    <img src="/frontend/assets\img\cart\span-new.png" alt="">
                                                                </div>
                                                                <div class="product_action">
                                                                    <a href="/cart?action=add&id=${phone.getId()}"> <i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                                </div>
                                                            </div>
                                                            <div class="product_content">
                                                                <span class="product_price"><fmt:formatNumber type="number" maxFractionDigits = "3" value="${phone.getPrice()}" /> đ </span>
                                                                <h3 class="product_title"><a href="/products?action=view&id=${phone.getId()}">${phone.getName()}</a></h3>
                                                            </div>
                                                            <div class="product_info">
                                                                <ul>
                                                                    <li><a href="/products?action=view&id=${phone.getId()}" data-toggle="modal" data-target="#modal_box" title="Quick view">View Detail</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                    <!--featured product end-->
                                    <!--banner area start-->
                                    <div class="banner_area mb-60">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6">
                                                <div class="single_banner">
                                                    <a href="#"><img src="/frontend/assets\img\banner\banner7.jpg" alt=""></a>
                                                    <div class="banner_title">
                                                        <p>Up to <span> 40%</span> off</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6">
                                                <div class="single_banner">
                                                    <a href="#"><img src="/frontend/assets\img\banner\banner8.jpg" alt=""></a>
                                                    <div class="banner_title title_2">
                                                        <p>sale off <span> 30%</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>     
                                    <!--banner area end-->

                                    <!--brand logo strat-->
                                    <div class="brand_logo mb-60">
                                        <div class="block_title">
                                            <h3>Brands</h3>
                                        </div>
                                        <div class="row">
                                            <div class="brand_active owl-carousel">
                                                <div class="col-lg-2">
                                                    <div class="single_brand">
                                                        <a href="#"><img src="<c:url value="/images/logobrand1.jpg"/>" alt="brand_1" style="width: 210px; height: auto;"></a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-2">
                                                    <div class="single_brand">
                                                        <a href="#"><img src="<c:url value="/images/logobrand2.jpg"/>" alt="brand_2" style="width: 210px; height: auto;"></a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-2">
                                                    <div class="single_brand">
                                                        <a href="#"><img src="<c:url value="/images/logobrand3.jpg"/>" alt="brand_3" style="width: 210px; height: auto;"></a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-2">
                                                    <div class="single_brand">
                                                        <a href="#"><img src="<c:url value="/images/logobrand4.jpg"/>" alt="brand_4" style="width: 210px; height: auto;"></a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-2">
                                                    <div class="single_brand">
                                                        <a href="#"><img src="<c:url value="/images/logobrand5.jpg"/>" alt="brand_5" style="width: 210px; height: auto;"></a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-2">
                                                    <div class="single_brand">
                                                        <a href="#"><img src="<c:url value="/images/logobrand6.jpg"/>" alt="brand_6" style="width: 210px; height: auto;"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--brand logo end-->
                                </div>
                            </div>  
                        </div>
                        <!--pos home section end-->
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
        <script src="/frontend/assets\js\vendor\jquery-1.12.0.min.js"></script>
        <script src="/frontend/assets\js\popper.js"></script>
        <script src="/frontend/assets\js\bootstrap.min.js"></script>
        <script src="/frontend/assets\js\ajax-mail.js"></script>
        <script src="/frontend/assets\js\plugins.js"></script>
        <script src="/frontend/assets\js\main.js"></script>
    </body>
</html>
