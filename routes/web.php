<?php

use App\Http\Controllers\bannerContoller;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\BuyController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\ColorController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\CouponController;
use App\Http\Controllers\CustomerAuthController;
use App\Http\Controllers\DetailsController;
use App\Http\Controllers\FrontendController;
use App\Http\Controllers\orderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\ShopController;
use App\Http\Controllers\SizeController;
use App\Http\Controllers\SocialShareButtonsController;
use App\Http\Controllers\TermsconditionController;
use App\Http\Controllers\TimerController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\WishlistController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/', [FrontendController::class, 'home'])->name('site');
Route::get('/product/quick/view/{product_id}', [FrontendController::class, 'product_quick_view'])->name('product_quick_view');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


// User
Route::get('/user/profile', [UserController::class, 'profile'])->name('profile');
Route::post('/user/profile/update', [UserController::class, 'profile_update'])->name('profile.update');
Route::get('/user/list', [UserController::class, 'users'])->name('users');
Route::get('/user/delete/{user_id}', [UserController::class, 'user_delete'])->name('user.delete');
Route::post('/user/register', [UserController::class, 'user_register'])->name('user.register');
// Route::get('/user/edit/{user_id}', [UserController::class, 'user_edit'])->name('user.edit');
Route::post('/user/update', [UserController::class, 'user_update'])->name('user.update');
Route::post('/editUser', [UserController::class, 'editUser'])->name('editUser');

// Category
Route::get('/category/add', [CategoryController::class, 'category_add'])->name('category.add');
Route::get('/category/list', [CategoryController::class, 'category_list'])->name('category.list');
Route::post('/category/store', [CategoryController::class, 'category_store'])->name('category.store');
Route::get('/category/edit/{category_id}', [CategoryController::class, 'category_edit'])->name('category.edit');
Route::get('/category/delete/{category_id}', [CategoryController::class, 'category_delete'])->name('category.delete');
Route::post('/category/update/', [CategoryController::class, 'category_update'])->name('category.update');

// banner
Route::get('/banner/add', [bannerContoller::class, 'banner_add'])->name('banner.add');
Route::get('/banner/list', [bannerContoller::class, 'banner_list'])->name('banner.list');
Route::post('/banner/store', [bannerContoller::class, 'banner_store'])->name('banner.store');
Route::get('/banner/edit/{banner_id}', [bannerContoller::class, 'banner_edit'])->name('banner.edit');
Route::get('/banner/delete/{banner_id}', [bannerContoller::class, 'banner_delete'])->name('banner.delete');
Route::post('/banner/update/', [bannerContoller::class, 'banner_update'])->name('banner.update');


// Color
Route::get('/color/add', [ColorController::class, 'color_add'])->name('color.add');
Route::post('/color/store', [ColorController::class, 'color_store'])->name('color.store');
Route::get('/color/list', [ColorController::class, 'color_list'])->name('color.list');
Route::get('/color/delete/{color_id}', [ColorController::class, 'color_delete'])->name('color.delete');

// Size
Route::get('/size/add', [SizeController::class, 'size_add'])->name('size.add');
Route::post('/size/store', [SizeController::class, 'size_store'])->name('size.store');
Route::get('/size/list', [SizeController::class, 'size_list'])->name('size.list');
Route::get('/size/delete/{size_id}', [SizeController::class, 'size_delete'])->name('size.delete');

// Brand
Route::get('/brand/add', [BrandController::class, 'brand_add'])->name('brand.add');
Route::post('/brand/store', [BrandController::class, 'brand_store'])->name('brand.store');
Route::get('/brand/list', [BrandController::class, 'brand_list'])->name('brand.list');
Route::get('/brand/delete/{brand_id}', [BrandController::class, 'brand_delete'])->name('brand.delete');
Route::get('/brand/edit/{brand_id}', [BrandController::class, 'brand_edit'])->name('brand.edit');
Route::post('/brand/update', [BrandController::class, 'brand_update'])->name('brand.update');

