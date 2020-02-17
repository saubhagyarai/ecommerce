<?php

namespace App\Http\Controllers;

use Session;
use Mail;
use Cart;
use Stripe\Charge;
use Stripe\Stripe;
use Illuminate\Http\Request;

class CheckoutController extends Controller
{
    public function index()
    {
        if (Cart::content()->count() == 0) {
            Session::flash('info', 'Your cart is still empty, add some items');
            return redirect()->back();
        }
        return view('checkout');
    }

    public function pay()
    {
        // dd(request()->all());

        Stripe::setApiKey("sk_test_ODd8MeyqFeFjqmK3vE9VJ7Yi00bGjNCqjJ");

        $token = request()->stripeToken;

        $charge = Charge::create([
            'amount' => Cart::total() * 100,

            'currency' => 'usd',
            'description' => 'E-commerce by sau',
            'source' => request()->stripeToken
        ]);

        Session::flash('success', 'Purchase successfull. wait for the email.');

        Cart::destroy();
        Mail::to(request()->stripeEmail)->send(new \App\Mail\PurchaseSuccessful);
        return redirect('/');
    }
}
