
<!DOCTYPE html>
<html lang="en">


<!-- molla/index-13.html  22 Nov 2019 09:59:06 GMT -->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Molla - Bootstrap eCommerce Template</title>
    <meta name="keywords" content="HTML5 Template">
    <meta name="description" content="Molla - Bootstrap eCommerce Template">
    <meta name="author" content="p-themes">
    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="{{asset('frontendassets/images/icons/apple-touch-icon.png')}}">
    <link rel="icon" type="image/png" sizes="32x32" href="{{asset('frontendassets/images/icons/favicon-32x32.png')}}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset('frontendassets/images/icons/favicon-16x16.png')}}">
    <link rel="manifest" href="{{asset('frontend/assets/images/icons/site.html')}}">
    <link rel="mask-icon" href="{{asset('frontend/assets/images/icons/safari-pinned-tab.svg')}}" color="#666666">
    <link rel="shortcut icon" href="{{asset('frontend/assets/images/icons/favicon.ico')}}">
    <meta name="apple-mobile-web-app-title" content="Molla">
    <meta name="application-name" content="Molla">
    <meta name="msapplication-TileColor" content="#cc9966">
    <meta name="msapplication-config" content="{{asset('frontend/assets/images/icons/browserconfig.xml')}}">
    <meta name="theme-color" content="#ffffff">
    {{-- <link rel="stylesheet" href="assets/vendor/line-awesome/line-awesome/line-awesome/css/line-awesome.min.css"> --}}
    <!-- Plugins CSS File -->
    <link rel="stylesheet" href="{{asset('frontend/assets/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('frontend/assets/css/plugins/owl-carousel/owl.carousel.css')}}">
    <link rel="stylesheet" href="{{asset('frontend/assets/css/plugins/magnific-popup/magnific-popup.css')}}">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
    <link rel="stylesheet" href="{{asset('frontend/assets/css/plugins/jquery.countdown.css')}}">
    <!-- Main CSS File -->
    {{-- <link rel="stylesheet" href="{{asset('frontend/css/style.css')}}"> --}}
    <link rel="stylesheet" href="{{asset('frontend/assets/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('frontend/assets/css/plugins/nouislider/nouislider.css')}}">
    <link rel="stylesheet" href="{{asset('frontend/assets/css/skins/skin-demo-13.css')}}">
    <link rel="stylesheet" href="{{asset('frontend/assets/css/demos/demo-13.css')}}">


    <!-- <link rel="stylesheet" href="assets/css/skins/skin-demo-24.css">
    <link rel="stylesheet" href="assets/css/demos/demo-24.css"> -->
</head>

