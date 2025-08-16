package com.fotbiler.marketivo.backend.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.springframework.context.i18n.LocaleContextHolder;

import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "product_category")
@Getter
@Setter
public class ProductCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "category_icon")
    private String categoryIcon;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "category")
    private Set<Product> products;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "productCategory")
    @JsonIgnore
    private Set<ProductCategoryTranslation> productCategoryTranslations = new HashSet<>();

    @Transient
    @JsonProperty("categoryName")
    public String getLocalizedName() {
        String code = resolveLang();
        // exact
        for (var t : productCategoryTranslations) if (equalsIgnoreCase(t.getLanguageCode(), code)) return t.getProductCategoryName();
        // language-only fallback
        String lang = java.util.Locale.forLanguageTag(code).getLanguage();
        for (var t : productCategoryTranslations) {
            String c = t.getLanguageCode();
            if (c != null && c.toLowerCase().startsWith(lang.toLowerCase())) return t.getProductCategoryName();
        }
        return null;
    }

    private String resolveLang() {
        var locale = LocaleContextHolder.getLocale();
        if (locale == null) return "en-US";
        String tag = locale.toLanguageTag();
        if ("tr-TR".equalsIgnoreCase(tag)) return "tr-TR";
        if ("en-US".equalsIgnoreCase(tag)) return "en-US";
        if ("tr".equalsIgnoreCase(locale.getLanguage())) return "tr-TR";
        return "en-US";
    }

    private boolean equalsIgnoreCase(String a, String b){ return a!=null && b!=null && a.equalsIgnoreCase(b); }

}
