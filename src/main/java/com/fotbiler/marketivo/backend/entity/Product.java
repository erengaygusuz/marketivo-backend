package com.fotbiler.marketivo.backend.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.context.i18n.LocaleContextHolder;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashSet;
import java.util.Optional;
import java.util.Set;

import static java.util.Locale.forLanguageTag;

@Entity
@Table(name = "product")
@Getter
@Setter
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "category_id", nullable = false)
    private ProductCategory category;

    @Column(name = "sku")
    private String sku;

    @Column(name = "unit_price")
    private BigDecimal unitPrice;

    @Column(name = "image_url")
    private String imageUrl;

    @Column(name = "active")
    private boolean active;

    @Column(name = "units_in_stock")
    private int unitsInStock;

    @Column(name = "date_created")
    @CreationTimestamp
    private Date dateCreated;

    @Column(name = "last_updated")
    @UpdateTimestamp
    private Date lastUpdated;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "product")
    @JsonIgnore
    private Set<ProductTranslation> productTranslations = new HashSet<>();

    @Transient
    @JsonProperty("name")
    public String getLocalizedName() {
        return findTranslation(resolveLang())
                .map(ProductTranslation::getProductName)
                .orElse(null);
    }

    @Transient
    @JsonProperty("description")
    public String getLocalizedDescription() {
        return findTranslation(resolveLang())
                .map(ProductTranslation::getProductDescription)
                .orElse(null);
    }

    private Optional<ProductTranslation> findTranslation(String code) {
        // exact match first
        for (var t : productTranslations) {
            if (equalsIgnoreCase(t.getLanguageCode(), code)) return java.util.Optional.of(t);
        }
        // language-only fallback (tr -> tr-TR, en -> en-US)
        String lang = forLanguageTag(code).getLanguage();
        for (var t : productTranslations) {
            String c = t.getLanguageCode();
            if (c != null && c.toLowerCase().startsWith(lang.toLowerCase())) return java.util.Optional.of(t);
        }
        return java.util.Optional.empty();
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

    private boolean equalsIgnoreCase(String a, String b) {
        return a != null && b != null && a.equalsIgnoreCase(b);
    }
}
