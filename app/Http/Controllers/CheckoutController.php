<?php

namespace App\Http\Controllers;

use App\Mail\InvoiceMail;
use App\Models\Billingdetails;
use App\Models\Cart;
use App\Models\Category;
use App\Models\Coupon;
use App\Models\Inventory;
use App\Models\Order;
use App\Models\OrderProduct;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Mail;

class CheckoutController extends Controller
{
    //checkout
    function checkout() {
        $categories = Category::all();
        $cookie_data = stripslashes(Cookie::get('shopping_cart'));
        $cart_data = json_decode($cookie_data, true);
        return view('frontend.checkout.checkout', [
            'categories'=> $categories,
            'cart_data'=> $cart_data,
        ]);
    }

    

    // order_store
    function order_store(Request $request) {
        // print_r($request->all());
        // die();
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'mobile' => 'required',
            'address' => 'required',
            'payment_method' => 'required',
        ]);
        if(Auth::guard('customerauth')->id()) {
            if($request->payment_method == 1) {

                if(Coupon::where('coupon_name', $request->coupon)->exists()) {
                    $coupon = Coupon::where('coupon_name', $request->coupon)->first()->get();
                    $coupon_price = $coupon->first()->coupon_amount;
                } else {
                    $coupon_price = 0;
                }
                $cookie_data = stripslashes(Cookie::get('shopping_cart'));
                $cart_data = json_decode($cookie_data, true);
                $cookie_data = stripslashes(Cookie::get('shopping_cart'));
                $cart_data = json_decode($cookie_data, true);
                $order_id = '#'.'ORDER'.'-'.rand(10000, 99999);
                
                Billingdetails::insert([
                    'order_id' => $order_id,
                    'customer_id' => Auth::guard('customerauth')->id(),
                    'name' => $request->name,
                    'email' => $request->email,
                    'mobile' => $request->mobile,
                    'address' => $request->address,
                    'notes' => $request->notes,
                    'created_at' => Carbon::now(),
                ]);

                OrderProduct::insert([
                    'order_id' => $order_id,
                    'customer_id' => Auth::guard('customerauth')->id(),
                    'charge' => $request->charge,
                    'coupon_price' => $coupon_price,
                    'payment_method' => $request->payment_method,
                    'created_at' => Carbon::now(),
                ]);

                $items_in_cart = $cart_data;
                foreach($items_in_cart as $key=>$itemdata) {
                    Order::create([
                        'order_id' => $order_id,
                        'customer_id' => Auth::guard('customerauth')->id(),
                        'product_id' => $itemdata['item_id'],
                        'quantity' => $itemdata['item_quantity'],
                        'color_id' => $itemdata['item_color'],
                        'size_id' => $itemdata['item_size'],
                        'price' => $itemdata['item_price'],
                        'charge' => $request->charge,
                        'coupon_price' => $coupon_price,
                        'created_at' => Carbon::now(),
                    ]);
                    Inventory::where('product_id', $itemdata['item_id'])->where('color_id', $itemdata['item_color'])->where('size_id', $itemdata['item_size'])->decrement('quantity', $itemdata['item_quantity']);
                }

                // card delete
                Cookie::queue(Cookie::forget('shopping_cart'));

                Mail::to($request->email)->send(new InvoiceMail($order_id));

                // return redirect()->route('order.success')->withSuccess("Order has been placed successfully")->withOrder($order_id);
                return redirect()->route('order.success')->with([
                    'order_id'=>$order_id,
                ]);
        
            } else if($request->payment_method == 2) {
                if(Coupon::where('coupon_name', $request->coupon)->exists()) {
                    $coupon = Coupon::where('coupon_name', $request->coupon)->first()->get();
                    $coupon_price = $coupon->first()->coupon_amount;
                } else {
                    $coupon_price = 0;
                }
                $cookie_data = stripslashes(Cookie::get('shopping_cart'));
                $cart_data = json_decode($cookie_data, true);
                $cookie_data = stripslashes(Cookie::get('shopping_cart'));
                $cart_data = json_decode($cookie_data, true);
                $order_id = '#'.'ORDER'.'-'.rand(10000, 99999);
                
                Billingdetails::insert([
                    'order_id' => $order_id,
                    'customer_id' => Auth::guard('customerauth')->id(),
                    'name' => $request->name,
                    'email' => $request->email,
                    'mobile' => $request->mobile,
                    'address' => $request->address,
                    'tran_number' => $request->tran_number,
                    'tran_id' => $request->tran_id,
                    'notes' => $request->notes,
                    'created_at' => Carbon::now(),
                ]);

                OrderProduct::insert([
                    'order_id' => $order_id,
                    'customer_id' => Auth::guard('customerauth')->id(),
                    'charge' => $request->charge,
                    'coupon_price' => $coupon_price,
                    'tran_number' => $request->tran_number,
                    'tran_id' => $request->tran_id,
                    'payment_method' => $request->payment_method,
                    'created_at' => Carbon::now(),
                ]);

                $items_in_cart = $cart_data;
                foreach($items_in_cart as $key=>$itemdata) {
                    Order::create([
                        'order_id' => $order_id,
                        'customer_id' => Auth::guard('customerauth')->id(),
                        'product_id' => $itemdata['item_id'],
                        'quantity' => $itemdata['item_quantity'],
                        'color_id' => $itemdata['item_color'],
                        'size_id' => $itemdata['item_size'],
                        'price' => $itemdata['item_price'],
                        'created_at' => Carbon::now(),
                    ]);
                    Inventory::where('product_id', $itemdata['item_id'])->where('color_id', $itemdata['item_color'])->where('size_id', $itemdata['item_size'])->decrement('quantity', $itemdata['item_quantity']);
                }
                Cookie::queue(Cookie::forget('shopping_cart'));

                Mail::to($request->email)->send(new InvoiceMail($order_id));

                // return redirect()->route('order.success')->withSuccess("Order has been placed successfully")->withOrder($order_id);
                return redirect()->route('order.success')->with([
                    'order_id'=>$order_id,
                ]);
            }
        } else {
            if($request->payment_method == 1) {
                $cookie_data = stripslashes(Cookie::get('shopping_cart'));
                $cart_data = json_decode($cookie_data, true);
                $items_in_cart = $cart_data;
                // $item = Inventory::where('product_id', $items_in_cart[0]['item_id'])->get();
                // echo '<pre>';
                // dd($item);
                // dd($item);
                // Inventory::where('product_id', $itemdata['item_id'])->where('color_id', $itemdata['item_color'])->where('size_id', $itemdata['item_size'])->decrement('quantity', $itemdata['item_quantity']);
                // die();

                if(Coupon::where('coupon_name', $request->coupon)->exists()) {
                    $coupon = Coupon::where('coupon_name', $request->coupon)->first()->get();
                    $coupon_price = $coupon->first()->coupon_amount;
                } else {
                    $coupon_price = 0;
                }
                $cookie_data = stripslashes(Cookie::get('shopping_cart'));
                $cart_data = json_decode($cookie_data, true);
                $cookie_data = stripslashes(Cookie::get('shopping_cart'));
                $cart_data = json_decode($cookie_data, true);
                $order_id = '#'.'ORDER'.'-'.rand(10000, 99999);
                
                Billingdetails::insert([
                    'order_id' => $order_id,
                    'customer_id' => str_replace(" ", "", $request->name).'-'.rand(1000, 9999),
                    'name' => $request->name,
                    'email' => $request->email,
                    'mobile' => $request->mobile,
                    'address' => $request->address,
                    'notes' => $request->notes,
                    'created_at' => Carbon::now(),
                ]);

                OrderProduct::insert([
                    'order_id' => $order_id,
                    'customer_id' => str_replace(" ", "", $request->name).'-'.rand(1000, 9999),
                    'charge' => $request->charge,
                    'coupon_price' => $coupon_price,
                    'payment_method' => $request->payment_method,
                    'created_at' => Carbon::now(),
                ]);

                $items_in_cart = $cart_data;
                foreach($items_in_cart as $key=>$itemdata) {
                    Order::create([
                        'order_id' => $order_id,
                        'customer_id' => str_replace(" ", "", $request->name).'-'.rand(1000, 9999),
                        'product_id' => $itemdata['item_id'],
                        'quantity' => $itemdata['item_quantity'],
                        'color_id' => $itemdata['item_color'],
                        'size_id' => $itemdata['item_size'],
                        'price' => $itemdata['item_price'],
                        'created_at' => Carbon::now(),
                    ]);
                    Inventory::where('product_id', $itemdata['item_id'])->where('color_id', $itemdata['item_color'])->where('size_id', $itemdata['item_size'])->decrement('quantity', $itemdata['item_quantity']);
                }
                // Cookie::queue(Cookie::forget('shopping_cart'));
                Cookie::queue(Cookie::forget('shopping_cart'));

                Mail::to($request->email)->send(new InvoiceMail($order_id));

                return redirect()->route('order.success')->withSuccess("Order has been placed successfully")->withOrder($order_id);
        
            } else if($request->payment_method == 2) {
                $request->validate([
                    'tran_number' => 'required',
                    'tran_id' => 'required',
                ]);
                if(Coupon::where('coupon_name', $request->coupon)->exists()) {
                    $coupon = Coupon::where('coupon_name', $request->coupon)->first()->get();
                    $coupon_price = $coupon->first()->coupon_amount;
                } else {
                    $coupon_price = 0;
                }
                $cookie_data = stripslashes(Cookie::get('shopping_cart'));
                $cart_data = json_decode($cookie_data, true);
                $cookie_data = stripslashes(Cookie::get('shopping_cart'));
                $cart_data = json_decode($cookie_data, true);
                $order_id = '#'.'ORDER'.'-'.rand(10000, 99999);
                
                Billingdetails::insert([
                    'order_id' => $order_id,
                    'customer_id' => Auth::guard('customerauth')->id(),
                    'name' => $request->name,
                    'email' => $request->email,
                    'mobile' => $request->mobile,
                    'address' => $request->address,
                    'notes' => $request->notes,
                    'tran_number' => $request->tran_number,
                    'tran_id' => $request->tran_id,
                    'created_at' => Carbon::now(),
                ]);

                OrderProduct::insert([
                    'order_id' => $order_id,
                    'customer_id' => Auth::guard('customerauth')->id(),
                    'charge' => $request->charge,
                    'coupon_price' => $coupon_price,
                    'payment_method' => $request->payment_method,
                    'tran_number' => $request->tran_number,
                    'tran_id' => $request->tran_id,
                    'created_at' => Carbon::now(),
                ]);

                $items_in_cart = $cart_data;
                foreach($items_in_cart as $key=>$itemdata) {
                    Order::create([
                        'order_id' => $order_id,
                        'customer_id' => Auth::guard('customerauth')->id(),
                        'product_id' => $itemdata['item_id'],
                        'quantity' => $itemdata['item_quantity'],
                        'color_id' => $itemdata['item_color'],
                        'size_id' => $itemdata['item_size'],
                        'price' => $itemdata['item_price'],
                        'created_at' => Carbon::now(),
                    ]);
                    Inventory::where('product_id', $itemdata['item_id'])->where('color_id', $itemdata['item_color'])->where('size_id', $itemdata['item_size'])->decrement('quantity', $itemdata['item_quantity']);
                }
                Cookie::queue(Cookie::forget('shopping_cart'));

                Mail::to($request->email)->send(new InvoiceMail($order_id));

                return redirect()->route('order.success')->with([
                    'order_id'=>$order_id,
                ]);
            }
        }

        // return back()->with('success', 'order has been placed successfully');
    }

    // // order_success
    function order_success() {
        return view('frontend.checkout.order_success');
        if(session('order_id')) {
            $order_id = session('order_id');
            return view('frontend.order.order_success', [
                'order_id' => $order_id,
            ]);
        } else {
            abort('404');
        }
        // if(session('order_id')){
        //     return view('frontend.checkout.order_success');
        // }
        // else{
        //     abort(404);
        // }
        
    }
}
