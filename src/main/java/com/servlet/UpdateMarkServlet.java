package com.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.Date;

import com.dao.MarkDAO;
import com.model.StudentMark;

@WebServlet("/UpdateMarkServlet")   // ⭐ IMPORTANT
public class UpdateMarkServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {

        res.setContentType("text/html");

        try {
            String idStr = req.getParameter("id");
            String name = req.getParameter("name");
            String subject = req.getParameter("subject");
            String marksStr = req.getParameter("marks");
            String dateStr = req.getParameter("date");

            // Validation
            if (idStr == null || name == null || subject == null || marksStr == null || dateStr == null ||
                idStr.isEmpty() || name.isEmpty() || subject.isEmpty() || marksStr.isEmpty() || dateStr.isEmpty()) {

                res.getWriter().println("<h3>All fields are required!</h3>");
                return;
            }

            int id = Integer.parseInt(idStr);
            int marks = Integer.parseInt(marksStr);
            Date date = Date.valueOf(dateStr);

            if (marks < 0 || marks > 100) {
                res.getWriter().println("<h3>Marks must be between 0 and 100</h3>");
                return;
            }

            // Create object
            StudentMark s = new StudentMark(id, name, subject, marks, date);

            // Update
            MarkDAO dao = new MarkDAO();
            boolean result = dao.update(s);

            if (result) {
                res.sendRedirect("DisplayMarksServlet");
            } else {
                res.getWriter().println("<h3>Update failed! Record not found.</h3>");
            }

        } catch (NumberFormatException e) {
            res.getWriter().println("<h3>ID and Marks must be numbers!</h3>");
        } catch (Exception e) {
            e.printStackTrace();
            res.getWriter().println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    }

    // Handle direct access
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.sendRedirect("markupdate.jsp");
    }
}