package com.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.util.List;

import com.dao.MarkDAO;
import com.model.StudentMark;

@WebServlet("/DisplayMarksServlet")   // ⭐ VERY IMPORTANT
public class DisplayMarksServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        try {
            MarkDAO dao = new MarkDAO();
            List<StudentMark> list = dao.getAll();

            req.setAttribute("list", list);

            RequestDispatcher rd = req.getRequestDispatcher("markdisplay.jsp");
            rd.forward(req, res);

        } catch (Exception e) {
            e.printStackTrace();
            res.getWriter().println("Error: " + e.getMessage());
        }
    }
}