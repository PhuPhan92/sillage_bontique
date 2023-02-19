package com.codegym.casemd3.service;


import com.codegym.casemd3.model.Customer;
import com.codegym.casemd3.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> getAllProduct();

    Product findProductById(Long id);
    void editProduct(Product Product);
    void deleteProductById(Long id);

    void createProduct(Product Product);

    boolean checkImageExists(String fileName);
    List<Product> getAllProductByCategoryId(int idCategory);
    List<Product> getAllProductByTypeId(int idType);
    List<Product> getAllProductSearchingPagging(String kw, int idProductType, int offset, int limit);
    int getNoOfRecords();
    void setNoOfRecords(int noOfRecords);
}
