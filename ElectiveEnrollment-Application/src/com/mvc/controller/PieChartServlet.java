package com.mvc.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jfree.chart.ChartFactory;

import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.jdbc.JDBCCategoryDataset;

import com.uvc.util.DBConnection;
public class PieChartServlet extends HttpServlet {
	/**
	 * 
	 */
	Connection con = null;
	Statement statement = null;
	PreparedStatement preparedStatement= null;
	private static final long serialVersionUID = 1L;

	public PieChartServlet() {
      
}

public void doGet(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {

        try {
        	con = DBConnection.createConnection(); //establishing connection
            JDBCCategoryDataset dataSet = new JDBCCategoryDataset(con);
            statement = con.createStatement();
           
        dataSet.executeQuery(" select elective,count(*) as students from electives,course where elecid = courseid group by elective");
        JFreeChart chart = ChartFactory.createBarChart(
               "Elective Course Enrollment", "Scource", "Percentage",
                dataSet, PlotOrientation.VERTICAL, false, true, false);    
        
                chart.setBorderVisible(false);
         
                
        if (chart != null) {
                chart.setBorderVisible(false);
                int width = 500;
                int height = 300;
                response.setContentType("image/jpeg");
                OutputStream out = response.getOutputStream();
                ChartUtilities.writeChartAsJPEG(out, chart, width, height);
        }
        }
        catch (SQLException e) {
                System.err.println(e.getMessage());
        }
}

}
