<%--Head Star--%>
<div class="header_area">
    <!--header middel-->
    <div class="header_middel">
        <div class="row align-items-center">
            <!--logo start-->
            <div class="col-lg-3 col-md-3">
                <div class="logo">
                    <a href="index.jsp"><img src="<c:url value="/images/logo2.jpg"/>" alt="" style = " width: 80px; height: 80px;"></a>
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
                        <a href="#"><i class="fa fa-shopping-cart"></i> 2Items - $209.44 <i class="fa fa-angle-down"></i></a>

                        <!--mini cart-->
                        <div class="mini_cart">
                            <div class="cart_item">
                                <div class="cart_img">
                                    <a href="#"><img src="/frontend/assets\img\cart\cart.jpg" alt=""></a>
                                </div>
                                <div class="cart_info">
                                    <a href="#">lorem ipsum dolor</a>
                                    <span class="cart_price">$115.00</span>
                                    <span class="quantity">Qty: 1</span>
                                </div>
                                <div class="cart_remove">
                                    <a title="Remove this item" href="#"><i class="fa fa-times-circle"></i></a>
                                </div>
                            </div>
                            <div class="cart_item">
                                <div class="cart_img">
                                    <a href="#"><img src="/frontend/assets\img\cart\cart2.jpg" alt=""></a>
                                </div>
                                <div class="cart_info">
                                    <a href="#">Quisque ornare dui</a>
                                    <span class="cart_price">$105.00</span>
                                    <span class="quantity">Qty: 1</span>
                                </div>
                                <div class="cart_remove">
                                    <a title="Remove this item" href="#"><i class="fa fa-times-circle"></i></a>
                                </div>
                            </div>
                            <div class="shipping_price">
                                <span> Shipping </span>
                                <span>  $7.00  </span>
                            </div>
                            <div class="total_price">
                                <span> total </span>
                                <span class="prices">  $227.00  </span>
                            </div>
                            <div class="cart_button">
                                <a href="checkout.jsp"> Check out</a>
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
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="contact.html">contact us</a></li>
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
