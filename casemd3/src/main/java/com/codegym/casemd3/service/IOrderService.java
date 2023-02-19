package com.codegym.casemd3.service;



import com.codegym.casemd3.model.Order;

import java.util.List;

public interface IOrderService {
    List<Order> getAllOrder();
    Order getOrderById(long id);

    void saveOrder(Order order);


    void saveOrderBySP(Order order);
}
