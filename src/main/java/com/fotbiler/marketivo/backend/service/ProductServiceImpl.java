package com.fotbiler.marketivo.backend.service;

import com.fotbiler.marketivo.backend.dao.ProductRepository;
import com.fotbiler.marketivo.backend.entity.Product;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public class ProductServiceImpl implements ProductService{

    private ProductRepository productRepository;

    public ProductServiceImpl(ProductRepository productRepository){
        this.productRepository = productRepository;
    }

    @Override
    public Page<Product> searchProductsByName(String name, Pageable pageable) {
        var locale = LocaleContextHolder.getLocale();
        String lang = (locale == null) ? "en-US" :
                ("tr-TR".equalsIgnoreCase(locale.toLanguageTag()) ? "tr-TR" :
                        ("tr".equalsIgnoreCase(locale.getLanguage()) ? "tr-TR" : "en-US"));
        return productRepository.findByNameAndLanguageContaining(name, lang, pageable);
    }
}
