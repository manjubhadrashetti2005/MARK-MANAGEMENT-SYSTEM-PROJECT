<!DOCTYPE html>
<html>
<head>
    <title>Display Marks</title>
    <style>
        body {
            margin: 0;
            padding: 20px;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #00c6ff, #0072ff);
        }

        .table-container {
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0px 8px 25px rgba(0,0,0,0.2);
            max-width: 900px;
            margin: auto;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            overflow: hidden;
            border-radius: 10px;
        }

        th {
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
            padding: 12px;
            text-align: center;
        }

        td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {
            background-color: #f1f7ff;
            transition: 0.3s;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .no-data {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="table-container">
    <h2>Student Marks Report</h2>

    <%@ page import="java.util.*,com.model.*" %>

    <table border="1">
    <tr>
    <th>ID</th><th>Name</th><th>Subject</th><th>Marks</th><th>Date</th>
    </tr>

    <%
    List<StudentMark> list = (List<StudentMark>)request.getAttribute("list");

    if(list != null){
        for(StudentMark s : list){
    %>
    <tr>
    <td><%=s.getStudentID()%></td>
    <td><%=s.getStudentName()%></td>
    <td><%=s.getSubject()%></td>
    <td><%=s.getMarks()%></td>
    <td><%=s.getExamDate()%></td>
    </tr>
    <%
        }
    } else {
    %>
    <tr><td colspan="5" class="no-data">No Data Found</td></tr>
    <%
    }
    %>

    </table>

</div>

</body>
</html>