// Product
Route::get('/product/add', [ProductController::class, 'product_add'])->name('product.add');
Route::post('/product/store', [ProductController::class, 'product_store'])->name('product.store');
Route::get('/product/list', [ProductController::class, 'product_list'])->name('product.list');
Route::get('/product/delete/{product_id}', [ProductController::class, 'product_delete'])->name('product.delete');
Route::get('/product/edit/{product_id}', [ProductController::class, 'product_edit'])->name('product.edit');
Route::post('/product/update', [ProductController::class, 'product_update'])->name('product.update');

// order
Route::get('/order/list', [orderController::class, 'order_list'])->name('order.list');
Route::post('/order/delivere', [orderController::class, 'order_delivere'])->name('order.delivere');
Route::get('/order/delete/{order_id}', [orderController::class, 'order_delete'])->name('order.delete');
Route::get('/order/details/{order_id}', [orderController::class, 'order_details'])->name('order.details');
Route::post('/product/update', [orderController::class, 'product_update'])->name('order.update');

// terms policy
Route::get('/terms/condition', [TermsconditionController::class, 'terms_condition'])->name('terms.condition');
Route::get('/terms/privacy/policy', [TermsconditionController::class, 'terms_privacy_policy'])->name('terms.privacy.policy');
Route::post('/terms/conditions/update/{id}', [TermsconditionController::class, 'terms_conditions_update'])->name('terms.conditions.update');
Route::post('/privacy/policy/update/{id}', [TermsconditionController::class, 'privacy_policy_update'])->name('privacy.policy.update');

// Product timer
Route::get('/timer/add', [TimerController::class, 'timer_add'])->name('timer.add');
Route::post('/timer/store', [TimerController::class, 'timer_store'])->name('timer.store');


// Role management system
Route::get('/role/add', [RoleController::class, 'role'])->name('role');
Route::post('/permission/store', [RoleController::class, 'perimission_store'])->name('permission.store');

/******* Frontend start here *********/
// category
Route::get('/category/single/{category_id}', [FrontendController::class, 'category_one'])->name('category.one');
Route::get('/category', [FrontendController::class, 'category_two'])->name('category');

Route::get('/privacy/policy', [FrontendController::class, 'privacy_policy'])->name('privacy.policy');
Route::get('/terms', [FrontendController::class, 'terms'])->name('terms');
Route::get('/about', [FrontendController::class, 'about'])->name('about');


// offer
Route::get('/offer', [FrontendController::class, 'offer'])->name('offer');

// campaign
Route::get('/campaign', [FrontendController::class, 'campaign'])->name('campaign');

// Customer authentication
Route::post('/customer/auth/register', [CustomerAuthController::class, 'customer_auth_register'])->name('customer.auth.register');
Route::post('/customer/auth/login', [CustomerAuthController::class, 'customer_auth_login'])->name('customer.auth.login');
Route::get('/customer/auth/logout', [CustomerAuthController::class, 'customer_auth_logout'])->name('customer.logout');
Route::get('/customer/profile', [CustomerAuthController::class, 'customer_profile'])->name('customer.profile');
Route::post('/customer/profile/update', [CustomerAuthController::class, 'customer_profile_update'])->name('customer.profile.update');
Route::get('/order/cancel/{id}', [CustomerAuthController::class, 'order_cancel'])->name('order.cancel');
Route::get('/order/view/{order_id}', [CustomerAuthController::class, 'order_view'])->name('order.view');

// Product details 
Route::get('/product/details/{slug}', [DetailsController::class, 'product_details'])->name('product.details');
Route::post('/get_size', [DetailsController::class, 'getSize']);
Route::post('/quick_get_size', [DetailsController::class, 'quick_get_size']);


// Cart
Route::post('/add-to-cart', [CartController::class, 'cart_store']);
Route::post('/quick-to-cart', [CartController::class, 'quick_cart_store']);
Route::get('/cart', [CartController::class, 'cart'])->name('cart');
Route::get('/load-cart-data', [CartController::class, 'cartloadbyajax']);
Route::post('/update-to-cart', [CartController::class, 'update_cart']);
Route::delete('/delete-from-cart', [CartController::class, 'delete_from_cart']);
Route::get('/clear-cart', [CartController::class, 'clear_cart']);
Route::post('/add_single_cart', [CartController::class, 'cart_single_store']);


