package com.codegym.casemd3.service;


import com.codegym.casemd3.model.CustomerType;

import java.util.List;

public interface ICustomerTypeService {
    List<CustomerType> getAllCustomerTypes();

    CustomerType getCustomerTypeById(int id);

}
