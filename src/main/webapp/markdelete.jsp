<!DOCTYPE html>
<html>
<head>
    <title>Delete Marks</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #ff4e50, #f9d423);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background: #fff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0px 8px 25px rgba(0,0,0,0.2);
            width: 300px;
            text-align: center;
        }

        .form-container h2 {
            margin-bottom: 20px;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin: 10px 0 20px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
            transition: 0.3s;
        }

        input[type="text"]:focus {
            border-color: #ff4e50;
            outline: none;
            box-shadow: 0 0 5px rgba(255,78,80,0.5);
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background: linear-gradient(135deg, #ff416c, #ff4b2b);
            border: none;
            border-radius: 6px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background: linear-gradient(135deg, #36d1dc, #5b86e5);
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Delete Record</h2>

    <form action="DeleteMarkServlet" method="post">
    ID:<input name="id"><br>
    <input type="submit" value="Delete">
    </form>

</div>

</body>
</html>