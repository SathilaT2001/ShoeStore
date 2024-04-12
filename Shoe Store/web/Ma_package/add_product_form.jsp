<%-- 
    Document   : add_product_form
    Created on : Apr 11, 2024, 10:11:43 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Products</title>
        
        <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 5px;
            color: #666;
        }
        input[type="text"],
        textarea {
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        textarea {
            resize: vertical;
        }
        input[type="file"] {
            margin-bottom: 20px;
        }
        input[type="submit"] {
            padding: 10px;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
        
    </head>
    <body>
        <div class="container">
        <h2>Add Product</h2>
        <form action="upload" method="post" enctype="multipart/form-data">
            <label for="id">ID:</label>
            <input type="text" id="id" name="id" required>
            
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="category">Category:</label>
            <div>
                <input type="radio" id="category_kids" name="category" value="kids" required>
                <label for="category_kids">Kids</label>
                
                <input type="radio" id="category_men" name="category" value="men" required>
                <label for="category_men">Men</label>
                
                <input type="radio" id="category_women" name="category" value="women" required>
                <label for="category_women">Women</label>
            </div>
            
            <label for="description">Description:</label>
            <textarea id="description" name="description" rows="4" cols="50" required></textarea>
            
            <label for="price">Price:</label>
            <input type="text" id="price" name="price" required>
            
            <label for="quantity">Quantity:</label>
            <input type="text" id="quantity" name="quantity" required>
            
            <label for="size">Size:</label>
            
            
            <select id="size" name="size" required>
                 <option value=""> </option>
                <option value="small">Small</option>
                <option value="medium">Medium</option>
                <option value="large">Large</option>
            </select>
            <label><!-- comment --></label>
            <label for="image">Image:</label>
            <input type="file" id="image" name="image" required>
            
            <input type="submit" value="Submit">
        </form>
    </div>
    </body>
</html>
