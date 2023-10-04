<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Inventory;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;

class CartController extends Controller
{
    // cart
    function cart() {
        $categories = Category::all();
        $cookie_data = stripslashes(Cookie::get('shopping_cart'));
        $cart_data = json_decode($cookie_data, true);
        // return $cart_data;
        return view('frontend.cart.cart', compact(['categories']))->with('cart_data',$cart_data);
    }
    //cart_store
    // function cart_store(Request $request) {
    //     // print_r($request->all());
    //     // die();

    //         $request->validate([
    //             'size_id' => 'required',
    //             'color_id' => 'required',
    //          ]);
        
    //     $prod_id = $request->input('product_id');
    //     $quantity = $request->input('quantity');
    //     $size_id = $request->input('size_id');
    //     $color_id = $request->input('color_id');

    //     if(Cookie::get('shopping_cart'))
    //     {
    //         $cookie_data = stripslashes(Cookie::get('shopping_cart'));
    //         $cart_data = json_decode($cookie_data, true);
    //     }
    //     else
    //     {
    //         $cart_data = array();
    //     }

    //     $item_id_list = array_column($cart_data, 'item_id');
    //     $prod_id_is_there = $prod_id;

    //     if(in_array($prod_id_is_there, $item_id_list))
    //     {
    //         foreach($cart_data as $keys => $values)
    //         {
    //             if($cart_data[$keys]["item_id"] == $prod_id)
    //             {
    //                 $cart_data[$keys]["item_quantity"] = $request->input('quantity');
    //                 $cart_data[$keys]["item_size"] = $request->input('size_id');
    //                 $cart_data[$keys]["item_color"] = $request->input('color_id');
    //                 $item_data = json_encode($cart_data);
    //                 $minutes = 60;
    //                 Cookie::queue(Cookie::make('shopping_cart', $item_data, $minutes));
    //                 return response()->json(['status'=>'"'.$cart_data[$keys]["item_name"].'" Already Added to Cart']);
    //             }
    //         }
    //     }
    //     else
    //     {
    //         $products = Product::find($prod_id);
    //         $prod_name = $products->product_name;
    //         $prod_slug = $products->slug;
    //         $prod_image = $products->preview_image;
    //         $priceval = $products->after_discount;

    //         if($products)
    //         {
    //             $item_array = array(
    //                 'item_id' => $prod_id,
    //                 'item_name' => $prod_name,
    //                 'item_quantity' => $quantity,
    //                 'item_size' => $size_id ,
    //                 'item_color' => $color_id ,
    //                 'item_price' => $priceval,
    //                 'item_image' => $prod_image,
    //                 'item_slug' => $prod_slug
    //             );
    //             $cart_data[] = $item_array;

    //             $item_data = json_encode($cart_data);
    //             $minutes = 60;
    //             Cookie::queue(Cookie::make('shopping_cart', $item_data, $minutes));
    //             return response()->json(['status'=>'"'.$prod_name.'" Added to Cart']);
    //         }
    //     }
    // }

    // // cart_load
    // function cartloadbyajax() {
    //     if(Cookie::get('shopping_cart'))
    //     {
    //         $cookie_data = stripslashes(Cookie::get('shopping_cart'));
    //         $cart_data = json_decode($cookie_data, true);
    //         $totalcart = count($cart_data);

    //         echo json_encode(array('totalcart' => $totalcart)); die;
    //         return;
    //     }
    //     else
    //     {
    //         $totalcart = "0";
    //         echo json_encode(array('totalcart' => $totalcart)); die;
    //         return;
    //     }
    // }

    // update_cart
    // function update_cart(Request $request) {
    //     $prod_id = $request->input('product_id');
    //     $quantity = $request->input('quantity');
    //     $size_id = $request->input('size_id');
    //     $color_id = $request->input('color_id');

    //     if(Cookie::get('shopping_cart'))
    //     {
    //         $cookie_data = stripslashes(Cookie::get('shopping_cart'));
    //         $cart_data = json_decode($cookie_data, true);

    //         $item_id_list = array_column($cart_data, 'item_id');
    //         $prod_id_is_there = $prod_id;

