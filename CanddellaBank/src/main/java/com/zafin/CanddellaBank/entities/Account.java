package com.zafin.CanddellaBank.entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;

@Entity
@Getter
@Setter
public class Account {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long accountNumber;

    private String accountType;

    private Timestamp created;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "product_code")
    private Product product;

}
