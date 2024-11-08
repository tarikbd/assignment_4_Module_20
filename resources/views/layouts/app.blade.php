<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Management</title>
    
    <style>        
        ul {margin-left:-40px}
        ul li{list-style-type:none;display:inline-block;margin-right:15px;border-radius:30px;border:1px solid #fff;padding:7px 15px;background:#c2c2c2;margin-left:0}
        ul li:hover{background:white;border:1px solid black;cursor:pointer;transition-duration: 0.3s;transition-timing-function: linear;transition-delay:0.2s}
        ul li a:hover{color:black}
        header, main, footer{margin:50px 100px}
        ul li a{text-decoration:none}
        .searchForm{margin-bottom:15px}
        .sortbar{margin-bottom:15px}
        table th,td{border:1px solid black;padding:5px 10px;text-align:center}
        td a{text-decoration:none}        
        input,textarea{margin-top:5px;margin-bottom:15px;padding:6px;width:300px}  
        .img{margin-top:20px}
        input[type="file"]{display:none}
        .custom-btn{padding:8px;border:1px solid #c2c2c2;background:#f0f0f0;border-radius:8px;margin-top:50px}        
        .submit{margin-top:30px;padding:6px 15px}
    </style>    
</head>
<body>

    <header>
        <h1>Product Management System</h1>
        <nav>
            <ul>
                <li><a href="{{ route('layouts.app') }}">Home</a></li>
                <li><a href="{{ route('products.index') }}">Product List</a></li>
                <li><a href="{{ route('products.create') }}">Add Products</a></li>
            </ul>
        </nav>
    </header>

    <main>
        @yield('content')
    </main>

    <footer>
        <p>&copy; 2024 Product Management System</p>
    </footer>
</body>
</html>