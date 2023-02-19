package com.codegym.casemd3.service;




import com.codegym.casemd3.model.Category;

import java.util.List;

public interface ICategoryService {
    List<Category> getAllCategorys();

    Category getCategoryById(int id);
}
