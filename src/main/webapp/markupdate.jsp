<!DOCTYPE html>
<html>
<head>
    <title>Update Marks</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #11998e, #38ef7d);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background: #ffffff;
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
            border-color: #11998e;
            outline: none;
            box-shadow: 0 0 5px rgba(17,153,142,0.5);
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background: linear-gradient(135deg, #ff9966, #ff5e62);
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
    <h2>Update Student Marks</h2>

    <form action="UpdateMarkServlet" method="post">
    ID:<input name="id"><br>
    Name:<input name="name"><br>
    Subject:<input name="subject"><br>
    Marks:<input name="marks"><br>
    Date:<input type="date" name="date"><br>
    <input type="submit">
    </form>

</div>

</body>
</html>