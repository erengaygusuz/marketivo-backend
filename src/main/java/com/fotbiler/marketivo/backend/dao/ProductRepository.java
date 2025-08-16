package com.fotbiler.marketivo.backend.dao;

import com.fotbiler.marketivo.backend.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface ProductRepository extends JpaRepository<Product, Long> {
    Page<Product> findByCategoryId(@Param("id") Long id, Pageable pageable);

    @Query("""
        select p
        from Product p
        join p.productTranslations t
        join t.productLanguage l
        where lower(t.productName) like lower(concat('%', :name, '%'))
          and l.code = :lang
    """)
    Page<Product> findByNameAndLanguageContaining(@Param("name") String name, @Param("lang") String lang, Pageable pageable);
}
