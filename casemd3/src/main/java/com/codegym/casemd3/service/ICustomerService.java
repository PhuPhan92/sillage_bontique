package com.codegym.casemd3.service;
import com.codegym.casemd3.model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> getAllCustomer();

    Customer findCustomerById(Long id);
    void editCustomer(Customer customer);
    void deleteCustomerById(Long id);

    void createCustomer(Customer customer);

    boolean checkImageExists(String image);
    List<Customer> getAllCustomerSearchingPagging(String kw, int idCustomerType, int offset, int limit);
    int getNoOfRecords();
    void setNoOfRecords(int noOfRecords);
}
