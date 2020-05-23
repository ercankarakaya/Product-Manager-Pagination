package com.ercan.service;

import com.ercan.dao.ProductRepository;
import com.ercan.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class ProductService {

    @Autowired
    ProductRepository productRepository;

    public Page<Product> listAll(int pageNumber){
        Pageable pageable= PageRequest.of(pageNumber-1,5);
        return productRepository.findAll(pageable);
    }


}
