package com.fotbiler.marketivo.backend.controller;

import com.fotbiler.marketivo.backend.entity.Product;
import com.fotbiler.marketivo.backend.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.rest.webmvc.PersistentEntityResource;
import org.springframework.data.rest.webmvc.PersistentEntityResourceAssembler;
import org.springframework.data.rest.webmvc.RepositoryRestController; // <- important
import org.springframework.data.web.PagedResourcesAssembler;
import org.springframework.hateoas.PagedModel;
import org.springframework.hateoas.server.RepresentationModelAssembler;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RepositoryRestController
@RequiredArgsConstructor
public class ProductController {

    private ProductService productService;
    private PagedResourcesAssembler<Product> pagedAssembler;

    public ProductController(ProductService productService, PagedResourcesAssembler<Product> pagedAssembler){
        this.productService = productService;
        this.pagedAssembler = pagedAssembler;
    }

    @GetMapping("/products/search/findByNameContaining")
    public ResponseEntity<PagedModel<?>> findByNameContaining(@RequestParam("name") String name,
                                                Pageable pageable,
                                                PersistentEntityResourceAssembler assembler) {

        Page<Product> page = productService.searchProductsByName(name, pageable);

        PagedModel<?> model = pagedAssembler.toModel(
                page,
                (RepresentationModelAssembler<Product, PersistentEntityResource>) assembler::toModel
        );

        return ResponseEntity.ok(model);
    }
}

