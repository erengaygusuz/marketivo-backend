package com.fotbiler.marketivo.backend.dto;

import com.fotbiler.marketivo.backend.entity.Address;
import com.fotbiler.marketivo.backend.entity.Customer;
import com.fotbiler.marketivo.backend.entity.Order;
import com.fotbiler.marketivo.backend.entity.OrderItem;
import lombok.Data;

import java.util.Set;

@Data
public class Purchase {
    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;
}