<body>
    <div class="page-wrapper">
        <header class="header header-10 header-intro-clearance">
            <div class="header-top">
                <div class="container">
                    <div class="header-left">
                        <a href="tel:#"><i class="icon-phone"></i>Call: +8801303523442</a>
                    </div>

                    <div class="header-right">

                        <ul class="top-menu">
                            <li>
                                <a href="#">User</a>
                                <ul>
                                    <li class="login">
                                        @auth('customerauth')
                                            
                                            <a href="{{route('customer.logout')}}"><i class="icon-user"></i>{{Auth::guard('customerauth')->user()->name}}/Logout</a>
                                            @else
                                            <a href="#signin-modal" data-toggle="modal"><i class="icon-user"></i>Login/Register</a>
                                        @endauth
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="header-middle">
                <div class="container">
                    <div class="header-left">
                        <button class="mobile-menu-toggler">
                            <span class="sr-only">Toggle mobile menu</span>
                            <i class="icon-bars"></i>
                        </button>
                        
                        <a href="{{route('site')}}" class="logo">
                            <img src="{{asset('frontend/assets/images/demos/demo-13/logo.png')}}" alt="Molla Logo" width="105" height="25">
                        </a>
                    </div>

                    <div class="header-center">
                        <div class="header-search header-search-extended header-search-visible header-search-no-radius d-none d-lg-block">
                            <a href="#" class="search-toggle" role="button"><i class="icon-search"></i></a>
                            {{-- <form action="#" method="get"> --}}
                                <div class="header-search-wrapper search-wrapper-wide">
                                    <label for="search_input" class="sr-only">Search</label>
                                    <input type="search" class="form-control" name="q"  id="search_input" placeholder="Search product ..." required value="{{@$_GET['q']}}"> 
                                    <button id="search_btn" class="btn btn-primary" type="button"><i class="icon-search"></i></button>
                                </div>
                            {{-- </form> --}}
                        </div>
                    </div>
                    

                    <div class="header-right">
                        <div class="header-dropdown-link">
                            <div class="dropdown cart-dropdown">
                                
                            </div>
                            

                            <div class="dropdown cart-dropdown">
                                 
                                <a href="{{route('cart')}}" class="dropdown-toggle">
                                    <i class="icon-shopping-cart"></i>
                                    <span class="cart-txt">Cart</span>
                                </a>
                            </div>
                            <div class="dropdown cart-dropdown">
                                @auth('customerauth')
                                <a href="{{route('customer.profile')}}" class="dropdown-toggle" >
                                    <i class="icon-user"></i>
                                    <span class="cart-txt">User</span>
                                </a>
                                @else
                                    <a href="#signin-modal" data-toggle="modal" class="dropdown-toggle">
                                        <i class="icon-user"></i>
                                    <span class="cart-txt">Login/Register</span>
                                    </a>
                                @endauth
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="header-bottom sticky-header">
                <div class="container">
                    <div class="header-left">
                        @yield('computer')
                        
                    </div>
                    <div class="header-center">
                        <nav class="main-nav">
                            <ul class="menu sf-arrows">
                                <li class="{{ Request::is('/') ? 'active' : '' }}">
                                    <a href="{{route('site')}}">Home</a>  
                                </li>
                                <li class="{{ Request::is('shop') ? 'active' : '' }}">
                                    <a href="{{route('shop')}}">Shop</a>
                                </li>
                                <li class="{{ Request::is('category*') ? 'active' : '' }}">
                                    <a href="{{route('category')}}">Category</a>
                                </li>
                                <li class="{{ Request::is('offer*') ? 'active' : '' }}">
                                    <a href="{{route('offer')}}">Offer</a>
                                </li>
                                <li class="{{ Request::is('campaign*') ? 'active' : '' }}">
                                    <a href="{{route('campaign')}}">Campaign</a>
                                </li>
                                <li class="{{ Request::is('contact*') ? 'active' : '' }}">
                                    <a href="{{route('contact')}}">Contact</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </header>



        <main class="main">
            @yield('content')
        </main>

        <footer class="footer footer-2">
            <div class="footer-middle border-0">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 col-lg-4">
                            <div class="widget widget-about">
                                <img src="{{asset('frontend/assets/images/demos/demo-13/logo-footer.png')}}" class="footer-logo" alt="Footer Logo" width="105" height="25">
                                <p>Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus. </p>
                                
                                <div class="info-about-info">
                                    <div class="info">
                                        <h4 class="info-title">Contact us</h4>
                                        <ul class="info-list">
                                            <li><i class="icon-map-marker"></i><span>House # 85/2, Road # 4, Mohommadia Housing Limited, Mohommadpur., Dhaka, Bangladesh</span></li>
                                            <li><i class="icon-phone"></i><span>01303523442</span></li>
                                            <li><i class="icon-envelope"></i><span>nugortech@gmail.com</span></li>
                                        </ul>
                                    </div>
                                </div><!-- End .widget-about-info -->
                            </div><!-- End .widget about-widget -->
                        </div><!-- End .col-sm-12 col-lg-3 -->

                        <div class="col-sm-12 col-xl-8">
                            <div class="row">
                                <div class="col-sm-4 col-lg-3">
                                    <div class="widget">
                                        <h4 class="widget-title">Our company</h4>
        
                                        <ul class="widget-list">
                                            <li><a href="{{ route('about') }}">About us</a></li>
                                            <li><a href="{{route('contact')}}">Contact us</a></li>
                                            <li><a href="{{ route('privacy.policy') }}">Privacy policy</a></li>
                                            <li><a href="{{ route('terms') }}">Terms & condition</a></li>
                                            {{-- <li><a href="help.html">Help</a></li> --}}
                                            
                                        </ul>
                                    </div>
                                </div>
                                {{-- <div class="col-sm-4 col-lg-3">
                                    <div class="widget">
                                        <h4 class="widget-title">Customer care</h4>
        
                                        <ul class="widget-list">
                                            
                                            <li><a href="refund.html">Return & refund policy</a></li>
                                            <li><a href="login.html">Sign in</a></li>
                                            <li><a href="contact.html"> Online Service Support</a></li>
                                        </ul>
                                    </div>
                                </div>  --}}
                                <div class="col-sm-4 col-lg-3">
                                    <div class="widget">
                                        <h4 class="widget-title">Category</h4>
        
                                        <ul class="widget-list">
                                            @foreach ($categorys->take(6) as $category)
                                            <li><a href="{{route('category.one', $category->id)}}">{{ $category->category_name }}</a></li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-6">
                                    <div class="widget">
                                        <h4 class="widget-title text-center">Download <br> our app</h4>
                                        <div class="scanner-sec-web-vvrsn d-flex flex-column text-center justify-content-center align-items-center">
                                            <img width="120px" height="120px" src="{{asset('frontend/assets/images/footer-scanner-img.61e9b10f.png')}}" alt="online shop">
                                            <h5>Scan Me</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="ecommerce-web-versionn-footer-ssubscribe-section">
                                        <form action="">
                                            <span class="ecommerce-web-versionn-subscrive-txt">Subscribe Us:</span><input type="search" placeholder="Enter your email address..." value="">
                                            <span class="footer-ssubscribe-web-btn">
                                                <button type="button">
                                                    Subscribe <span><i class="fas fa-angle-right"></i></span>
                                                </button>
                                            </span>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- End .footer-middle -->

            <div class="footer-bottom">
                <div class="container">
                    <p class="footer-copyright d-flex align-items-center justify-content-center">Copyright © 2023 Nugortechit All Rights Reserved.</p><!-- End .footer-copyright -->

                    <div class="social-icons social-icons-color">
                        <img src="{{ asset('frontend') }}/assets/images/banks/american-exp-icon.c7707ddc.svg" alt="">
                        <img src="{{ asset('frontend') }}/assets/images/banks/bkash-web-icon.ba1df71e.svg" alt="">
                        <img src="{{ asset('frontend') }}/assets/images/banks/master-card-web-icon.9b77b344.svg" alt="">
                        <img src="{{ asset('frontend') }}/assets/images/banks/nagad-web-icon.744cf6d2.svg" alt="">
                        <img src="{{ asset('frontend') }}/assets/images/banks/visa-card-web-icon.d5e63dd1.svg" alt="">
                    </div><!-- End .soial-icons -->

                    <div class="social-icons social-icons-color">
                        <span class="social-label">Follow us</span>
                        <a href="#" class="social-icon social-facebook" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
                        <a href="#" class="social-icon social-twitter" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
                        <a href="#" class="social-icon social-instagram" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
                        <a href="#" class="social-icon social-youtube" title="Youtube" target="_blank"><i class="icon-youtube"></i></a>
                        <a href="#" class="social-icon social-pinterest" title="Pinterest" target="_blank"><i class="icon-pinterest"></i></a>
                    </div><!-- End .soial-icons -->
                </div>
            </div><!-- End .footer-bottom -->
        </footer><!-- End .footer -->

        
    </div><!-- End .page-wrapper -->
    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>

    <!-- Mobile Menu -->
    <div class="mobile-menu-overlay"></div><!-- End .mobil-menu-overlay -->

    <div class="mobile-menu-container mobile-menu-light">
        <div class="mobile-menu-wrapper">
            <span class="mobile-menu-close"><i class="icon-close"></i></span>
            
            {{-- <form action="#" method="get" class="mobile-search"> --}}
                {{-- <label for="mobile-search" class="sr-only">Search</label> --}}
                {{-- <input type="search" class="form-control" name="mobile-search" id="mobile-search" placeholder="Search in..." required> --}}
                {{-- <input type="search" class="form-control" name="q"  id="search_input" placeholder="Search product ..." required value="{{@$_GET['q']}}"> --}}
                {{-- <button class="btn btn-primary" type="submit"><i class="icon-search"></i></button> --}}
                
                <form action="{{ route('shop') }}" method="get">
                    <label for="search_input" class="sr-only">Search</label>
                    <input type="search" class="form-control" name="q" id="search_input" placeholder="Search product ..." required value="{{ @$_GET['q'] }}">
                    <!-- Add other form input elements (category, color, size, brand, sort) here -->
                    <button id="search_btn" class="btn btn-primary" type="submit"><i class="icon-search"></i></button>
                </form>
            {{-- </form> --}}

            <ul class="nav nav-pills-mobile nav-border-anim" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="mobile-menu-link" data-toggle="tab" href="#mobile-menu-tab" role="tab" aria-controls="mobile-menu-tab" aria-selected="true">Menu</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="mobile-cats-link" data-toggle="tab" href="#mobile-cats-tab" role="tab" aria-controls="mobile-cats-tab" aria-selected="false">Categories</a>
                </li>
            </ul>

            <div class="tab-content">
                <div class="tab-pane fade show active" id="mobile-menu-tab" role="tabpanel" aria-labelledby="mobile-menu-link">
                    <nav class="mobile-nav">
                        <ul class="mobile-menu">
                            <li class="{{ Request::is('/') ? 'active' : '' }}">
                                <a href="{{route('site')}}">Home</a>  
                            </li>
                            <li class="{{ Request::is('shop') ? 'active' : '' }}">
                                <a href="{{route('shop')}}">Shop</a>
                            </li>
                            <li class="{{ Request::is('category*') ? 'active' : '' }}">
                                <a href="{{route('category')}}">Category</a>
                            </li> 
                            <li class="{{ Request::is('offer*') ? 'active' : '' }}">
                                <a href="{{route('offer')}}">Offer</a>
                            </li>
                            <li class="{{ Request::is('campaign*') ? 'active' : '' }}">
                                <a href="{{route('campaign')}}">Campaign</a>
                            </li>
                            <li class="{{ Request::is('contact*') ? 'active' : '' }}">
                                <a href="{{route('contact')}}">Contact</a>
                            </li>
                        </ul>
                    </nav><!-- End .mobile-nav -->
                </div>
                <div class="tab-pane fade" id="mobile-cats-tab" role="tabpanel" aria-labelledby="mobile-cats-link">
                    <nav class="mobile-cats-nav">
                        @yield('mobile')
                    </nav>
                </div>
            </div><!-- End .tab-content -->

            <div class="social-icons">
                <a href="#" class="social-icon" target="_blank" title="Facebook"><i class="icon-facebook-f"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Twitter"><i class="icon-twitter"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Instagram"><i class="icon-instagram"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Youtube"><i class="icon-youtube"></i></a>
            </div><!-- End .social-icons -->
        </div><!-- End .mobile-menu-wrapper -->
    </div><!-- End .mobile-menu-container -->

    <!-- Sign in / Register Modal -->
    <div class="modal fade" id="signin-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="icon-close"></i></span>
                    </button>

                    <div class="form-box">
                        <div class="form-tab">
                            <ul class="nav nav-pills nav-fill nav-border-anim" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="signin-tab" data-toggle="tab" href="#signin" role="tab" aria-controls="signin" aria-selected="true">Sign In</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="register-tab" data-toggle="tab" href="#register" role="tab" aria-controls="register" aria-selected="false">Register</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="tab-content-5">
                                <div class="tab-pane fade show active" id="signin" role="tabpanel" aria-labelledby="signin-tab">
                                    <form action="{{route('customer.auth.login')}}" method="POST">
                                        @csrf
                                        <div class="form-group">
                                            <label for="singin-email">Email address *</label>
                                            <input type="email" name="customer_email_signin" class="form-control" id="singin-email" name="singin-email" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="singin-password">Password *</label>
                                            <input type="password" name="customer_password_signin" class="form-control" id="singin-password" name="singin-password" required>
                                        </div>

                                        <div class="form-footer">
                                            <button type="submit" class="btn btn-outline-primary-2">
                                                <span>LOG IN</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </button>
                                            {{-- <a href="#" class="forgot-link">Forgot Your Password?</a> --}}
                                        </div>
                                    </form>
                                    {{-- <div class="form-choice">
                                        <p class="text-center">or sign in with</p>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <a href="#" class="btn btn-login btn-g">
                                                    <i class="icon-google"></i>
                                                    Login With Google
                                                </a>
                                            </div><!-- End .col-6 -->
                                            <div class="col-sm-6">
                                                <a href="#" class="btn btn-login btn-f">
                                                    <i class="icon-facebook-f"></i>
                                                    Login With Facebook
                                                </a>
                                            </div><!-- End .col-6 -->
                                        </div>
                                    </div><!-- End .form-choice --> --}}
                                </div>
                                <div class="tab-pane fade" id="register" role="tabpanel" aria-labelledby="register-tab">
                                    <form action="{{route('customer.auth.register')}}" method="POST">
                                        @csrf
                                        <div class="form-group">
                                            <label for="register-name">Your username *</label>
                                            <input type="text" name="customer_name_reg" class="form-control" id="register-name" name="register-name" required>
                                            @error('customer_name_reg')
                                                <strong class="text-danger">{{ $message }}</strong>
                                            @enderror
                                        </div>

                                        <div class="form-group">
                                            <label for="register-email">Your email address *</label>
                                            <input type="email" name="customer_email_reg" class="form-control" id="register-email" name="register-email" required>
                                            @error('customer_email_reg')
                                                <strong class="text-danger">{{ $message }}</strong>
                                            @enderror
                                        </div>

                                        <div class="form-group">
                                            <label for="register-password">Password *</label>
                                            <input type="password" name="customer_password_reg" class="form-control" id="register-password" name="register-password" required>
                                            @error('customer_password_reg')
                                                <strong class="text-danger">{{ $message }}</strong>
                                            @enderror
                                        </div>
                                        
                                        <div class="form-group">
                                            <label for="register-confirm-password">Confirm password *</label>
                                            <input type="password" name="customer_password_reg_confirmation" class="form-control" id="register-confirm-password" name="register-confirm-password" required>
                                        </div>

                                        <div class="form-footer">
                                            <button type="submit" class="btn btn-outline-primary-2">
                                                <span>SIGN UP</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </button>

                                            {{-- <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="register-policy" required>
                                                <label class="custom-control-label" for="register-policy">I agree to the <a href="#">privacy policy</a> *</label>
                                            </div> --}}
                                        </div>
                                    </form>
                                    {{-- <div class="form-choice">
                                        <p class="text-center">or sign in with</p>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <a href="{{ route('login.google') }}" class="btn btn-login btn-g">
                                                    <i class="icon-google"></i>
                                                    Login With Google
                                                </a>
                                            </div><!-- End .col-6 -->
                                            <div class="col-sm-6">
                                                <a href="#" class="btn btn-login  btn-f">
                                                    <i class="icon-facebook-f"></i>
                                                    Login With Facebook
                                                </a>
                                            </div><!-- End .col-6 -->
                                        </div>
                                    </div><!-- End .form-choice --> --}}
                                </div>
                            </div><!-- End .tab-content -->
                        </div><!-- End .form-tab -->
                    </div><!-- End .form-box -->
                </div><!-- End .modal-body -->
            </div><!-- End .modal-content -->
        </div><!-- End .modal-dialog -->
    </div><!-- End .modal -->

    <section class="mobile_bar">
        <div class="dropdown cart-dropdown">
            <div class="mobile_bar_item" >
                <a href="{{ url('/')}}" class="dropdown-toggle">
                    <i class="icon-home"></i>
                </a>
            </div>
            <div class="mobile_bar_item">
                <a href="{{route('campaign')}}" class="dropdown-toggle">
                    <i class="icon-gift"></i>
                </a>
            </div>
            <div class="mobile_bar_item" >
                <a href="{{route('cart')}}" class="dropdown-toggle">
                    <i class="icon-shopping-cart"></i>
                </a>
            </div>
            <div class="mobile_bar_item" >
                @auth('customerauth')                  
                    <a href="{{route('customer.profile')}}" class="dropdown-toggle"><i class="icon-user"></i></a>
                    @else
                    <a href="#signin-modal" data-toggle="modal" class="dropdown-toggle"><i class="icon-user"></i></a>
                @endauth
            </div>
          
        </div>
    </section>

    {{-- Quicview --}}
    <!-- <div class="container newsletter-popup-container mfp-hide" id="newsletter-popup-form">
        <div class="row justify-content-center">
            <div class="col-10">
                <div class="row no-gutters bg-white newsletter-popup-content">
                    <div class="col-xl-3-5col col-lg-7 banner-content-wrap">
                        <div class="banner-content text-center">
                            <img src="assets/images/popup/newsletter/logo.png" class="logo" alt="logo" width="60" height="15">
                            <h2 class="banner-title">get <span>25<light>%</light></span> off</h2>
                            <p>Subscribe to the Molla eCommerce newsletter to receive timely updates from your favorite products.</p>
                            <form action="#">
                                <div class="input-group input-group-round">
                                    <input type="email" class="form-control form-control-white" placeholder="Your Email Address" aria-label="Email Adress" required>
                                    <div class="input-group-append">
                                        <button class="btn" type="submit"><span>go</span></button>
                                    </div>
                                </div>
                            </form>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="register-policy-2" required>
                                <label class="custom-control-label" for="register-policy-2">Do not show this popup again</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2-5col col-lg-5 ">
                        <img src="assets/images/popup/newsletter/img-1.jpg" class="newsletter-img" alt="newsletter">
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <!-- Plugins JS File -->
    <script src="{{asset('frontend/assets/js/jquery.min.js')}}"></script>
    <script src="{{asset('frontend/assets/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{asset('frontend/assets/js/jquery.hoverIntent.min.js')}}"></script>
    <script src="{{asset('frontend/assets/js/jquery.waypoints.min.js')}}"></script>
    <script src="{{asset('frontend/assets/js/superfish.min.js')}}"></script>
    <script src="{{asset('frontend/assets/js/owl.carousel.min.js')}}"></script>
    <script src="{{asset('frontend/assets/js/bootstrap-input-spinner.js')}}"></script>
    <script src="{{asset('frontend/assets/js/jquery.elevateZoom.min.js')}}"></script>
    <script src="{{asset('frontend/assets/js/bootstrap-input-spinner.js')}}"></script>
    <script src="{{asset('frontend/assets/js/jquery.magnific-popup.min.js')}}"></script>
    <script src="{{asset('frontend/assets/js/jquery.plugin.min.js')}}"></script>
    <script src="{{asset('frontend/assets/js/jquery.countdown.min.js')}}"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
    
    {{-- <script src="{{asset('frontend/js/wNumb.js')}}"></script> --}}
    {{-- <script src="{{asset('frontend/js/nouislider.min.js')}}"></script> --}}
    {{-- <script src="{{asset('frontend/assets/js/wNumb.js')}}"></script> --}}
    {{-- <script src="{{asset('frontend/assets/js/nouislider.min.js')}}"></script> --}}
    
    <!-- Main JS File -->
    <script src="{{asset('frontend/assets/js/demos/demo-13.js')}}"></script>
    <script src="{{asset('frontend/assets/js/main.js')}}"></script>
    


    @yield('footer_script')

    @if (session('success'))
        {
        <script>
            const Toast = Swal.mixin({
                toast: true,
                position: 'top-end',
                showConfirmButton: false,
                timer: 3000,
                customClass: 'swal-height',
                timerProgressBar: true,
                didOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer)
                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                }
            })

            Toast.fire({
                icon: 'success',
                title: '{{ session('success') }}',
            })
        </script>
        }
    @endif
    @if (session('error'))
        {
        <script>
            const Toast = Swal.mixin({
                toast: true,
                position: 'top-end',
                showConfirmButton: false,
                customClass: 'swal-height',
                timer: 3000,
                timerProgressBar: true,
                didOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer)
                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                }
            })

            Toast.fire({
                icon: 'error',
                title: '{{ session('error') }}',
            })
        </script>
        }
    @endif

    {{-- product quick view --}}
        {{-- <script>
            $(document).on('click', '.btn-quickview', function(e) {
                var id = $(this).attr("id");
                $.ajax({
                    url: "{{url("/product-quick-view")}}/"+id,
                    type: 'get',
                    success: function(data) {
                        $(".quickView-container").html(data);
                    }
                })
            }) 
        </script> --}}

        {{-- <script>
            $('.color_control').change(function(e) {
                e.preventDefault();
                var color_id = $(this).val();
                var product_id = '{{$product->id}}';
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
    
                $.ajax({
                    url: '/get_size',
                    type: 'POST',
                    data: {
                        'color_id': color_id,
                        'product_id': product_id
                    },
                    success: function(data) {
                        $('#size_Id').html(data)
                    }
                })
            })
        </script> --}}

        {{-- <script>
            $(document).ready(function () {
            cartload();
        });

        function cartload()
        {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                url: '/load-cart-data',
                method: "GET",
                success: function (response) {
                    $('.basket-item-count').html('');
                    var parsed = jQuery.parseJSON(response)
                    var value = parsed; //Single Data Viewing
                    $('.basket-item-count').append($('<span class=".cart">'+ value['totalcart'] +'</span>'));
                }
            });
        }

        </script> --}}

        <script>
            // Add to cart
            $(document).ready(function () {
                $('.add-to-cart-btn').click(function (e) {
                    e.preventDefault();
                    $.ajaxSetup({
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        }
                    });
    
                    var product_id = $(this).closest('.product_data').find('.product_id').val();
                    var size = $(this).closest('.product_data').find('.size_id').val();
                    var color = $(this).closest('.product_data').find('.color_id').val();
                    var quantity = $(this).closest('.product_data').find('.qty-input').val();
    
                    $.ajax({
                        url: "/add-to-cart",
                        method: "POST",
                        data: {
                            'quantity': quantity,
                            'product_id': product_id,
                            'color_id': color,
                            'size_id': size,
                        },
                        success: function (response) {
                            alertify.set('notifier','position','top-right');
                            alertify.success(response.status);
                            cartload();
                            $('#load').load(location.href + ' .counted');
                        },
                    });
                });
            });
        </script>

