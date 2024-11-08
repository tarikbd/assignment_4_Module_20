@extends('layouts.app')

@section('content')
    <h1>Create Product</h1>
    
    <form action="{{ route('products.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div>
            <label for="product_id">Product ID</label><br>
            <input type="text" id="product_id" name="product_id" required>
        </div>
        
        <div>
            <label for="name">Name</label><br>
            <input type="text" id="name" name="name" required>
        </div>
        
        <div>
            <label for="description">Description</label><br>
            <textarea id="description" name="description"></textarea>
        </div>      
        
        <div>
            <label for="price">Price</label><br>
            <input type="number" step="0.01" id="price" name="price" required>
        </div>
        <div>
            <label for="stock">Stock</label><br>
            <input type="number" name="stock" id="stock">
        </div>
        <div class="img">
            <label class="custom-btn" for="image">Upload Image</label><br>
            <input type="file" name="image" id="image"><br>
        </div>
        <div>
            <button class="submit" type="submit">Create Product</button>
        </div>
    </form>
@endsection