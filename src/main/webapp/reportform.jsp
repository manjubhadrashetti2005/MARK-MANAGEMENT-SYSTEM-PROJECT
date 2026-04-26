<!DOCTYPE html>
<html>
<head>
    <title>Report Criteria</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #f7971e, #ffd200);
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

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin: 8px 0 15px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
            transition: 0.3s;
        }

        input[type="text"]:focus {
            border-color: #f7971e;
            outline: none;
            box-shadow: 0 0 5px rgba(247,151,30,0.5);
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background: linear-gradient(135deg, #ff512f, #dd2476);
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
    <h2>Generate Report</h2>

    <form action="ReportServlet" method="post">
    Marks Above:<input name="marks"><br>
    Subject:<input name="subject"><br>
    Top N:<input name="top"><br>
    <input type="submit">
    </form>

</div>

</body>
</html>