<script>
    // Update Cart Data
    $(document).ready(function () {

    $('.changeQuantity').click(function (e) {
        e.preventDefault();
        // $.ajaxSetup({
        //     headers: {
        //         'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        //     }
        // });
        var thisClick = $(this);
        var quantity = $(this).closest(".cartpage").find('.qty-input').val();
        var product_id = $(this).closest(".cartpage").find('.product_id').val();
        var color_id = $(this).closest(".cartpage").find('.color_id').val();
        var size_id = $(this).closest(".cartpage").find('.size_id').val();
        var data = {
            '_token': $('input[name=_token]').val(),
            'quantity':quantity,
            'product_id':product_id,
            'color_id':color_id,
            'size_id':size_id,
        };

        $.ajax({
            url: '/update-to-cart',
            type: 'POST',
            data: data,
            success: function (response) {
                // window.location.reload();
                thisClick.closest(".cartpage").find('.total-col').text(response.gtprice)
                $('#totalajaxcall').load(location.href + ' .totalpricingload');
                alertify.set('notifier','position','top-right');
                alertify.success(response.status);
            }
        });
    });

});
</script>

<script>
    // Delete Cart Data
    $(document).ready(function () {

    $('.delete_cart_data').click(function (e) {
        e.preventDefault();

        var thisDeletearea = $(this);

        var product_id = $(this).closest(".cartpage").find('.product_id').val();

        var data = {
            '_token': $('input[name=_token]').val(),
            "product_id": product_id,
        };

        $(this).closest(".cartpage").remove();

        $.ajax({
            url: '/delete-from-cart',
            type: 'DELETE',
            data: data,
            success: function (response) {
                // window.location.reload();
                // thisDeletearea.closest(".cartpage")->remove();
                $('#totalajaxcall').load(location.href + ' .totalpricingload');
                alertify.set('notifier','position','top-right');
                alertify.success(response.status);
            }
        });
    });

});
</script>

