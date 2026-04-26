<!DOCTYPE html>
<html>
<head>
<title>Reports</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #fc466b, #3f5efb);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background: white;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0px 8px 25px rgba(0,0,0,0.2);
        text-align: center;
        width: 300px;
    }

    h2 {
        color: #333;
        margin-bottom: 25px;
    }

    a {
        display: block;
        text-decoration: none;
        margin: 10px 0;
        padding: 10px;
        border-radius: 6px;
        font-weight: bold;
        transition: 0.3s;
    }

    a:first-of-type {
        background: linear-gradient(135deg, #43cea2, #185a9d);
        color: white;
    }

    a:first-of-type:hover {
        background: linear-gradient(135deg, #ff7e5f, #feb47b);
    }

    a:last-of-type {
        background: #eee;
        color: #333;
    }

    a:last-of-type:hover {
        background: #ddd;
    }
</style>

</head>
<body>

<div class="container">

<h2>Reports Module</h2>

<a href="ReportCriteriaServlet">Generate Reports</a>

<br><br>
<a href="index.jsp">Back to Home</a>

</div>

</body>
</html>