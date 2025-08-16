package com.fotbiler.marketivo.backend.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "product_category_translation")
@Getter
@Setter
public class ProductCategoryTranslation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "product_category_name")
    private String productCategoryName;

    @ManyToOne
    @JoinColumn(name = "product_category_id")
    private ProductCategory productCategory;

    @ManyToOne
    @JoinColumn(name = "language_id")
    private Language productCategoryLanguage;

    @Transient
    public String getLanguageCode() { return productCategoryLanguage != null ? productCategoryLanguage.getCode() : null; }
}
