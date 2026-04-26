<!DOCTYPE html>
<html>
<head>
    <title>Add Marks</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background: white;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0px 8px 25px rgba(0,0,0,0.2);
            width: 320px;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        input[type="text"],
        input[type="date"] {
            width: 100%;
            padding: 8px;
            margin: 8px 0 15px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
            transition: 0.3s;
        }

        input[type="text"]:focus,
        input[type="date"]:focus {
            border-color: #2575fc;
            outline: none;
            box-shadow: 0 0 5px rgba(37,117,252,0.5);
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background: linear-gradient(135deg, #ff7e5f, #feb47b);
            border: none;
            border-radius: 6px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background: linear-gradient(135deg, #43cea2, #185a9d);
        }

        label {
            font-weight: bold;
            color: #444;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Add Student Marks</h2>

    <form action="addMark" method="post">
        ID: <input type="text" name="id"><br>
        Name: <input type="text" name="name"><br>
        Subject: <input type="text" name="subject"><br>
        Marks: <input type="text" name="marks"><br>
        Date: <input type="date" name="date"><br>
        <input type="submit" value="Add">
    </form>

</div>

</body>
</html>