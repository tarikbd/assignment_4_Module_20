@extends('layouts.app')

@section('content')
    <h1>Product Details</h1>

    <div>
        <strong>Product ID:</strong> {{ $product->product_id }}
    </div>
    <div>
        <strong>Name:</strong> {{ $product->name }}
    </div>
    <div>
        <strong>Description:</strong> {{ $product->description ?? 'No description available.' }}
    </div>
    <div>
        <strong>Price:</strong> ${{ number_format($product->price, 2) }}
    </div>
    <div>
        <strong>Stock:</strong> {{ $product->stock ?? 'Not specified' }}
    </div>

    @if ($product->image)
        <div>
            <strong>Image:</strong><br>
            <img src="{{ asset('storage/' . $product->image) }}" alt="{{ $product->name }}" width="100">
        </div>
    @else
        <div><strong>Image:</strong> No image available</div>
    @endif
    
@endsection