// Buy 
// Route::post('/buy/now/store', [BuyController::class, 'buy_now_store'])->route('buy.now.store');


// Checkout
Route::get('/checkout', [CheckoutController::class, 'checkout'])->name('checkout');


// Order
Route::post('/order/store', [CheckoutController::class, 'order_store'])->name('order.store');
Route::get('/order/success', [CheckoutController::class, 'order_success'])->name('order.success');

// Coupon
Route::get('/coupon/add', [CouponController::class, 'coupon_add'])->name('coupon.add');
Route::get('/coupon/delete/{coupon_id}', [CouponController::class, 'coupon_delete'])->name('coupon.delete');
Route::get('/coupon/edit/{coupon_id}', [CouponController::class, 'coupon_edit'])->name('coupon.edit');
Route::get('/coupon/list', [CouponController::class, 'coupon_list'])->name('coupon.list');
Route::post('/coupon/store', [CouponController::class, 'coupon_store'])->name('coupon.store');
Route::post('/coupon/update', [CouponController::class, 'coupon_update'])->name('coupon.update');
Route::post('/check-coupon-code', [CouponController::class, 'check_coupon_code']);


// Wishlist
Route::post('/add-wishlist', [WishlistController::class, 'add_wishlist']);
Route::get('/wishlist', [WishlistController::class, 'wishlist'])->name('wishlist');
Route::delete('/delete-from-wishlist', [WishlistController::class, 'delete_from_wishlist']);
Route::post('/wishlist-to-cart', [WishlistController::class, 'wishlist_to_cart']);
Route::get('/wishlist/clear', [WishlistController::class, 'wishlist_clear'])->name('wishlist.clear');


// Buy
Route::post('/buy/store', [BuyController::class, 'buy_store'])->name('buy.store');
Route::post('/quick/buy/store', [BuyController::class, 'quick_buy_store'])->name('quick.buy.store');


// Shop
Route::get('/shop', [ShopController::class, 'shop'])->name('shop');
Route::post('/shop/filter', [ShopController::class, 'shop_filter'])->name('shop.filter');

// Contact
Route::get('/contact', [ContactController::class, 'contact'])->name('contact');
Route::post('/contact/message', [ContactController::class, 'contact_message'])->name('contact.message');
Route::get('/contact/list', [ContactController::class, 'contact_list'])->name('contact.list');
Route::get('/contact/message/delete/{message_id}', [ContactController::class, 'contact_message_delete'])->name('contact.message.delete');
Route::post('/contactMessage', [ContactController::class, 'contactMessage']);
Route::get('/contact/delete/all', [ContactController::class, 'contact_delete_all'])->name('contact.delete.all');
Route::get('/contact/info', [ContactController::class, 'contact_info'])->name('contact.info');
Route::post('/contact/info/store', [ContactController::class, 'contact_info_store'])->name('contact.info.store');
Route::get('/contact/info/list', [ContactController::class, 'contact_info_list'])->name('contact.info.list');
Route::get('/contact/info/delete/{contact_id}', [ContactController::class, 'contact_info_delete'])->name('contact.info.delete');
Route::get('/contact/info/edit/{contact_id}', [ContactController::class, 'contact_info_edit'])->name('contact.info.edit');
Route::post('/contact/info/update', [ContactController::class, 'contact_info_update'])->name('contact.info.update');
Route::get('/contact/info/status/{status_id}', [ContactController::class, 'contact_info_status'])->name('contact.info.status');
// Route::get('/contact/message', [ContactController::class, 'contact_message'])->name('contact.message');


Route::get('/login/google', [CustomerAuthController::class, 'redirectToGoogle'])->name('login.google');
Route::get('/login/google/callback', [CustomerAuthController::class, 'handleGoogleCallback']);
