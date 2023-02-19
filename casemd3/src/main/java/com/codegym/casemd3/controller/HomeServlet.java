package com.codegym.casemd3.controller;


import com.codegym.casemd3.service.mySQL.MSProductService;
import com.codegym.casemd3.config.ResourceConfig;
import com.codegym.casemd3.model.Product;
import com.codegym.casemd3.service.IProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", urlPatterns = "")
public class HomeServlet extends HttpServlet {
    private IProductService iProductService;

    @Override
    public void init() throws ServletException {
        iProductService = new MSProductService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> productListMale = iProductService.getAllProductByTypeId(1);
        List<Product> productListFemale = iProductService.getAllProductByTypeId(2);
        List<Product> productListUnisex = iProductService.getAllProductByTypeId(3);

        req.setAttribute("productListMale", productListMale);
        req.setAttribute("productListFemale", productListFemale);
        req.setAttribute("productListUnisex", productListUnisex);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher(ResourceConfig.folderFrontEnd + "index.jsp");
        requestDispatcher.forward(req, resp);
    }
}
