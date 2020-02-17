<?php

namespace App\Http\Controllers;

use App\Http\Requests\Products\CreateProductsRequest;
use App\Http\Requests\Products\UpdateProductRequest;
use Illuminate\Http\Request;
use App\Product;

class ProductsController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('products.index')->with('products', Product::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('products.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CreateProductsRequest $request)
    {
        $image = $request->image->store('products');


        Product::create([
            'name' => $request->name,
            'price' => $request->price,
            'image' => $image,
            'description' => $request->description
        ]);

        session()->flash('success', 'Product added successfully.');

        return redirect(route('products.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        return view('products.create')->with('product', $product);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateProductRequest $request, Product $product)
    {

        $data = $request->only(['name', 'price', 'description']);

        // check if new image 

        if ($request->hasFile('image')) {

            // upload it
            $image = $request->image->store('products');

            //delete old one
            $product->deleteImage;
            $data['image'] = $image;
        }



        //update attribute
        $product->update($data);

        //flash message

        session()->flash('success', 'Product updated successfully.');

        //redirect user

        return redirect(route('products.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $product->delete();

        $product->deleteImage();

        session()->flash('success', 'Category deleted successfully.');

        return redirect()->back();
    }
}
