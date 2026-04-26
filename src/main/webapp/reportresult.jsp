<!DOCTYPE html>
<html>
<head>
    <title>Report Criteria</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Arial, sans-serif;
            background: linear-gradient(135deg, #f7971e, #ffd200);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background: #ffffff;
            padding: 35px 40px;
            border-radius: 15px;
            box-shadow: 0px 10px 30px rgba(0,0,0,0.25);
            width: 340px;
            animation: fadeIn 0.6s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0 15px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            transition: 0.3s;
            font-size: 14px;
        }

        input[type="text"]:focus {
            border-color: #f7971e;
            outline: none;
            box-shadow: 0 0 8px rgba(247,151,30,0.6);
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #ff512f, #dd2476);
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
            letter-spacing: 1px;
        }

        input[type="submit"]:hover {
            transform: scale(1.05);
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