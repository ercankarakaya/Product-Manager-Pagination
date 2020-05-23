package com.ercan.controller;

import com.ercan.entity.Product;
import com.ercan.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ProductController {
    @Autowired
    ProductService productService;

    @RequestMapping("/")
    public String viewHomePage(Model model) {
      return listByPage(model,1);
    }

    @GetMapping("/page/{pageNumber}")
    public String listByPage(Model model, @PathVariable("pageNumber") int currentPage){
        //int currentPage = 1;
        Page<Product> page = productService.listAll(currentPage);
        long totalItems = page.getTotalElements();   //int totalItems = page.getNumberOfElements();
        int totalPages = page.getTotalPages();

        List<Product> productList = page.getContent();

        model.addAttribute("currentPage", currentPage);
        model.addAttribute("totalItems", totalItems);
        model.addAttribute("totalPages", totalPages);
        model.addAttribute("productList", productList);
        return "index";
    }


}














