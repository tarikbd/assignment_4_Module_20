
@extends('layouts.app')

@section('content')

    <h1>Product List</h1>
    
    <form class="searchForm" action="{{ route('products.index') }}" method="GET">
        <input type="text" name="search" placeholder="Search by product ID or description" value="{{ request('search') }}">
        <button class="submit" type="submit">Search</button>
    </form>
    <div class="sortbar">
        <a href="{{ route('products.index', ['sort_by' => 'name', 'sort_order' => 'asc']) }}">Sort by Name (Asc)</a> | 
        <a href="{{ route('products.index', ['sort_by' => 'name', 'sort_order' => 'desc']) }}">Sort by Name (Desc)</a> | 
        <a href="{{ route('products.index', ['sort_by' => 'price', 'sort_order' => 'asc']) }}">Sort by Price (Asc)</a> | 
        <a href="{{ route('products.index', ['sort_by' => 'price', 'sort_order' => 'desc']) }}">Sort by Price (Desc)</a>
    </div>
    
    <table>
        <thead>
            <tr>
                <th>Product ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Stock</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($products as $product)
                <tr>
                    <td>{{ $product->product_id }}</td>
                    <td>{{ $product->name }}</td>
                    <td>{{ $product->description }}</td>
                    <td>{{ $product->price }}</td>
                    <td>{{ $product->stock }}</td>
                    <td>
                        <a href="{{ route('products.show', $product->id) }}">View</a> |
                        <a href="{{ route('products.edit', $product->id) }}">Edit</a> |
                        <form action="{{ route('products.destroy', $product->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    {{ $products->links() }}

@endsection