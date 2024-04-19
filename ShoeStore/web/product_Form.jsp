<%-- 
    Document   : product_Form
    Created on : Apr 18, 2024, 12:00:50 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Form</title>
 <script>
        function addSizeOption(selectElement, sizeValue) {
            var option = document.createElement("option");
            option.text = sizeValue;
            option.value = sizeValue;
            selectElement.appendChild(option);
        }

        function handleCategorySelection() {
            var category = document.querySelector('input[name="category"]:checked');
            if (category) {
                var categoryValue = category.value;
                var sizeSelect = document.getElementById("size");
                sizeSelect.innerHTML = "";

                if (categoryValue === 'kids') {
                    addSizeOption(sizeSelect, "");
                    addSizeOption(sizeSelect, "17");
                    addSizeOption(sizeSelect, "20");
                    addSizeOption(sizeSelect, "22");
                    addSizeOption(sizeSelect, "24");
                    addSizeOption(sizeSelect, "28");
                    addSizeOption(sizeSelect, "32");
                    addSizeOption(sizeSelect, "36");
                } else if (categoryValue === 'men') {
                    addSizeOption(sizeSelect, "");
                    addSizeOption(sizeSelect, "38");
                    addSizeOption(sizeSelect, "39");
                    addSizeOption(sizeSelect, "40");
                    addSizeOption(sizeSelect, "41");
                    addSizeOption(sizeSelect, "42");
                    addSizeOption(sizeSelect, "43");
                    addSizeOption(sizeSelect, "44");
                } else if (categoryValue === 'women') {
                    addSizeOption(sizeSelect, "");
                    addSizeOption(sizeSelect, "35");
                    addSizeOption(sizeSelect, "36");
                    addSizeOption(sizeSelect, "37");
                    addSizeOption(sizeSelect, "38");
                    addSizeOption(sizeSelect, "39");
                    addSizeOption(sizeSelect, "40");
                    addSizeOption(sizeSelect, "41");
                }else if (categoryValue === 'new1') {
                addSizeOption(sizeSelect, "");
                addSizeOption(sizeSelect, "17");
                addSizeOption(sizeSelect, "20");
                addSizeOption(sizeSelect, "22");
                addSizeOption(sizeSelect, "24");
                addSizeOption(sizeSelect, "28");
                addSizeOption(sizeSelect, "32");
                addSizeOption(sizeSelect, "34");
                addSizeOption(sizeSelect, "35");
                addSizeOption(sizeSelect, "36");
                addSizeOption(sizeSelect, "37");
                addSizeOption(sizeSelect, "38");
                addSizeOption(sizeSelect, "39");
                addSizeOption(sizeSelect, "40");
                addSizeOption(sizeSelect, "41");
                addSizeOption(sizeSelect, "42");
                addSizeOption(sizeSelect, "43");
                addSizeOption(sizeSelect, "44");
                addSizeOption(sizeSelect, "45");
            }else if (categoryValue === 'sale') {
               addSizeOption(sizeSelect, "");
                addSizeOption(sizeSelect, "17");
                addSizeOption(sizeSelect, "20");
                addSizeOption(sizeSelect, "22");
                addSizeOption(sizeSelect, "24");
                addSizeOption(sizeSelect, "28");
                addSizeOption(sizeSelect, "32");
                addSizeOption(sizeSelect, "34");
                addSizeOption(sizeSelect, "35");
                addSizeOption(sizeSelect, "36");
                addSizeOption(sizeSelect, "37");
                addSizeOption(sizeSelect, "38");
                addSizeOption(sizeSelect, "39");
                addSizeOption(sizeSelect, "40");
                addSizeOption(sizeSelect, "41");
                addSizeOption(sizeSelect, "42");
                addSizeOption(sizeSelect, "43");
                addSizeOption(sizeSelect, "44");
                addSizeOption(sizeSelect, "45");
            }
            }
        }

        function handleSizeSelection() {
            var sizeSelect = document.getElementById("size");
            var selectedSize = sizeSelect.options[sizeSelect.selectedIndex].value;
            console.log("Selected size: " + selectedSize);
        }
    </script>

        
     <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0efe1;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color:#f5f1d7;
            border-radius: 20px;
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
            border-radius: 20px;
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
        <form action="addProduct" method="Post" enctype="multipart/form-data">
            <label for="id">ID:</label>
            <input type="text" id="id" name="id" required>
            
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="category">Category:</label>
            <div>
                <input type="radio" id="category_kids" name="category" value="kids" onclick="handleCategorySelection()" required>
                <label for="category_kids">Kids</label>
                
                <input type="radio" id="category_men" name="category" value="men" onclick="handleCategorySelection()" required>
                <label for="category_men">Men</label>
                
                <input type="radio" id="category_women" name="category" value="women" onclick="handleCategorySelection()" required>
                <label for="category_women">Women</label>
                
                <input type="radio" id="category_new1" name="category" value="new1" onclick="handleCategorySelection()" required>
                <label for="category_new1">New Arrivals</label>
                
                 <input type="radio" id="category_sale" name="category" value="sale" onclick="handleCategorySelection()" required>
                <label for="category_sale">Sale</label>
                
                
            </div>
            
            <label for="description">Description:</label>
            <textarea id="description" name="description" rows="4" cols="50" required></textarea>
            
            <label for="price">Price:</label>
            <input type="text" id="price" name="price" required>
            
            <label for="quantity">Quantity:</label>
            <input type="text" id="quantity" name="quantity" required>
            
            <label for="size">Size:</label>
            <select id="size" name="size" >
                <option value="" onchange="handleCategorySelection()">Select Size</option>
            </select>
            <label><!-- comment --></label>
            <label for="image">Image:</label>
            <input type="file" id="image" name="image" required>
            
            <input type="submit" value="Submit">
        </form>
        <br>
    </div>
</body>
</html>
