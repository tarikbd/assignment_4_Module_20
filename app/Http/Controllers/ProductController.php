<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    public function home(){
        return view ('layouts.app');
    }
    /**
     * Display a listing of the resource.
     */
    // Display all products with pagination and sorting
   public function index(Request $request)
   {
       $query = Product::query();

       // Search by product_id or description
       if ($request->has('search')) {
           $search = $request->search;
           $query->where('product_id', 'like', "%{$search}%")
                 ->orWhere('description', 'like', "%{$search}%");
       }

       // Sorting by name or price
       if ($request->has('sort_by')) {
           $sortBy = $request->sort_by;
           $sortOrder = $request->has('sort_order') ? $request->sort_order : 'asc';
           $query->orderBy($sortBy, $sortOrder);
       }

       // Pagination
       $products = $query->simplePaginate(10);

       return view('products.index', compact('products'));
   }

    /**
     * Show the form for creating a new resource.
     */
    // Show the form to create a new product
   public function create()
   {
       return view('products.create');
   }

    /**
     * Store a newly created resource in storage.
     */
    // Store a new product
   public function store(Request $request)
   {
       $request->validate([
           'product_id' => 'required|unique:products',
           'name' => 'required',
           'price' => 'required|numeric',
           'stock' => 'nullable|integer',
           'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048'
       ]);

       $data = $request->all();

       // Handle file upload
       if ($request->hasFile('image')) {
           $data['image'] = $request->file('image')->store('images', 'public');
       }

       Product::create($data);

       return redirect()->route('products.index')->with('success', 'Product created successfully!');
   }

    /**
     * Display the specified resource.
     */
    public function show(string $id)   
   {
       $product = Product::findOrFail($id);
       return view('products.show', compact('product'));
   }

    /**
     * Show the form for editing the specified resource.
     */
    // Show the form to edit a product
   public function edit(string $id)
   {
       $product = Product::findOrFail($id);
       return view('products.edit', compact('product'));
   }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $product = Product::findOrFail($id);

        $request->validate([
            'name' => 'required',
            'price' => 'required|numeric',
            'stock' => 'nullable|integer',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048'
        ]);
 
        $data = $request->all();
 
        // Handle file upload
        if ($request->hasFile('image')) {
            if ($product->image) {
                Storage::delete('public/' . $product->image);
            }
            $data['image'] = $request->file('image')->store('images', 'public');
        }
 
        $product->update($data);
 
        return redirect()->route('products.index')->with('success', 'Product updated successfully!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $product = Product::findOrFail($id);

        // Delete image if it exists
        if ($product->image) {
            Storage::delete('public/' . $product->image);
        }
 
        $product->delete();
 
        return redirect()->route('products.index')->with('success', 'Product deleted successfully!');
    }
}
