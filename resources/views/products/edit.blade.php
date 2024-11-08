@extends('layouts.app')

@section('content')
    <h1>Edit Product</h1>

    <form action="{{ route('products.update', $product->id) }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT') 

        <div>
            <label for="product_id">Product ID</label><br>
            <input type="text" name="product_id" id="product_id" value="{{ old('product_id', $product->product_id) }}" required>
        </div>
        <div>
            <label for="name">Name</label><br>
            <input type="text" name="name" id="name" value="{{ old('name', $product->name) }}" required>
        </div>
        <div>
            <label for="description">Description</label><br>
            <textarea name="description" id="description">{{ old('description', $product->description) }}</textarea>
        </div>
        <div>
            <label for="price">Price</label><br>
            <input type="text" name="price" id="price" value="{{ old('price', $product->price) }}" required>
        </div>
        <div>
            <label for="stock">Stock</label><br>
            <input type="number" name="stock" id="stock" value="{{ old('stock', $product->stock) }}">
        </div>
        <div>
            <label for="image">Update image
            @if ($product->image)
                <div>
                    <img src="{{ asset('storage/' . $product->image) }}" alt="Product Image" width="100">                   
                </div>
            @endif
            </label>
            <input type="file" name="image" id="image">
        </div>
        <div>
            <button class="submit" type="submit">Update Product</button>
        </div>
    </form>
   
@endsection