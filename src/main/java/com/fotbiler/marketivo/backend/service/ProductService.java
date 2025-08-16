package com.fotbiler.marketivo.backend.service;

import com.fotbiler.marketivo.backend.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface ProductService {
    Page<Product> searchProductsByName(String name, Pageable pageable);
}
