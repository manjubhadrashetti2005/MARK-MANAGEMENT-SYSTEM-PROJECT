package com.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;

@WebServlet("/ReportCriteriaServlet")   // ⭐ IMPORTANT
public class ReportCriteriaServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

    	res.sendRedirect(req.getContextPath() + "/reportform.jsp");
    }

    // Optional but good practice
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        doGet(req, res);
    }
}