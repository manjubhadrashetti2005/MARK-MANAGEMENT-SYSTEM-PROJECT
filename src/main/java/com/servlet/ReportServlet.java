package com.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.util.*;

import com.dao.MarkDAO;
import com.model.StudentMark;

@WebServlet("/ReportServlet")   // ⭐ IMPORTANT
public class ReportServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        res.setContentType("text/html");

        try {
            MarkDAO dao = new MarkDAO();
            List<StudentMark> list = new ArrayList<>();

            String marks = req.getParameter("marks");
            String subject = req.getParameter("subject");
            String top = req.getParameter("top");

            // Validation & Logic
            if (marks != null && !marks.isEmpty()) {
                list = dao.getMarksAbove(Integer.parseInt(marks));

            } else if (subject != null && !subject.isEmpty()) {
                list = dao.getBySubject(subject);

            } else if (top != null && !top.isEmpty()) {
                list = dao.getTopN(Integer.parseInt(top));

            } else {
                res.getWriter().println("<h3>Please enter at least one criteria!</h3>");
                return;
            }

            req.setAttribute("list", list);
            RequestDispatcher rd = req.getRequestDispatcher("reportresult.jsp");
            rd.forward(req, res);

        } catch (NumberFormatException e) {
            res.getWriter().println("<h3>Invalid number format!</h3>");
        } catch (Exception e) {
            e.printStackTrace();
            res.getWriter().println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    }

    // Handle direct access
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        res.sendRedirect("reportform.jsp");
    }
}