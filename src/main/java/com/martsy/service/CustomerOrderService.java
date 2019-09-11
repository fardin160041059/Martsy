package com.martsy.service;

import com.martsy.model.CustomerOrder;


public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
