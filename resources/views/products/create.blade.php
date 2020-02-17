@extends('layouts.app')

@section('content')

<div class="container">

  <div class="card">
    <div class="card-header">
      {{ isset($product) ? 'Edit Product' : 'Add New Product' }}
    </div>
    <div class="card-body">
      @if($errors->any())
      <div class="alert alert-danger">
        <div class="list-group">
          @foreach($errors->all() as $error)
          <li class="list-group-item text-danger">
            {{$error}}
          </li>
          @endforeach
        </div>

      </div>

      @endif
      <form action="{{ isset($product) ? route('products.update', $product->id) : route('products.store') }}"
        method="POST" enctype="multipart/form-data">

        @csrf

        @if(isset($product))
        @method('PUT')
        @endif

        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" id="name" class="form-control" name="name"
            value="{{ isset($product) ? $product->name : old('name')}}">
        </div>

        <div class="form-group">
          <label for="price">Price</label>
          <input type="text" id="price" class="form-control" name="price"
            value="{{ isset($product) ? $product->price : old('price') }}">
        </div>

        @if(isset($product))
        <div class="form-group">
          <img src="{{ asset('storage/'.$product->image) }}" alt="" style="width: 100%">
        </div>
        @endif

        <div class="form-group">
          <label for="imgae">Image</label>
          <input type="file" id="image" class="form-control" name="image">
        </div>

        <div class="form-group">
          <label for="description">Description</label>
          <textarea class="form-control" name="description" id="description" cols="5"
            rows="5">{{ isset($product)? $product->description : old('description') }}</textarea>
        </div>

        <div class="form-group">
          <button type="submit"
            class="btn btn-success">{{ isset($product) ? 'Update Product' : 'Add Product' }}</button>
        </div>

      </form>
    </div>
  </div>
</div>

@endsection