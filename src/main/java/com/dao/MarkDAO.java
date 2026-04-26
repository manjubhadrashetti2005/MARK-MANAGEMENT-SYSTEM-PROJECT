package com.dao;

import java.sql.*;
import java.util.*;
import com.model.StudentMark;

public class MarkDAO {

    private String url = "jdbc:mysql://localhost:3306/MarkDB";
    private String user = "root";
    private String pass = "Manju@2005";

    private Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url, user, pass
        		);
    }

    // INSERT
    public boolean insert(StudentMark s) throws Exception {
        String sql = "INSERT INTO StudentMarks VALUES (?, ?, ?, ?, ?)";
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, s.getStudentID());
            ps.setString(2, s.getStudentName());
            ps.setString(3, s.getSubject());
            ps.setInt(4, s.getMarks());
            ps.setDate(5, s.getExamDate());

            return ps.executeUpdate() > 0;
        }
    }

    // UPDATE
    public boolean update(StudentMark s) throws Exception {
        String sql = "UPDATE StudentMarks SET StudentName=?, Subject=?, Marks=?, ExamDate=? WHERE StudentID=?";
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, s.getStudentName());
            ps.setString(2, s.getSubject());
            ps.setInt(3, s.getMarks());
            ps.setDate(4, s.getExamDate());
            ps.setInt(5, s.getStudentID());

            return ps.executeUpdate() > 0;
        }
    }

    // DELETE
    public boolean delete(int id) throws Exception {
        String sql = "DELETE FROM StudentMarks WHERE StudentID=?";
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            return ps.executeUpdate() > 0;
        }
    }

    // GET ALL
    public List<StudentMark> getAll() throws Exception {
        List<StudentMark> list = new ArrayList<>();
        String sql = "SELECT * FROM StudentMarks";

        try (Connection con = getConnection();
             Statement st = con.createStatement();
             ResultSet rs = st.executeQuery(sql)) {

            while (rs.next()) {
                list.add(new StudentMark(
                        rs.getInt("StudentID"),
                        rs.getString("StudentName"),
                        rs.getString("Subject"),
                        rs.getInt("Marks"),
                        rs.getDate("ExamDate")
                ));
            }
        }
        return list;
    }

    // REPORTS
    public List<StudentMark> getMarksAbove(int m) throws Exception {
        return executeQuery("SELECT * FROM StudentMarks WHERE Marks > ?", m);
    }

    public List<StudentMark> getBySubject(String sub) throws Exception {
        return executeQuery("SELECT * FROM StudentMarks WHERE Subject = ?", sub);
    }

    public List<StudentMark> getTopN(int n) throws Exception {
        return executeQuery("SELECT * FROM StudentMarks ORDER BY Marks DESC LIMIT ?", n);
    }

    private List<StudentMark> executeQuery(String sql, Object param) throws Exception {
        List<StudentMark> list = new ArrayList<>();

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            if (param instanceof Integer)
                ps.setInt(1, (Integer) param);
            else
                ps.setString(1, (String) param);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new StudentMark(
                        rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getInt(4),
                        rs.getDate(5)
                ));
            }
        }
        return list;
    }
}