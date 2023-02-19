package com.codegym.casemd3.service;

import com.codegym.casemd3.model.ProductType;

import java.util.List;

public interface IProductTypeService {
    List<ProductType> getAllProductType();

    ProductType getProductTypeById(int id);
}
