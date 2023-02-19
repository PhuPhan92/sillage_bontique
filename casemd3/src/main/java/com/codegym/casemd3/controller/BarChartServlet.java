package com.codegym.casemd3.controller;

import com.codegym.casemd3.config.ResourceConfig;
import com.codegym.casemd3.model.Barchart;
import com.codegym.casemd3.service.IBarChartService;
import com.codegym.casemd3.service.ICustomerService;
import com.codegym.casemd3.service.ICustomerTypeService;
import com.codegym.casemd3.service.mySQL.MSBarChartService;
import com.codegym.casemd3.service.mySQL.MSCustomerService;
import com.codegym.casemd3.service.mySQL.MSCustomerTypeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BarChartServlet", value = "/BarChart")
public class BarChartServlet extends HttpServlet {
    private IBarChartService iBarChartService;

    @Override
    public void init() throws ServletException {
        iBarChartService = new MSBarChartService();

    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        showChart(req, resp);
    }

    private void showChart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Barchart> chart = iBarChartService.getAllBarChart();
        req.setAttribute("chart", chart);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher(ResourceConfig.folderFrontEnd  + "chart.jsp");
        requestDispatcher.forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
