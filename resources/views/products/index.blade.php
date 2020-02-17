@extends('layouts.app')

@section('content')

<div class="container">
  <div class="card">
    <div class="card-header">Products</div>
    <div class="card-body">
      <table class="table">
        <thead>
          <th>Name</th>
          <th>Image</th>
          <th>Price</th>
          <th>Edit</th>
          <th>Delete</th>
        </thead>

        <tbody>
          @foreach ($products as $product)
          <tr>
            <td>{{$product->name}} </td>
            <td><img src="{{asset('storage/'.$product->image)}}" width="80px" height="80px" alt=""></td>
            <td>{{$product->price}} Nrs.</td>
            <td> <a href="{{ route('products.edit', $product->id)}}" class="btn btn-info btn-sm">Edit</a></td>
            <td>
              <form action="{{ route('products.destroy', $product->id) }}" method="POST">
                <button class="btn btn-danger btn-sm">
                  @method('DELETE')

                  @csrf
                  Delete
                </button>
              </form>
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
  </div>
</div> @endsection