package com.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;

import com.dao.MarkDAO;

@WebServlet("/DeleteMarkServlet")   // ⭐ IMPORTANT
public class DeleteMarkServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {

        res.setContentType("text/html");

        try {
            String idStr = req.getParameter("id");

            // Validation
            if (idStr == null || idStr.isEmpty()) {
                res.getWriter().println("<h3>ID is required!</h3>");
                return;
            }

            int id = Integer.parseInt(idStr);

            MarkDAO dao = new MarkDAO();
            boolean result = dao.delete(id);

            if (result) {
                res.sendRedirect("DisplayMarksServlet");
            } else {
                res.getWriter().println("<h3>Record not found!</h3>");
            }

        } catch (NumberFormatException e) {
            res.getWriter().println("<h3>Invalid ID format!</h3>");
        } catch (Exception e) {
            e.printStackTrace();
            res.getWriter().println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    }
}