<script>
    // Clear Cart Data
    $(document).ready(function () {

        $('.clear_cart').click(function (e) {
            e.preventDefault();

            $.ajax({
                url: '/clear-cart',
                type: 'GET',
                success: function (response) {
                    window.location.reload();
                    alertify.set('notifier','position','top-right');
                    alertify.success(response.status);
                }
            });

        });

    });
</script>

<script>
    $(document).ready(function() {
        $('.add_to_cart').click(function(e) {
            e.preventDefault();
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            var product_id = $(this).closest(".cartpage").find('.product_id_value').val();
            // alert(product_id);
            $.ajax({
                url: '/add_single_cart',
                type: 'POST',
                data: {
                    'product_id': product_id,
                },
                success: function (response) {
                    if(response.error_status == 'error') {
                        alertify.set('notifier', 'position', 'top-right');
                        alertify.success(response.status);
                    } else {
                        alertify.set('notifier','position','top-right');
                        alertify.success(response.status);
                        cartload();
                        $('#load').load(location.href + ' .counted');
                    }
                }
            })
        })
    })
</script>

<script>
    // cart store
    function addtocart() {
        // var product_id = $(this).closest(".product_data").find('.product_id').val();
        // alert(product_id);
        var product_id = $('.product_id').val();
        var color_id = $('.color_id').val();
        var size_id = $('.size_id').val();
        var quantity = $('.qty-input').val();
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            url: "/quick-to-cart",
            method: "POST",
            data: {
                'quantity': quantity,
                'product_id': product_id,
                'color_id': color_id,
                'size_id': size_id,
            },
            success: function(response) {
                alertify.set('notifier','position','top-right');
                alertify.success(response.status);
                cartload();
                $('#load').load(location.href + ' .counted');
            }
        });
    }
