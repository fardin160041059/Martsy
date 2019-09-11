package com.martsy.service;

import com.martsy.model.Cart;


public interface CartService {

    Cart getCartById (int cartId);

    void update(Cart cart);
}
