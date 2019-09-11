package com.martsy.service;

import com.martsy.model.Product;

import java.util.List;


public interface ProductService {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
