package com.zafin.CanddellaBank.entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

@Entity
@Getter
@Setter
public class Product {
    @Id
    private String productCode;

    private String productName;

    private String productDescription;

    private String productOwner;

    private LocalDate openingDate;

    private LocalDate validityDate;

    private LocalDate expiryDate;

    private String currency;

    private double product_level_rates;

    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(name = "product_service",
            joinColumns = @JoinColumn(name = "product_code"),
            inverseJoinColumns = @JoinColumn(name = "service_code"))
    private Set<Service> services;

    @OneToOne(mappedBy = "product", cascade = CascadeType.ALL)
    private Account account;


}