    //         if(in_array($prod_id_is_there, $item_id_list))
    //         {
    //             foreach($cart_data as $keys => $values)
    //             {
    //                 if($cart_data[$keys]["item_id"] == $prod_id)
    //                 {
    //                     $cart_data[$keys]["item_quantity"] =  $quantity;
    //                     $cart_data[$keys]["item_size"] = $size_id;
    //                     $cart_data[$keys]["item_color"] = $color_id;
    //                     $ttprice = ($cart_data[$keys]["item_price"]*$quantity);
    //                     $grandtotalprice = number_format($ttprice);
    //                     $item_data = json_encode($cart_data);
    //                     $minutes = 60;
    //                     Cookie::queue(Cookie::make('shopping_cart', $item_data, $minutes));
    //                     return response()->json([
    //                         'status'=>'"'.$cart_data[$keys]["item_name"].'" Quantity Updated',
    //                         'gtprice' => '৳ '.$grandtotalprice.''
    //                     ]);
    //                 }
    //             }
    //         }
    //     }
    // }

    function update_cart(Request $request) {
        // Validate input (e.g., product_id, quantity, size_id, color_id)
    
        $prod_id = $request->input('product_id');
        $quantity = $request->input('quantity');
        $size_id = $request->input('size_id');
        $color_id = $request->input('color_id');
    
        $cookie_data = Cookie::get('shopping_cart');
    
        if ($cookie_data) {
            $cart_data = json_decode($cookie_data, true);
    
            if (json_last_error() === JSON_ERROR_NONE) {
                $item_id_list = array_column($cart_data, 'item_id');
    
                if (in_array($prod_id, $item_id_list)) {
                    foreach ($cart_data as $keys => $values) {
                        if ($cart_data[$keys]["item_id"] == $prod_id) {
                            // Update the cart data
                            $cart_data[$keys]["item_quantity"] =  $quantity;
                            $cart_data[$keys]["item_size"] = $size_id;
                            $cart_data[$keys]["item_color"] = $color_id;
    
                            // Update and return the updated cookie
                            $item_data = json_encode($cart_data);
                            $minutes = 60;
                            Cookie::queue(Cookie::make('shopping_cart', $item_data, $minutes));
    
                            $ttprice = ($cart_data[$keys]["item_price"] * $quantity);
                            $grandtotalprice = number_format($ttprice);
    
                            return response()->json([
                                'status' => '"' . $cart_data[$keys]["item_name"] . '" Quantity Updated',
                                'gtprice' => '৳ ' . $grandtotalprice . ''
                            ]);
                        }
                    }
                } else {
                    // Handle the case where the product ID is not found in the cart
                    return response()->json(['error' => 'Product not found in the cart'], 404);
                }
            } else {
                // Handle JSON decoding error
                return response()->json(['error' => 'Invalid JSON data in the cookie'], 400);
            }
        } else {
            // Handle the case where 'shopping_cart' cookie doesn't exist
            return response()->json(['error' => 'Shopping cart cookie not found'], 404);
        }
    }


    // delete_from_cart
    function delete_from_cart(Request $request) {
        $prod_id = $request->input('product_id');

        $cookie_data = stripslashes(Cookie::get('shopping_cart'));
        $cart_data = json_decode($cookie_data, true);

        $item_id_list = array_column($cart_data, 'item_id');
        $prod_id_is_there = $prod_id;

        if(in_array($prod_id_is_there, $item_id_list))
        {
            foreach($cart_data as $keys => $values)
            {
                if($cart_data[$keys]["item_id"] == $prod_id)
                {
                    unset($cart_data[$keys]);
                    $item_data = json_encode($cart_data);
                    $minutes = 60;
                    Cookie::queue(Cookie::make('shopping_cart', $item_data, $minutes));
                    return response()->json(['status'=>'Item Removed from Cart']);
                }
            }
        }
    }

    // clear_cart
    function clear_cart() {
        Cookie::queue(Cookie::forget('shopping_cart'));
        return response()->json(['status'=>'Your Cart is Cleared']);
        return redirect()->route('site')->withSuccess('Your cart is cleared');
    }


}