</script>

<script>
    $(document).ready(function() {
        $('.add_to_wishlist').click(function(e) {
            e.preventDefault();
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            var product_id = $(this).closest(".cartpage").find('.product_id_value').val();
            $.ajax({
                url: '/add-wishlist',
                type: 'POST',
                data: {
                    'product_id': product_id,
                },
                success: function (response) {
                    // if(response.error_status == 'error') {
                        alertify.set('notifier', 'position', 'top-right');
                        alertify.success(response.status);
                    // } else {
                    //     alertify.set('notifier','position','top-right');
                    //     alertify.success(response.status);
                    //     cartload();
                    //     $('#load').load(location.href + ' .counted');
                    // }
                }
            })
        })
    })
</script>

<script>
    $('#search_btn').click(function() {
    var search_input = $('#search_input').val();
    var category_id = $('input[class="category_id"]:checked').attr('value');
    var color_id = $('input[class="color_id"]:checked').attr('value');
    var size_id = $('input[class="size_id"]:checked').attr('value');
    var brand_id = $('input[class="brand_id"]:checked').attr('value');
    var sort = $('#sort').val();
    var link = "{{ route('shop') }}" + "?q=" + search_input + "&category_id=" + category_id + "&color_id=" + color_id + "&size_id=" + size_id + "&brand_id=" + brand_id + "&sort=" + sort;
    window.location.href = link;
});
    $('#search_btn').click(function(){
        var search_input = $('#search_input').val();
        var category_id = $('input[class="category_id"]:checked').attr('value');
        var color_id = $('input[class="color_id"]:checked').attr('value');
        var size_id = $('input[class="size_id"]:checked').attr('value');
        var brand_id = $('input[class="brand_id"]:checked').attr('value');
        var sort = $('#sort').val();
        var link = "{{route('shop')}}" + "?q=" + search_input + "&category_id=" + category_id + "&color_id=" + color_id + "&size_id=" + size_id + "&brand_id=" + brand_id + "&sort="+sort;
        window.location.href = link;
	})
    $('.category_id').click(function() {
        var search_input = $('#search_input').val();
        var category_id = $('input[class="category_id"]:checked').attr('value');
        var color_id = $('input[class="color_id"]:checked').attr('value');
        var size_id = $('input[class="size_id"]:checked').attr('value');
        var brand_id = $('input[class="brand_id"]:checked').attr('value');
        var sort = $('#sort').val();
        var link = "{{route('shop')}}" + "?q=" + search_input + "&category_id=" + category_id + "&color_id=" + color_id + "&size_id=" + size_id + "&brand_id=" + brand_id + "&sort="+sort;
        window.location.href = link;
    })
    $('.color_id').click(function() {
        var search_input = $('#search_input').val();
        var category_id = $('input[class="category_id"]:checked').attr('value');
        var color_id = $('input[class="color_id"]:checked').attr('value');
        var size_id = $('input[class="size_id"]:checked').attr('value');
        var brand_id = $('input[class="brand_id"]:checked').attr('value');
        var sort = $('#sort').val();
        var link = "{{route('shop')}}" + "?q=" + search_input + "&category_id=" + category_id + "&color_id=" + color_id + "&size_id=" + size_id + "&brand_id=" + brand_id + "&sort="+sort;
        window.location.href = link;
    })
    $('.size_id').click(function() {
        var search_input = $('#search_input').val();
        var category_id = $('input[class="category_id"]:checked').attr('value');
        var color_id = $('input[class="color_id"]:checked').attr('value');
        var size_id = $('input[class="size_id"]:checked').attr('value');
        var brand_id = $('input[class="brand_id"]:checked').attr('value');
        var sort = $('#sort').val();
        var link = "{{route('shop')}}" + "?q=" + search_input + "&category_id=" + category_id + "&color_id=" + color_id + "&size_id=" + size_id + "&brand_id=" + brand_id + "&sort="+sort;
        window.location.href = link;
    })
    $('.brand_id').click(function() {
        var search_input = $('#search_input').val();
        var category_id = $('input[class="category_id"]:checked').attr('value');
        var color_id = $('input[class="color_id"]:checked').attr('value');
        var size_id = $('input[class="size_id"]:checked').attr('value');
        var brand_id = $('input[class="brand_id"]:checked').attr('value');
        var sort = $('#sort').val();
        var link = "{{route('shop')}}" + "?q=" + search_input + "&category_id=" + category_id + "&color_id=" + color_id + "&size_id=" + size_id + "&brand_id=" + brand_id + "&sort="+sort;
        window.location.href = link;
    })
    $('#sort').change(function() {
        var search_input = $('#search_input').val();
        var category_id = $('input[class="category_id"]:checked').attr('value');
        var color_id = $('input[class="color_id"]:checked').attr('value');
        var size_id = $('input[class="size_id"]:checked').attr('value');
        var brand_id = $('input[class="brand_id"]:checked').attr('value');
        var sort = $('#sort').val();
        var link = "{{route('shop')}}" + "?q=" + search_input + "&category_id=" + category_id + "&color_id=" + color_id + "&size_id=" + size_id + "&brand_id=" + brand_id + "&sort="+sort;
        window.location.href = link;
    })
</script>




{{-- <script>
    function changecolor() {
        var color_id = $('.color_id option:selected').val();
        var productt_id = '{{$product->id}}';
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            url: '/quick_get_size',
            type: 'POST',
            data: {
                'color_id': color_id,
                'product_id': productt_id
            },
            success: function(data) {
                alert(data);
                console.log(data);
            }
        })
    }
</script> --}}
</body>


<!-- molla/index-13.html  22 Nov 2019 09:59:31 GMT -->
</html>