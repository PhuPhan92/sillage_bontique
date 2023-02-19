package com.codegym.casemd3.controller;

import com.codegym.casemd3.config.ResourceConfig;
import com.codegym.casemd3.model.*;
import com.codegym.casemd3.service.*;
import com.codegym.casemd3.service.mySQL.*;
import com.codegym.casemd3.utils.DateUtils;
import com.codegym.casemd3.utils.ValidateUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = "/products")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 50, // 50MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
public class ProductServlet extends HttpServlet{
    private IProductService iProductService;
    private ICategoryService iCategoryService;
    private IProductTypeService iProductTypeService;

    @Override
    public void init() throws ServletException {
        iProductService = new MSProductService();
        iCategoryService = new MSCategoryService();
        iProductTypeService = new MSProductTypeService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateProducts(req, resp);
                break;
            case "delete":
                showDeleteProducts(req, resp);
                break;
            case "edit":
                showEditProducts(req, resp);
                break;
            case "view":
                viewDetailProducts(req, resp);
                break;
            default:
                showProducts(req, resp);
        }
    }

    private void viewDetailProducts(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = iProductService.findProductById((long) id);
        RequestDispatcher dispatcher;
        if(product == null){
            dispatcher = req.getRequestDispatcher("error-404.jsp");
        } else {
            req.setAttribute("product", product);
            dispatcher = req.getRequestDispatcher("WEB-INF/dashboard/product/view.jsp");
        }
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();}
    }

    private void showProducts(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String kw = "";
        if (req.getParameter("kw") != null) {
            kw = req.getParameter("kw");
        }
        int idProductType = -1;
        if (req.getParameter("ct") != null && !req.getParameter("ct").equals("")) {
            idProductType = Integer.parseInt(req.getParameter("ct"));
        }
        int page = 1;
        if (req.getParameter("page") != null && !req.getParameter("page").equals("")) {
            page = Integer.parseInt(req.getParameter("page"));
        }
        int limit = 5;
        if (req.getParameter("limit") != null && !req.getParameter("limit").equals("")) {
            limit = Integer.parseInt(req.getParameter("limit"));
        }


        List<Product> products = iProductService.getAllProductSearchingPagging(kw,idProductType,  (page-1)*limit, limit);
        List<Category> categories = iCategoryService.getAllCategorys();
        List<ProductType> productTypes = iProductTypeService.getAllProductType();
//        customers.size()

        int noOfRecords = iProductService.getNoOfRecords();
        int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / limit);

        req.setAttribute("products", products);
        req.setAttribute("category", categories );
        req.setAttribute("productTypes", productTypes );
        req.setAttribute("kw", kw);
        req.setAttribute("ct", idProductType);

        req.setAttribute("currentPage", page);
        req.setAttribute("noOfPages", noOfPages);



        String message = req.getParameter("message");
        if (message != null) {
            // delete: success
            req.setAttribute("message", message );
        }

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/dashboard/product/products.jsp");
        requestDispatcher.forward(req, resp);
    }


    private void showEditProducts(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Category> categories = iCategoryService.getAllCategorys();
        List<ProductType> productTypes = iProductTypeService.getAllProductType();
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = iProductService.findProductById((long) id);

        if (product == null) {
            resp.sendRedirect("/customers?message=edit");
        }else{

            req.setAttribute("product", product);
            req.setAttribute("category", categories);
            req.setAttribute("productTypes", productTypes);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/dashboard/product/edit.jsp");
            requestDispatcher.forward(req, resp);
        }
    }

    private void showDeleteProducts(HttpServletRequest req, HttpServletResponse resp) {
    }

    private void showCreateProducts(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = iProductService.getAllProduct();
        List<Category> categories = iCategoryService.getAllCategorys();
        List<ProductType> productTypes = iProductTypeService.getAllProductType();
//        customers.size()
        req.setAttribute("products", products);
        req.setAttribute("category", categories );
        req.setAttribute("productTypes", productTypes );
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/dashboard/product/create.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createProducts(req, resp);
                break;
            case "delete":
                deleteProducts(req, resp);
                break;
            case "edit":
                editProducts(req, resp);
                break;
        }
    }

    private void editProducts(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> errors = new ArrayList<>();
        Product product = new Product();
        RequestDispatcher requestDispatcher = req.getRequestDispatcher(ResourceConfig.folderDashboard + "product/edit.jsp");
        try {
            isValidName(req, product, errors);
            double price = isPrice(req, errors);
            product.setPrice(price);
            int quantity = isQuantity(req, errors);
            product.setQuantity(quantity);
            String description = req.getParameter("description");
            product.setDescription(description);
            product.setIdCategory(Integer.parseInt(req.getParameter("category")));
            Part part = isValidImage(req, product, errors);
//        errors.size()
            List<Category> categories = iCategoryService.getAllCategorys();
            req.setAttribute("category", categories);
            List<ProductType> productTypes = iProductTypeService.getAllProductType();
            req.setAttribute("productTypes", productTypes);
            product.setIdType(Integer.parseInt(req.getParameter("productTypes")));

            if (errors.size() == 0) {
                long idCustomer = Long.parseLong(req.getParameter("id"));
                product.setId(idCustomer);
//            handleEditImageUpload(req, customer, errors);
                Product productDB = iProductService.findProductById(product.getId());
                if ( product.getImage()!=null) {
                    if(productDB.getImage() != null && !productDB.getImage().equals(product.getImage()) && part != null){
                        handleEditImageUploadAdvanced(part);
                    }
                }
                req.setAttribute("message", "Them thanh cong");
                iProductService.editProduct(product);

                resp.sendRedirect("/products");
            }else{
                req.setAttribute("errors", errors);
                req.setAttribute("product", product);
                requestDispatcher.forward(req, resp);
            }
        }
        catch (Exception e){
            req.setAttribute("errors", errors);
            req.setAttribute("product", product);
            requestDispatcher.forward(req, resp);
        }
    }
    private void handleEditImageUploadAdvanced(Part part) throws IOException {

        String fileName = extractFileName(part);
        String appRealPath = getServletContext().getRealPath("/") + "images";
        File file = new File(appRealPath);
        if (!file.exists()) {
            file.mkdir();
        }
        String nameFileServer = appRealPath + File.separator + fileName;
        System.out.println("Name file server: " + nameFileServer);
        part.write(nameFileServer);
        String nameFileProject = ResourceConfig.folderImageUrlProject + File.separator + fileName;
        System.out.println("Name file project: " + nameFileProject);
        part.write(nameFileProject);


    }

    private void deleteProducts(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Long id = Long.parseLong(req.getParameter("idDelete"));
        iProductService.deleteProductById(id);
        resp.sendRedirect("/products?message=delete");
    }

    private void createProducts(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> errors = new ArrayList<>();
        Product product = new Product();
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/dashboard/product/create.jsp");
        try {

            isValidName(req, product, errors);
            product.setDescription(req.getParameter("description"));
            double price = isPrice(req, errors);
            product.setPrice(price);
            int quantity = isQuantity(req, errors);
            product.setQuantity(quantity);
            product.setIdCategory(Integer.parseInt(req.getParameter("category")));
            List<Category> categories = iCategoryService.getAllCategorys();
            req.setAttribute("category", categories);
            List<ProductType> productTypes = iProductTypeService.getAllProductType();
            req.setAttribute("productTypes", productTypes);
            product.setIdType(Integer.parseInt(req.getParameter("productTypes")));
            if (errors.size() == 0) {
                handleImageUpload(req, product, errors);
                req.setAttribute("message", "Them thanh cong");
                iProductService.createProduct(product);
                requestDispatcher.forward(req, resp);
            }else{
                req.setAttribute("errors", errors);
                req.setAttribute("customer", product);
                requestDispatcher.forward(req, resp);
            }
        }
        catch (Exception e){
            req.setAttribute("errors", errors);
            req.setAttribute("customer", product);
            requestDispatcher.forward(req, resp);
        }
    }
    private void handleImageUpload(HttpServletRequest req, Product product, List<String> errors) throws ServletException, IOException {
        for (Part part : req.getParts()) {
            String fileName = extractFileName(part);
            // refines the fileName in case it is an absolute path
            if(!fileName.equals("")){
                String appRealPath = getServletContext().getRealPath("/") + "images";
                File file = new File(appRealPath);
                if (!file.exists()) {
                    file.mkdir();
                }
                String nameFileServer = appRealPath + File.separator + fileName;
                System.out.println("Name file server: " + nameFileServer);
                part.write(nameFileServer);


                String nameFileProject = ResourceConfig.folderImageUrlProject + File.separator + fileName;
                System.out.println("Name file project: " + nameFileProject);
                part.write(nameFileProject);

                product.setImage(fileName);
            }

//            part.write();
        }

    }
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
    private void isValidName(HttpServletRequest req, Product product, List<String> errors) {
        String name = req.getParameter("name");
        if (!ValidateUtils.isProductNameValid(name) || name.isEmpty()) {
            errors.add("Tên không hợp lệ hoặc bỏ trống. Chỉ chứa từ từ 5-50 kí và không chứa ký tự đặt biệt");
        }
        product.setName(name);
    }
    private double isPrice(HttpServletRequest req,  List<String> errors) throws ServletException, IOException {
        String sPrice = req.getParameter("price");
        double price = 0;
        boolean check = ValidateUtils.isNumber(sPrice);
        if (!check || sPrice.isEmpty()) {
            errors.add("Giá tiền để trống hoặc sai định dạng, không phải là một số");
        }else {
            price = Double.parseDouble(sPrice);
            boolean check2 = price <100000;
            if (check2){
                errors.add("giá tiền không được thấp hơn 100.000");
            }
            return price;
        }
        return 0;

    }
    private int isQuantity(HttpServletRequest req, List<String> errors) throws ServletException, IOException {
        String sQuantity = req.getParameter("quantity");
        int quantity = 0;
        if (!ValidateUtils.isNumber(sQuantity) || sQuantity.isEmpty()) {
            errors.add("Số lượng để trống hoặc sai định dạng, không phải là một số");
        }else {
            quantity = Integer.parseInt(sQuantity);
            if (quantity <= 0){
                errors.add("Số lượng không được thấp hơn 0");
            }
            return quantity;
        }
        return 0;

    }
    private Part isValidImage(HttpServletRequest req, Product product, List<String> errors) throws ServletException, IOException {
        for (Part part : req.getParts()) {
            String fileName = extractFileName(part);
            if(!fileName.equals("")){
                product.setImage(fileName);
                boolean check = iProductService.checkImageExists(fileName);
                if (check == true) {
                    return null;
                }else {
                    return part;
                }
            }
        }
        return null;
    }
}