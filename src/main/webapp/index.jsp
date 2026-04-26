<!DOCTYPE html>
<html>
<head>
<title>Mark Management System</title>

<!-- Google Icons -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #4facfe, #00f2fe);
        text-align: center;
        margin: 0;
        padding: 0;
    }

    h2 {
        color: white;
        padding: 20px;
        font-size: 32px;
    }

    .container {
        background: white;
        width: 300px;
        margin: auto;
        padding: 20px;
        border-radius: 15px;
        box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    }

    a {
        display: block;
        margin: 10px 0;
        padding: 10px;
        text-decoration: none;
        color: white;
        border-radius: 8px;
        font-size: 18px;
        transition: 0.3s;
    }

    a:hover {
        transform: scale(1.05);
    }

    .add { background: #28a745; }
    .update { background: #ffc107; color: black; }
    .delete { background: #dc3545; }
    .display { background: #007bff; }
    .report { background: #6f42c1; }

    .material-icons {
        vertical-align: middle;
        margin-right: 8px;
    }
</style>

</head>

<body>

<h2>Mark Management System</h2>

<div class="container">

    <a href="markadd.jsp" class="add">
        <span class="material-icons">add_circle</span> Add
    </a>

    <a href="markupdate.jsp" class="update">
        <span class="material-icons">edit</span> Update
    </a>

    <a href="markdelete.jsp" class="delete">
        <span class="material-icons">delete</span> Delete
    </a>

    <a href="DisplayMarksServlet" class="display">
        <span class="material-icons">visibility</span> Display
    </a>

    <a href="ReportCriteriaServlet" class="report">
        <span class="material-icons">assessment</span> Reports
    </a>

</div>

</body>
</html>