package com.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.Date;

import com.dao.MarkDAO;
import com.model.StudentMark;

@WebServlet("/addMark")
public class AddMarkServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        try {
            // Get parameters
            String idStr = req.getParameter("id");
            String name = req.getParameter("name");
            String subject = req.getParameter("subject");
            String marksStr = req.getParameter("marks");
            String dateStr = req.getParameter("date");

            // Validation
            if (idStr == null || name == null || subject == null || marksStr == null || dateStr == null ||
                idStr.isEmpty() || name.isEmpty() || subject.isEmpty() || marksStr.isEmpty() || dateStr.isEmpty()) {

                out.println("<h3>All fields are required!</h3>");
                return;
            }

            int id = Integer.parseInt(idStr);
            int marks = Integer.parseInt(marksStr);

            // Date conversion
            Date date = Date.valueOf(dateStr);

            // Marks validation
            if (marks < 0 || marks > 100) {
                out.println("<h3>Marks must be between 0 and 100</h3>");
                return;
            }

            // Create object
            StudentMark s = new StudentMark(id, name, subject, marks, date);

            // DAO call
            MarkDAO dao = new MarkDAO();
            boolean result = dao.insert(s);

            // Success / Failure handling
            if (result) {
                res.sendRedirect("DisplayMarksServlet");
            } else {
                out.println("<h3>Insert failed!</h3>");
            }

        } catch (NumberFormatException e) {
            out.println("<h3>ID and Marks must be valid numbers!</h3>");
        } catch (Exception e) {
            e.printStackTrace(); // console
            out.println("<h3>ERROR: " + e.getMessage() + "</h3>"); // show real error
        }
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.sendRedirect("markadd.jsp");
    }
}