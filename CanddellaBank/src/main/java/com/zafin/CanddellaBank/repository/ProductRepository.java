package com.zafin.CanddellaBank.repository;

import com.zafin.CanddellaBank.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, String> {
}
